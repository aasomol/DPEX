(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
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
	(at location0)
	(canbuy location0 item0)
	(canbuy location1 item1)
	(currencyOf item0 currency0)
	(currencyOf item1 currency1)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 62)
	(= (currency_goal currency1) 93)
	(= (price item0) 77)
	(= (price item1) 89)
	(= (balance currency0) 208)
	(= (balance currency1) 273)
)
(:goal (and
	(bought item0)
	(bought item1)
	(have_enough currency0)
	(have_enough currency1)
))
)

