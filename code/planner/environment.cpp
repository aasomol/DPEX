#include "environment.h"
#include "planner.h"

void Environment::reset(GroundedTask* task, int boolSize, int numNumVars)
{
	this->task = task;
	this->boolSize = boolSize;
	this->numNumVars = numNumVars;
}

void Environment::calculateApplicableActions(State* obs)
{
	applicableActions.clear();
	for (GroundedAction& a : task->actions) {
		if (obs->propApplicable(&a, task) && obs->numCondApplicable(&a, task)) {
			applicableActions.push_back(&a);
		}
	}
}

std::vector<float> softmax(const std::vector<float>& logits)
{
	std::vector<float> expVals(logits.size());
	float sum = 0.0f;
	for (size_t i = 0; i < logits.size(); ++i) {
		expVals[i] = exp(logits[i]);
		sum += expVals[i];
	}
	for (float& val : expVals) {
		val /= sum;
	}
	return expVals;
}


GroundedAction* Environment::uniformSampling(std::mt19937& gen, std::vector<float>* cvarValues)
{
	cvarValues->clear();
	int aIndex = generateRandomInt(0, applicableActions.size() - 1, gen);
	GroundedAction* a = applicableActions[aIndex];
	for (GroundedControlVar& cvar : a->controlVars) {
		float value = generateRandomNumber(cvar.minValue, cvar.maxValue, cvar.precision, gen);
		cvarValues->push_back(value);
	}
	return a;
}

GroundedAction* Environment::heuristicSampling(std::mt19937& gen, std::vector<float>* cvarValues, State* obs, Planner* planner)
{
	const float alpha = 1.0f;
	const float epsilon = 1e-5f;

	std::vector<GroundedAction*> sampledActions;
	std::vector<std::vector<float>> allCvarValues;
	std::vector<float> logits;

	for (int i = 0; i < planner->getNumberOfSamples(); ++i) {
		bool found = false;
		int tries = 0;

		while (!found && tries < 2 * planner->getNumberOfSamples()) {
			std::vector<float> cvarValues;
			GroundedAction* a = uniformSampling(gen, &cvarValues);

			// Verificación de aplicabilidad con control vars
			if (obs->numCVarApplicable(a, task, &cvarValues)) {
				State* newState = step(obs, a, &cvarValues);
				if (!newState) continue;

				planner->evaluate(newState);
				float hval = newState->h;
				float score = 1.0f / powf(hval + epsilon, alpha);

				logits.push_back(score);
				sampledActions.push_back(a);
				allCvarValues.push_back(cvarValues);

				delete newState;
				found = true;
			}

			++tries;
		}
	}

	if (sampledActions.empty()) return nullptr;

	std::vector<float> probs = softmax(logits);
	std::discrete_distribution<int> dist(probs.begin(), probs.end());
	int chosenIndex = dist(gen);

	*cvarValues = allCvarValues[chosenIndex];
	return sampledActions[chosenIndex];
}


GroundedAction* Environment::phi(std::mt19937& gen, std::vector<float>* cvarValues, char* phiType, State* obs, Planner* planner)
{
	if (strcmp(phiType, "uniform") == 0) {
		return uniformSampling(gen,cvarValues);
	} else if (strcmp(phiType, "heuristic") == 0) {
		return heuristicSampling(gen,cvarValues,obs,planner);
	} 
	return nullptr;
}

State* Environment::step(State* obs, GroundedAction* a, std::vector<float>* cvarValues)
{
	return new State(boolSize, numNumVars, a, cvarValues, obs, task, 0, 0, 0);
}
