#ifndef SELECTOR_H
#define SELECTOR_H

#include <vector>
#include "state.h"

class SearchQueue {
private:
	const static unsigned int INITIAL_PQ_CAPACITY = 8192;
	std::vector<State*> pq;

	void heapify(unsigned int gap);

public:
	SearchQueue();
	void add(State* p);
	State* poll();
	inline State* peek() { return pq[1]; }
	inline int size() { return (int)pq.size() - 1; }
	inline State* getPlanAt(unsigned int i) { return pq[i]; }
	void clear();
};

#endif // !SELECTOR_H
