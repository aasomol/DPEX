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
	(= (cash) 0)
)
(:init
	(at location1)
	(canwithdraw location1)
	(canbuy location2 item0)
	(canbuy location1 item1)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 25)
	(= (price item0) 89)
	(= (price item1) 14)
	(= (balance currency0) 192)
)
(:goal (and
	(bought item0)
	(bought item1)
	(have_enough currency0)
))
)

