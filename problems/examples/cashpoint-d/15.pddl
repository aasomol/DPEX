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
	(canbuy location0 item1)
	(canbuy location3 item2)
	(currencyOf item0 currency0)
	(currencyOf item1 currency1)
	(currencyOf item2 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 58)
	(= (currency_goal currency1) 57)
	(= (price item0) 98)
	(= (price item1) 43)
	(= (price item2) 92)
	(= (balance currency0) 372)
	(= (balance currency1) 150)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(have_enough currency0)
	(have_enough currency1)
))
)

