(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	location2 - location
	location3 - location
	location4 - location
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
	(canbuy location4 item0)
	(canbuy location0 item1)
	(canbuy location4 item2)
	(canbuy location2 item3)
	(currencyOf item0 currency1)
	(currencyOf item1 currency0)
	(currencyOf item2 currency1)
	(currencyOf item3 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 85)
	(= (currency_goal currency1) 76)
	(= (price item0) 66)
	(= (price item1) 65)
	(= (price item2) 51)
	(= (price item3) 80)
	(= (balance currency0) 345)
	(= (balance currency1) 290)
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

