(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
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
	(at location1)
	(canbuy location1 item0)
	(canbuy location1 item1)
	(canbuy location1 item2)
	(currencyOf item0 currency1)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 25)
	(= (currency_goal currency1) 46)
	(= (price item0) 91)
	(= (price item1) 85)
	(= (price item2) 22)
	(= (balance currency0) 198)
	(= (balance currency1) 206)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(have_enough currency0)
	(have_enough currency1)
))
)

