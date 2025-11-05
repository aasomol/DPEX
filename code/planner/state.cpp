#include "state.h"

State::State(int boolSize, int numNumVars, float h, float f, int counter)
{
	this->boolState = new uint8_t[boolSize];
	this->numState = new float[numNumVars];
	this->h = h;
	this->f = f;
	this->counter = counter;
}

State::State(int boolSize, int numNumVars, GroundedTask* task, float h, float f, int counter) :
	State(boolSize, numNumVars, h, f, counter)
{
	for (int i = 0; i < boolSize; i++) this->boolState[i] = 0;
	int boolIndex = 0, numIndex = 0;
	for (int i = 0; i < task->variables.size(); i++) {
		GroundedVar* var = &(task->variables[i]);
		if (var->isInput) {
			task->varStateIndex.push_back(-1);
			continue;
		}
		if (var->isNumeric) {
			task->varStateIndex.push_back(numIndex);
			float value = var->initialValues.empty() ? 0 : var->initialValues[0].numericValue;
			this->numState[numIndex++] = value;
		}
		else {
			task->varStateIndex.push_back(boolIndex);
			int value = var->initialValues.empty() ? task->task->CONSTANT_FALSE : var->initialValues[0].value; 
			setBoolValue(boolIndex++, value == task->task->CONSTANT_TRUE, task);
		}
	}
}

State::State(int boolSize, int numNumVars, State* toCopy) : State(boolSize, numNumVars, toCopy->h, toCopy->f, toCopy->counter)
{
	for (int i = 0; i < boolSize; i++) {
		this->boolState[i] = toCopy->boolState[i];
	}
	for (int i = 0; i < numNumVars; i++) {
		this->numState[i] = toCopy->numState[i];
	}
}

State::State(int boolSize, int numNumVars, GroundedAction* a, State* prevState, GroundedTask* task,
	float h, float f, int counter) : State(boolSize, numNumVars, h, f, counter)
{
	for (int i = 0; i < boolSize; i++) {
		this->boolState[i] = prevState->boolState[i];
	}
	for (int i = 0; i < numNumVars; i++) {
		this->numState[i] = prevState->numState[i];
	}
	for (GroundedCondition& c : a->startEff) {
		setBoolValue(c.varIndex, c.valueIndex == task->task->CONSTANT_TRUE, task);
	}
	for (GroundedNumericEffect& e : a->startNumEff) {
		float value = evaluateTerm(&e.exp, task);
		switch (e.assignment) {
		case AS_INCREASE:		numState[task->varStateIndex[e.varIndex]] += value; break;
		case AS_DECREASE:		numState[task->varStateIndex[e.varIndex]] -= value; break;
		case AS_ASSIGN:			numState[task->varStateIndex[e.varIndex]] = value; break;
		case AS_SCALE_UP:		numState[task->varStateIndex[e.varIndex]] *= value; break;
		case AS_SCALE_DOWN:		numState[task->varStateIndex[e.varIndex]] /= value; break;
		}
	}
}

State::State(int boolSize, int numNumVars, GroundedAction* a, std::vector<float>* cvarValues,
	State* prevState, GroundedTask* task, float h, float f, int counter) :
	State(boolSize, numNumVars, h, f, counter)
{
	for (int i = 0; i < boolSize; i++) {
		this->boolState[i] = prevState->boolState[i];
	}
	for (int i = 0; i < numNumVars; i++) {
		this->numState[i] = prevState->numState[i];
	}
	for (GroundedCondition& c : a->startEff) {
		setBoolValue(c.varIndex, c.valueIndex == task->task->CONSTANT_TRUE, task);
	}
	for (GroundedNumericEffect& e : a->startNumEff) {
		float value = evaluateTerm(&e.exp, &a->controlVars, cvarValues, task);
		switch (e.assignment) {
		case AS_INCREASE:		numState[task->varStateIndex[e.varIndex]] += value; break;
		case AS_DECREASE:		numState[task->varStateIndex[e.varIndex]] -= value; break;
		case AS_ASSIGN:			numState[task->varStateIndex[e.varIndex]] = value; break;
		case AS_SCALE_UP:		numState[task->varStateIndex[e.varIndex]] *= value; break;
		case AS_SCALE_DOWN:		numState[task->varStateIndex[e.varIndex]] /= value; break;
		}
	}
}

State::~State()
{
	delete[] this->boolState;
	delete[] this->numState;
}

bool State::getBoolValue(int index, GroundedTask* task)
{
	index = task->varStateIndex[index];
	return (boolState[index >> 3] & (1 << (index & 7))) != 0;
}

void State::setBoolValue(int index, bool value, GroundedTask* task)
{
	index = task->varStateIndex[index];
	if (value)
		boolState[index >> 3] |= 1 << (index & 7);  // Establece el bit
	else
		boolState[index >> 3] &= ~(1 << (index & 7)); // Borra el bit
}

bool State::propApplicable(GroundedAction* action, GroundedTask *task)
{
	for (GroundedCondition& c : action->startCond) {
		if (c.valueIndex == task->task->CONSTANT_TRUE) {
			if (!getBoolValue(c.varIndex, task)) return false;
		}
		else if (getBoolValue(c.varIndex, task)) return false;
	}
	return true;
}

bool State::numCondApplicable(GroundedAction* action, GroundedTask* task)
{
	for (GroundedNumericCondition& c : action->startNumCond) {
		if (!meetsNumCondition(c, task))
			return false;
	}
	return true;
}

bool State::numCVarApplicable(GroundedAction* action, GroundedTask* task, std::vector<float>* cvarValues)
{
	for (GroundedControlVar& cvar : action->controlVars) {
		for (GroundedNumericCondition& c : cvar.conditions) {
			if (!meetsNumCondition(c, task, &action->controlVars, cvarValues))
				return false;
		}
	}
	return true;
}

bool State::meetsNumCondition(GroundedNumericCondition& c, GroundedTask* task)
{
	float leftValue = evaluateTerm(&c.terms[0], task);
	float rightValue = evaluateTerm(&c.terms[1], task);
	switch (c.comparator) {
	case CMP_LESS: if (leftValue >= rightValue) return false;
		break;
	case CMP_LESS_EQ: if (leftValue > rightValue) return false;
		break;
	case CMP_GREATER: if (leftValue <= rightValue) return false;
		break;
	case CMP_GREATER_EQ: if (leftValue < rightValue) return false;
		break;
	case CMP_EQ: if (leftValue != rightValue) return false;
		break;
	case CMP_NEQ: if (leftValue == rightValue) return false;
		break;
	}
	return true;
}

bool State::meetsNumCondition(GroundedNumericCondition& c, GroundedTask* task, std::vector<GroundedControlVar>* controlVars,
	std::vector<float>* cvarValues)
{
	float leftValue = evaluateTerm(& c.terms[0], controlVars, cvarValues, task);
	float rightValue = evaluateTerm(&c.terms[1], controlVars, cvarValues, task);
	switch (c.comparator) {
	case CMP_LESS: if (leftValue >= rightValue) return false;
		break;
	case CMP_LESS_EQ: if (leftValue > rightValue) return false;
		break;
	case CMP_GREATER: if (leftValue <= rightValue) return false;
		break;
	case CMP_GREATER_EQ: if (leftValue < rightValue) return false;
		break;
	case CMP_EQ: if (leftValue != rightValue) return false;
		break;
	case CMP_NEQ: if (leftValue == rightValue) return false;
		break;
	}
	return true;
}

float State::evaluateTerm(GroundedNumericExpression* e, GroundedTask* task)
{
	switch (e->type) {
	case GE_NUMBER: return e->value;
	case GE_VAR:
	case GE_OBJECT: return numState[task->varStateIndex[e->index]];
	case GE_SUM: return evaluateTerm(&(e->terms[0]), task) + evaluateTerm(&(e->terms[1]), task);
	case GE_SUB: return evaluateTerm(&(e->terms[0]), task) - evaluateTerm(&(e->terms[1]), task);
	case GE_DIV: return evaluateTerm(&(e->terms[0]), task) / evaluateTerm(&(e->terms[1]), task);
	case GE_MUL: return evaluateTerm(&(e->terms[0]), task) * evaluateTerm(&(e->terms[1]), task);
	}
	return 0.0;
}

float State::evaluateTerm(GroundedNumericExpression* e, std::vector<GroundedControlVar>* controlVars,
	std::vector<float>* cvarValues, GroundedTask* task)
{
	switch (e->type) {
	case GE_NUMBER: return e->value;
	case GE_VAR:
	case GE_OBJECT: {
			int index = task->varStateIndex[e->index];
			if (index < 0) {
				for (index = 0; index < controlVars->size(); index++) {
					GroundedControlVar* cvar = &controlVars->at(index);
					if (cvar->index == e->index) {
						return cvarValues->at(index);
					}
				}
			}
			else return numState[index];
		}
		break;
	case GE_SUM: return evaluateTerm(&(e->terms[0]), controlVars, cvarValues, task) + 
		evaluateTerm(&(e->terms[1]), controlVars, cvarValues, task);
	case GE_SUB: return evaluateTerm(&(e->terms[0]), controlVars, cvarValues, task) -
		evaluateTerm(&(e->terms[1]), controlVars, cvarValues, task);
	case GE_DIV: return evaluateTerm(&(e->terms[0]), controlVars, cvarValues, task) /
		evaluateTerm(&(e->terms[1]), controlVars, cvarValues, task);
	case GE_MUL: return evaluateTerm(&(e->terms[0]), controlVars, cvarValues, task) *
		evaluateTerm(&(e->terms[1]), controlVars, cvarValues, task);
	}
	return 0.0;
}

CvarBound State::evaluateTermBounds(GroundedNumericExpression* e, GroundedTask* task,
	std::vector<GroundedControlVar>* controlVars, std::vector<CvarBound>* bounds)
{
	if (e->type == GE_NUMBER) return CvarBound(e->value, e->value);
	else if (e->type == GE_VAR || e->type == GE_OBJECT) {
		int index = task->varStateIndex[e->index];
		if (index < 0) {
			for (index = 0; index < controlVars->size(); index++) {
				GroundedControlVar* cvar = &controlVars->at(index);
				if (cvar->index == e->index) {
					return bounds->at(index);
				}
			}
		}
		else return CvarBound(numState[index], numState[index]);
	} else {
		CvarBound left = evaluateTermBounds(&(e->terms[0]), task, controlVars, bounds);
		CvarBound right = evaluateTermBounds(&(e->terms[1]), task, controlVars, bounds);
		if (e->type == GE_SUM) return CvarBound(left.lower + right.lower, left.upper + right.upper);
		if (e->type == GE_SUB) return CvarBound(left.lower - right.upper, left.upper - right.lower);
		if (e->type == GE_MUL) {
			float d1 = left.lower * right.upper, d2 = left.upper * right.lower,
				d3 = left.lower * right.lower, d4 = left.upper * right.upper;
			return CvarBound(std::min(std::min(d1, d2), std::min(d3, d4)),
				std::max(std::max(d1, d2), std::max(d3, d4)));
		}
		float d1 = left.lower / right.upper, d2 = left.upper / right.lower,
			d3 = left.lower / right.lower, d4 = left.upper / right.upper;
		return CvarBound(std::min(std::min(d1, d2), std::min(d3, d4)),
			std::max(std::max(d1, d2), std::max(d3, d4)));
	}
	return CvarBound();
}

std::string State::toString(GroundedTask* task)
{
	/*
	std::string s = "";
	int boolIndex = 0, numIndex = 0;
	for (int i = 0; i < task->variables.size(); i++) {
		GroundedVar* var = &(task->variables[i]);
		if (!var->isInput) {
			if (var->isNumeric) {
				if (s.size() > 0) s += ", ";
				s += "(= " + var->toString(task->task) + " " + std::to_string(numState[numIndex++]) + ")";
			}
			else if (getBoolValue(boolIndex++, task)) {
				if (s.size() > 0) s += ", ";
				s += var->toString(task->task);
			}
		}
	}
	return s;*/
	int numIndex = 0;
	std::string s = "State: (";
	for (int i = 0; i < task->variables.size(); i++) {
		GroundedVar* var = &(task->variables[i]);
		if (!var->isInput) {
			if (var->isNumeric) {
				if (numIndex > 0) s += ", ";
				s += std::to_string(numState[numIndex++]);
			}
		}
	}
	return s + ")";
}

uint64_t State::hashCode(int boolSize, int numNumVars) const
{
	uint64_t hash = 0;
    for (int i = 0; i < boolSize; i++) {
        hash ^= std::hash<uint8_t>{}(boolState[i]) + 0x9e3779b9 + (hash << 6) + (hash >> 2);
    }
    for (int i = 0; i < numNumVars; i++) {
        hash ^= std::hash<float>{}(numState[i]) + 0x9e3779b9 + (hash << 6) + (hash >> 2);
    }
    return hash;
}

int State::getBoolSize(int numBoolVars)
{
	return (numBoolVars >> 3) + ((numBoolVars & 7) ? 1 : 0);
}

void State::clone(State* s, int boolSize, int numNumVars)
{
	for (int i = 0; i < boolSize; i++) {
		this->boolState[i] = s->boolState[i];
	}
	for (int i = 0; i < numNumVars; i++) {
		this->numState[i] = s->numState[i];
	}
}
