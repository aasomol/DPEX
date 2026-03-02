(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	location2 - location
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
	(at location2)
	(canwithdraw location2)
	(canbuy location0 item0)
	(canbuy location1 item1)
	(canbuy location1 item2)
	(canbuy location1 item3)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 69)
	(= (price item0) 38)
	(= (price item1) 10)
	(= (price item2) 43)
	(= (price item3) 29)
	(= (balance currency0) 284)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(bought item3)
	(have_enough currency0)
))
)

