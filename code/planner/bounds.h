#ifndef _BOUNDS_H_
#define _BOUNDS_H_

#include <limits>
#include "../grounder/groundedTask.h"

class CvarBound {
public:
	float lower;
	float upper;
	CvarBound() : lower(-std::numeric_limits<float>::max()),
		upper(std::numeric_limits<float>::max()) {}
	CvarBound(float lower, float upper) : lower(lower), upper(upper) {}
	void update(Comparator comparator, float value, int precision);
	void update(Comparator comparator, CvarBound value, int precision);
	float get_precision_epsilon(int precision);
	inline void set(float value) { lower = value; upper = value; }
};

#endif // !_BOUNDS_H_