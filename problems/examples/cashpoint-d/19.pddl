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
	(= (cash) 0)
)
(:init
	(at location1)
	(canwithdraw location1)
	(canbuy location3 item0)
	(canbuy location0 item1)
	(canbuy location0 item2)
	(canbuy location2 item3)
	(canbuy location0 item4)
	(currencyOf item0 currency1)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(currencyOf item4 currency1)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 35)
	(= (currency_goal currency1) 98)
	(= (price item0) 45)
	(= (price item1) 45)
	(= (price item2) 26)
	(= (price item3) 46)
	(= (price item4) 76)
	(= (balance currency0) 228)
	(= (balance currency1) 328)
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

