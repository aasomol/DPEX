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
)
(:bounds 
	(<= (cash) 500)
	(>= (cash) 20)
)
(:precision 
	(= (cash) 0)
)
(:init
	(at location3)
	(canwithdraw location3)
	(canbuy location1 item0)
	(canbuy location1 item1)
	(canbuy location2 item2)
	(canbuy location1 item3)
	(currencyOf item0 currency1)
	(currencyOf item1 currency1)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 100)
	(= (currency_goal currency1) 79)
	(= (price item0) 100)
	(= (price item1) 94)
	(= (price item2) 48)
	(= (price item3) 60)
	(= (balance currency0) 312)
	(= (balance currency1) 410)
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

