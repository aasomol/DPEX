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
	(= (cash) 0)
)
(:init
	(at location0)
	(canwithdraw location0)
	(canbuy location1 item0)
	(canbuy location3 item1)
	(canbuy location1 item2)
	(canbuy location3 item3)
	(canbuy location1 item4)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(currencyOf item4 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 56)
	(= (price item0) 91)
	(= (price item1) 94)
	(= (price item2) 88)
	(= (price item3) 70)
	(= (price item4) 60)
	(= (balance currency0) 688)
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

