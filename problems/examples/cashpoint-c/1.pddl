(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	currency0 - currency
	item0 - item
	item1 - item
)
(:bounds 
	(<= (cash) 500)
	(>= (cash) 20)
)
(:precision 
	(= (cash) 3)
)
(:init
	(at location1)
	(canbuy location0 item0)
	(canbuy location1 item1)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 53)
	(= (price item0) 30)
	(= (price item1) 41)
	(= (balance currency0) 186)
)
(:goal (and
	(bought item0)
	(bought item1)
	(have_enough currency0)
))
)

