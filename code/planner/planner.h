#ifndef PLANNER_H
#define PLANNER_H

#include <random>
#include <unordered_set>
#include <unordered_map>	
#include <cstring>
#include "../grounder/grounder.h"
#include "state.h"
#include "searchQueue.h"
#include "environment.h"

struct StateHasher {
	int boolSize, numNumVars;

	StateHasher(int bVars, int nVars) : boolSize(bVars), numNumVars(nVars) {}

	std::size_t operator()(const State* state) const {
		return state->hashCode(boolSize, numNumVars);
	}
};

struct StateComparator {
	int boolSize, numNumVars;

	StateComparator(int bVars, int nVars) : boolSize(bVars), numNumVars(nVars) {}

	bool operator()(const State* lhs, const State* rhs) const {
		return std::memcmp(lhs->boolState, rhs->boolState, sizeof(uint8_t) * boolSize) == 0 &&
			std::memcmp(lhs->numState, rhs->numState, sizeof(float) * numNumVars) == 0;
	}
};

class StateData {
public:
	State* father;
	GroundedAction* action;
	std::vector<float> cvarValues;
	int num_visited;
	std::unordered_set<std::string> applied;
	int depth;
	
	StateData() : father(nullptr), action(nullptr), num_visited(1), depth(0) {}
	StateData(State* f, GroundedAction* a, int v, int d, std::vector<float> cv) : father(f), action(a), num_visited(v),
		depth(d), cvarValues(cv) {}
	inline bool appliedAction(std::string& actionName) {
		return applied.find(actionName) != applied.end();
	}
};

class Planner {
private:
	GroundedTask* task;
	int* variableMap;
	State* initialState;
	int boolSize;
	int numNumVars;
	int bestH = MAX_INT32;
	SearchQueue openNodes;
	std::unordered_map<State*, StateData, StateHasher, StateComparator>* memoization;
	bool debug;
	std::mt19937 gen;
	Environment env;
	int counter;

	bool nogreedy;
	char* rectification;
	float alpha;
	char* phi;
	int numberOfSamples;
	int seed;
	char* heuristicFunction;
	

	float evaluateGoal(GroundedAction* g, State* s);
	void goalCounting(State* s);
	void numericGoalCounting(State* s);
	void blindHeuristic(State* s);
	void calculateApplicableActions(State* state, std::vector<GroundedAction*>* applicableActions);
	std::string getRoundedAction(GroundedAction* a, std::vector<float>* cvarValues);
	State* reset();
	int printPlan(State* s, bool last);
	float rectify(float h, int numVisited);
	int max_its;


public:
	Planner(GroundedTask* task, bool debug, bool greedy, char* rectification, float alpha, char* phi, int numberOfSamples, int seed, char* heuristicFunction, int max_its);
	~Planner();
	void start();
	void evaluate(State* s);
 	int getNumberOfSamples();
};

#endif // !PLANNER_H