(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	location2 - location
	currency0 - currency
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
	(at location1)
	(canwithdraw location1)
	(canbuy location2 item0)
	(canbuy location1 item1)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 61)
	(= (price item0) 65)
	(= (price item1) 17)
	(= (balance currency0) 214)
)
(:goal (and
	(bought item0)
	(bought item1)
	(have_enough currency0)
))
)

