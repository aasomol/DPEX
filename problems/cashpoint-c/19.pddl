(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	location2 - location
	location3 - location
	currency0 - currency
	currency1 - currency
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
	(at location1)
	(canwithdraw location1)
	(canbuy location0 item0)
	(canbuy location1 item1)
	(canbuy location2 item2)
	(canbuy location0 item3)
	(canbuy location2 item4)
	(currencyOf item0 currency1)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency1)
	(currencyOf item4 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 80)
	(= (currency_goal currency1) 72)
	(= (price item0) 53)
	(= (price item1) 82)
	(= (price item2) 64)
	(= (price item3) 32)
	(= (price item4) 20)
	(= (balance currency0) 369)
	(= (balance currency1) 236)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(bought item3)
	(bought item4)
	(have_enough currency0)
	(have_enough currency1)
))
)

