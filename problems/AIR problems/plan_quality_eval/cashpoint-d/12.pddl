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
	(canbuy location0 item0)
	(canbuy location0 item1)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 18)
	(= (currency_goal currency1) 39)
	(= (price item0) 18)
	(= (price item1) 72)
	(= (balance currency0) 162)
	(= (balance currency1) 58)
)
(:goal (and
	(bought item0)
	(bought item1)
	(have_enough currency0)
	(have_enough currency1)
))
)

