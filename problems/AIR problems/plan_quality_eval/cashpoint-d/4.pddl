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
	(= (cash) 0)
)
(:init
	(at location1)
	(canwithdraw location1)
	(canbuy location0 item0)
	(canbuy location0 item1)
	(canbuy location0 item2)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 23)
	(= (price item0) 23)
	(= (price item1) 68)
	(= (price item2) 42)
	(= (balance currency0) 234)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(have_enough currency0)
))
)

