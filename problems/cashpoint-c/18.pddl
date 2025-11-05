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
	(= (cash) 3)
)
(:init
	(at location0)
	(canwithdraw location0)
	(canbuy location1 item0)
	(canbuy location0 item1)
	(canbuy location4 item2)
	(canbuy location4 item3)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 62)
	(= (currency_goal currency1) 24)
	(= (price item0) 97)
	(= (price item1) 11)
	(= (price item2) 89)
	(= (price item3) 69)
	(= (balance currency0) 492)
	(= (balance currency1) 36)
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

