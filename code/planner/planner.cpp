#include "planner.h"

float Planner::evaluateGoal(GroundedAction* g, State* s)
{
	float h = 0;
	for (GroundedCondition& c : g->startCond) {
		if (c.valueIndex == task->task->CONSTANT_TRUE) {
			if (!s->getBoolValue(c.varIndex, task))
				h++;
		}
		else if (s->getBoolValue(c.varIndex, task))
			h++;
	}
	for (GroundedNumericCondition& c : g->startNumCond) {
		if (!s->meetsNumCondition(c, task)) {
			h += abs(s->evaluateTerm(&c.terms[0], task) - s->evaluateTerm(&c.terms[1], task));
		}
	}
	return h;
}

void Planner::numericGoalCounting(State* s)
{
	float h = MAX_INT32;
	for (GroundedAction& a : task->goals) {
		float hg = evaluateGoal(&a, s);
		if (hg < h)
			h = hg;
	}
	s->h = h;
}

void Planner::goalCounting(State* s)
{
	int h = MAX_INT32;
	for (GroundedAction& a : task->goals) {
		h = a.startCond.size() + a.startNumCond.size();
		for (GroundedCondition& c : a.startCond) {
			if (c.valueIndex == task->task->CONSTANT_TRUE) {
				if (s->getBoolValue(c.varIndex, task))
					h--;
			}
			else if (!s->getBoolValue(c.varIndex, task))
				h--;
		}
		for (GroundedNumericCondition& c : a.startNumCond) {
			if (s->meetsNumCondition(c, task))
				h--;
		}
		break;
	}
	s->h = h;
}

void Planner::blindHeuristic(State* s)
{
	int h = MAX_INT32;
	for (GroundedAction& a : task->goals) {
		h = a.startCond.size() + a.startNumCond.size();
		for (GroundedCondition& c : a.startCond) {
			if (c.valueIndex == task->task->CONSTANT_TRUE) {
				if (s->getBoolValue(c.varIndex, task))
					h--;
			}
			else if (!s->getBoolValue(c.varIndex, task))
				h--;
		}
		for (GroundedNumericCondition& c : a.startNumCond) {
			if (s->meetsNumCondition(c, task))
				h--;
		}
		break;
	}
	if (h > 0)
		s->h = 1;
	else
		s->h = 0;
}



void Planner::evaluate(State* s)
{
    if (strcmp(this->heuristicFunction, "gc") == 0) {
        goalCounting(s);
    } else if (strcmp(this->heuristicFunction, "ngc") == 0) {
        numericGoalCounting(s);
    } else if (strcmp(this->heuristicFunction, "blind") == 0) {
        blindHeuristic(s);
    }
}

void Planner::calculateApplicableActions(State* state, std::vector<GroundedAction*>* applicableActions)
{
	for (GroundedAction& a : task->actions) {
		if (state->propApplicable(&a, task) && state->numCondApplicable(&a, task)) {
			applicableActions->push_back(&a);
		}
	}
}

std::string Planner::getRoundedAction(GroundedAction* a, std::vector<float>* cvarValues)
{
	string s = a->fullname;
	for (float v: *cvarValues)
		s += " " + std::to_string(v);
	return s;
}

State* Planner::reset()
{
	State* initialState = openNodes.peek();
	memoization->emplace(initialState, StateData());
	counter = 0;
	env.reset(task, boolSize, numNumVars);
	return initialState;
}

int Planner::printPlan(State* s, bool last = true)
{
	auto it = memoization->find(s);
	StateData* data = &it->second;
	if (data->father != nullptr) {
		int n = printPlan(data->father, false);
		cout << "<(" << data->action->fullname << ")";
		for (float v : data->cvarValues) {
			cout << "," << std::to_string(v);
		}
		cout << ">" << endl;
		return n + 1;
	}
	else return 0;
}

Planner::Planner(GroundedTask* task, bool debug, bool nogreedy, char* rectification, float alpha, char* phi, int numberOfSamples, int seed, char* heuristicFunction, int max_its)
	: gen(std::random_device{}())
{
	this->task = task;
	this->debug = debug;
	this->nogreedy = nogreedy;
	this->rectification = rectification;
	this->alpha = alpha;
	this->phi = phi;
	this->numberOfSamples = numberOfSamples;
	this->seed = seed;
	this->heuristicFunction = heuristicFunction;
	this->max_its = max_its;

	int numVars = task->variables.size();
	this->variableMap = new int[numVars];
	int boolIndex = 0, numIndex = 0;
	for (int i = 0; i < numVars; i++) {
		GroundedVar* var = &(task->variables[i]);
		if (var->isInput) {
			this->variableMap[i] = -1;
		} else if (var->isNumeric) {
			this->variableMap[i] = numIndex++;
		}
		else {
			this->variableMap[i] = boolIndex++;
		}
	}
	this->boolSize = State::getBoolSize(boolIndex);
	this->numNumVars = numIndex;
	initialState = new State(boolSize, numNumVars, task, 0, 0, 0);
	evaluate(initialState);
	initialState->f = initialState->h;
	openNodes.add(initialState);
	this->memoization = new std::unordered_map<State*, StateData, StateHasher, StateComparator> (
		0, StateHasher(boolSize, numNumVars), StateComparator(boolSize, numNumVars));

	if (seed != -1) {
		gen.seed(seed);	// Seed for reproducibility
	}
}

float Planner::rectify(float h, int numVisited){
	if (strcmp(this->rectification, "linear") == 0) {
		return h+this->alpha*numVisited;
	} else if (strcmp(this->rectification, "superlinear") == 0) {
		return h+pow(numVisited, this->alpha);  // Puedes ajustar el exponente si quieres más agresividad
	} else if (strcmp(this->rectification, "logarithmic") == 0) {
		return h+this->alpha*log(numVisited);
	} else {
		// Por si acaso hay un valor inválido (aunque ya se validó en el parseo)
		cerr << "Unknown rectification function: " << rectification << ". Defaulting to log." << endl;
		return -1;
	}

}


Planner::~Planner()
{
	delete[] variableMap;
	delete initialState;
}

int Planner::getNumberOfSamples(){
	return this->numberOfSamples;
}

void Planner::start()
{
	State* solution = nullptr;
	State* obs = reset();
	int num_reexps = 0;
	int its = 0;

	while (openNodes.size() > 0 && solution == nullptr && its < this->max_its) {
		its++;
		State* obs = openNodes.poll();
		if (debug) cout << obs->toString(task);
		bool is_applicable = false;
		int dead_end = 0;
		env.calculateApplicableActions(obs);
		StateData* data = &(*memoization)[obs];
		if (data->num_visited > 1)
			num_reexps++;
		std::vector<float> cvarValues;
		GroundedAction* a = nullptr;
		while (!is_applicable && dead_end < 1000) {
			a = env.phi(gen, &cvarValues, this->phi, obs, this);
			dead_end++;
			is_applicable = obs->numCVarApplicable(a, task, &cvarValues);
			if (is_applicable) {
				std::string aName = getRoundedAction(a, &cvarValues);
				if (data->appliedAction(aName)) {
					is_applicable = false;
				}
				else {
					data->applied.insert(aName);
					if (debug) cout << " Action: " << aName;
				}
			}
		}
		data->num_visited++;
		if (dead_end < 1000 && a != nullptr) {
			State* new_obs = env.step(obs, a, &cvarValues);
			if (debug) cout << " -> New state: " << new_obs->toString(task);
			auto it = memoization->find(new_obs);
			if (it == memoization->end()) { // New state
				new_obs->counter = ++counter;
				evaluate(new_obs);
				if (this->nogreedy)
					new_obs->f = new_obs->h + (data->depth + 1);
				else 
					new_obs->f = new_obs->h;
				if (new_obs->h == 0)
					solution = new_obs;
				memoization->emplace(new_obs, StateData(obs, a, 1, data->depth + 1, cvarValues));
				openNodes.add(new_obs);
			} 
			else {	// Already existing state
				StateData* new_data = &it->second;
				new_data->num_visited++;
				evaluate(new_obs);
				if (this->nogreedy){
					StateData* new_data = &(*memoization)[new_obs];
					new_obs->f = new_obs->h + new_data->depth;
				} else {
					new_obs->f = new_obs->h;
				}
				new_obs->counter = ++counter;
				openNodes.add(new_obs);
			}
			if (this->nogreedy)
				obs->f = rectify(obs->h,data->num_visited) + data->depth;
			else 
				obs->f = rectify(obs->h,data->num_visited);
			obs->counter = ++counter;
			openNodes.add(obs);			
		}
		else {
			if (debug) cout << " -> Dead end";
			if (this->nogreedy)
				obs->f = rectify(obs->h,data->num_visited) + data->depth;
			else 
				obs->f = rectify(obs->h,data->num_visited);
			obs->counter = ++counter;
			openNodes.add(obs);
		}
		if (debug) cout << endl;
	}
	if (solution != nullptr) {
		if (debug) cout << "----------------" << endl << endl << "Plan:" << endl;
		cout << ";Plan found: " << endl;
		int n = printPlan(solution);
		cout << ";Actions: " << n << endl;
		cout << ";Iterations: " << its << endl;
		cout << ";Total reexpansions: " << num_reexps << endl;
	}
	else cout << "No plan found" << endl;
}
