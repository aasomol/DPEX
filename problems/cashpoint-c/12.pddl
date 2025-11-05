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
	(= (cash) 3)
)
(:init
	(at location2)
	(canwithdraw location2)
	(canbuy location2 item0)
	(canbuy location1 item1)
	(currencyOf item0 currency1)
	(currencyOf item1 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 92)
	(= (currency_goal currency1) 19)
	(= (price item0) 26)
	(= (price item1) 88)
	(= (balance currency0) 270)
	(= (balance currency1) 68)
)
(:goal (and
	(bought item0)
	(bought item1)
	(have_enough currency0)
	(have_enough currency1)
))
)

