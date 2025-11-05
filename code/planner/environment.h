#ifndef _ENVIRONMENT_H
#define _ENVIRONMENT_H

#include "state.h"
#include "../grounder/groundedTask.h"
#include <cstring>

class Planner;

class Environment {
private:
	GroundedTask* task;
	int boolSize;
	int numNumVars;
	std::vector<GroundedAction*> applicableActions;

public:
	void reset(GroundedTask* task, int boolSize, int numNumVars);
	void calculateApplicableActions(State* obs);
	GroundedAction* phi(std::mt19937& gen, std::vector<float>* cvarValues, char* phiType, State* obs, Planner* planner);
	GroundedAction* uniformSampling(std::mt19937& gen, std::vector<float>* cvarValues);
	GroundedAction* heuristicSampling(std::mt19937& gen, std::vector<float>* cvarValues, State* obs, Planner* planner);
	State* step(State* obs, GroundedAction* a, std::vector<float>* cvarValues);
};

#endif // _ENVIRONMENT_H