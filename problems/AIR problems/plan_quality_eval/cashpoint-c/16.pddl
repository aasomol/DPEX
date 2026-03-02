(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	location2 - location
	currency0 - currency
	currency1 - currency
	item0 - item
	item1 - item
	item2 - item
	item3 - item
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
	(canbuy location2 item0)
	(canbuy location1 item1)
	(canbuy location2 item2)
	(canbuy location2 item3)
	(currencyOf item0 currency1)
	(currencyOf item1 currency1)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 68)
	(= (currency_goal currency1) 59)
	(= (price item0) 78)
	(= (price item1) 54)
	(= (price item2) 69)
	(= (price item3) 54)
	(= (balance currency0) 286)
	(= (balance currency1) 286)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(bought item3)
	(have_enough currency0)
	(have_enough currency1)
))
)

