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
	(= (cash) 0)
)
(:init
	(at location0)
	(canbuy location1 item0)
	(canbuy location0 item1)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 41)
	(= (price item0) 49)
	(= (price item1) 43)
	(= (balance currency0) 200)
)
(:goal (and
	(bought item0)
	(bought item1)
	(have_enough currency0)
))
)

