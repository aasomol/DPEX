(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	location2 - location
	location3 - location
	location4 - location
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
	(= (cash) 0)
)
(:init
	(at location1)
	(canwithdraw location1)
	(canbuy location0 item0)
	(canbuy location1 item1)
	(canbuy location4 item2)
	(canbuy location4 item3)
	(canbuy location3 item4)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(currencyOf item4 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 54)
	(= (price item0) 18)
	(= (price item1) 54)
	(= (price item2) 64)
	(= (price item3) 32)
	(= (price item4) 26)
	(= (balance currency0) 372)
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

