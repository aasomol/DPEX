(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	location2 - location
	location3 - location
	currency0 - currency
	item0 - item
	item1 - item
	item2 - item
	item3 - item
	item4 - item
)
(:bounds 
	(<= (cash) 500)
	(>= (cash) 20)
)
(:precision 
	(= (cash) 3)
)
(:init
	(at location2)
	(canwithdraw location2)
	(canbuy location3 item0)
	(canbuy location3 item1)
	(canbuy location0 item2)
	(canbuy location2 item3)
	(canbuy location0 item4)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(currencyOf item4 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 34)
	(= (price item0) 28)
	(= (price item1) 58)
	(= (price item2) 69)
	(= (price item3) 55)
	(= (price item4) 71)
	(= (balance currency0) 472)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(bought item3)
	(bought item4)
	(have_enough currency0)
))
)

