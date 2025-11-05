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
	(= (cash) 0)
)
(:init
	(at location0)
	(canbuy location0 item0)
	(canbuy location0 item1)
	(canbuy location0 item2)
	(currencyOf item0 currency1)
	(currencyOf item1 currency0)
	(currencyOf item2 currency1)
	(= (inpocket currency0) 0)
	(= (inpocket currency1) 0)
	(= (currency_goal currency0) 40)
	(= (currency_goal currency1) 59)
	(= (price item0) 49)
	(= (price item1) 11)
	(= (price item2) 33)
	(= (balance currency0) 76)
	(= (balance currency1) 212)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(have_enough currency0)
	(have_enough currency1)
))
)

