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
	(canbuy location2 item0)
	(canbuy location4 item1)
	(canbuy location1 item2)
	(canbuy location4 item3)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 91)
	(= (price item0) 77)
	(= (price item1) 76)
	(= (price item2) 16)
	(= (price item3) 94)
	(= (balance currency0) 531)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(bought item3)
	(have_enough currency0)
))
)

