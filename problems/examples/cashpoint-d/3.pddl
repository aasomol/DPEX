(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	currency0 - currency
	item0 - item
	item1 - item
	item2 - item
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
	(canbuy location1 item1)
	(canbuy location0 item2)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 20)
	(= (price item0) 44)
	(= (price item1) 11)
	(= (price item2) 22)
	(= (balance currency0) 146)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(have_enough currency0)
))
)

