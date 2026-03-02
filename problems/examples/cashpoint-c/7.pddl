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
	(canbuy location0 item0)
	(canbuy location1 item1)
	(canbuy location1 item2)
	(canbuy location3 item3)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 79)
	(= (price item0) 16)
	(= (price item1) 73)
	(= (price item2) 92)
	(= (price item3) 96)
	(= (balance currency0) 534)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(bought item3)
	(have_enough currency0)
))
)

