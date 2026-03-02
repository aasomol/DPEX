(define (problem cashpoint)
(:domain cashpoint)
(:objects 
	location0 - location
	location1 - location
	location2 - location
	location3 - location
	location4 - location
	currency0 - currency
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
	(at location1)
	(canwithdraw location1)
	(canbuy location2 item0)
	(canbuy location0 item1)
	(canbuy location0 item2)
	(canbuy location2 item3)
	(currencyOf item0 currency0)
	(currencyOf item1 currency0)
	(currencyOf item2 currency0)
	(currencyOf item3 currency0)
	(= (inpocket currency0) 0)
	(= (currency_goal currency0) 25)
	(= (price item0) 34)
	(= (price item1) 61)
	(= (price item2) 17)
	(= (price item3) 97)
	(= (balance currency0) 351)
)
(:goal (and
	(bought item0)
	(bought item1)
	(bought item2)
	(bought item3)
	(have_enough currency0)
))
)

