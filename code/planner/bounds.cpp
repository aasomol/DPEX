#include "bounds.h"

void CvarBound::update(Comparator comparator, float value, int precision)
{
	switch (comparator)
	{
	case CMP_LESS:
		upper = value - get_precision_epsilon(precision);
		break;
	case CMP_LESS_EQ:
		upper = value;
		break;
	case CMP_GREATER:
		lower = value + get_precision_epsilon(precision);
		break;
	case CMP_GREATER_EQ:
		lower = value;
		break;
	case CMP_EQ:
		lower = value;
		upper = value;
		break;
	}
}

void CvarBound::update(Comparator comparator, CvarBound value, int precision)
{
	switch (comparator)
	{
	case CMP_LESS:
		upper = std::min(value.upper - get_precision_epsilon(precision), upper);
		break;
	case CMP_LESS_EQ:
		upper = std::min(value.upper, upper);
		break;
	case CMP_GREATER:
		lower = std::max(value.lower + get_precision_epsilon(precision), lower);
		break;
	case CMP_GREATER_EQ:
		lower = std::max(value.lower, lower);
		break;
	case CMP_EQ:
		lower = std::max(value.lower, lower);
		upper = std::min(value.upper, upper);
		break;
	}
}

float CvarBound::get_precision_epsilon(int precision)
{
	if (precision < 0) return 0.000001f;
	return 1.0f / std::pow(10.0f, precision);
}
