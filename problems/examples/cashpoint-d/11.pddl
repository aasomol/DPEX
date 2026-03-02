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
	(= (cash) 0)
)
(:init
	(at location1)
	(canbuy location0 item0)
	(canbuy location1 item1)
	(currencyOf item0 currency0)
	(currencyOf item1 currency1)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 58)
	(= (currency_goal currency1) 19)
	(= (price item0) 28)
	(= (price item1) 47)
	(= (balance currency0) 129)
	(= (balance currency1) 99)
)
(:goal (and
	(bought item0)
	(bought item1)
	(have_enough currency0)
	(have_enough currency1)
))
)

