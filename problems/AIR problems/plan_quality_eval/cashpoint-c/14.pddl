(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	location2 - location
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
	(= (cash) 3)
)
(:init
	(at location2)
	(canwithdraw location2)
	(canbuy location1 item0)
	(canbuy location2 item1)
	(canbuy location1 item2)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency1)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 98)
	(= (currency_goal currency1) 24)
	(= (price item0) 15)
	(= (price item1) 33)
	(= (price item2) 11)
	(= (balance currency0) 219)
	(= (balance currency1) 52)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(have_enough currency0)
	(have_enough currency1)
))
)

