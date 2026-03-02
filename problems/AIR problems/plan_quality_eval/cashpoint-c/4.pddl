(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	location2 - location
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
	(= (cash) 3)
)
(:init
	(at location1)
	(canwithdraw location1)
	(canbuy location2 item0)
	(canbuy location2 item1)
	(canbuy location2 item2)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 13)
	(= (price item0) 91)
	(= (price item1) 68)
	(= (price item2) 10)
	(= (balance currency0) 273)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(have_enough currency0)
))
)

