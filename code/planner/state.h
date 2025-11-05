#ifndef STATE_H
#define STATE_H

#include <cstdint>
#include "../grounder/grounder.h"
#include "bounds.h"

class State {
private:
	State(int boolSize, int numNumVars, float h, float f, int counter);

public:
	uint8_t* boolState;
	float* numState;
	float h;
	float f;
	int counter;

	State(int boolSize, int numNumVars, State* toCopy);
	State(int boolSize, int numNumVars, GroundedTask* task, float h, float f, int counter);
	State(int boolSize, int numNumVars, GroundedAction* a, State* prevState, GroundedTask* task, float h, float f, int counter);
	State(int boolSize, int numNumVars, GroundedAction* a, std::vector<float>* cvarValues,
		State* prevState, GroundedTask* task, float h, float f, int counter);
	~State();
	bool getBoolValue(int index, GroundedTask* task);
	void setBoolValue(int index, bool value, GroundedTask* task);
	bool propApplicable(GroundedAction* action, GroundedTask* task);
	bool numCondApplicable(GroundedAction* action, GroundedTask* task);
	bool numCVarApplicable(GroundedAction* action, GroundedTask* task, std::vector<float>* cvarValues);
	bool meetsNumCondition(GroundedNumericCondition& c, GroundedTask* task);
	bool meetsNumCondition(GroundedNumericCondition& c, GroundedTask* task, 
		std::vector<GroundedControlVar>* controlVars, std::vector<float>* cvarValues);
	float evaluateTerm(GroundedNumericExpression* e, GroundedTask* task);
	float evaluateTerm(GroundedNumericExpression* e, std::vector<GroundedControlVar>* controlVars,
		std::vector<float>* cvarValues, GroundedTask* task);
	CvarBound evaluateTermBounds(GroundedNumericExpression* e, GroundedTask* task,
		std::vector<GroundedControlVar>* controlVars, std::vector<CvarBound>* bounds);
	std::string toString(GroundedTask* task);
	uint64_t hashCode(int boolSize, int numNumVars) const;
	static int getBoolSize(int numBoolVars);
	void clone(State* s, int boolSize, int numNumVars);
	int compare(State* s) {
		if (f < s->f) return -1;
		else if (f > s->f) return 1;
		else return counter - s->counter;
	}
};

#endif // !STATE_H