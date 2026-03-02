(define (problem procurement)
(:domain procurement)
(:objects 
	A - itemA
	B - itemB
	C - itemC
	D - itemD
	E - itemE
	F - itemF
	G - itemG
	H - itemH
	I - itemI
	J - itemJ
	K - itemK
	L - itemL
	M - itemM
	N - itemN
	O - itemO
	P - itemP
	Q - itemQ
	R - itemR
	S - itemS
	supplier0 - supplier
	supplier1 - supplier
	supplier2 - supplier
	supplier3 - supplier
	customer0 - customer
	customer1 - customer
	customer2 - customer
	customer3 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop1)
	(can_produce_B workshop3)
	(can_produce_C workshop0)
	(can_produce_F workshop0)
	(can_produce_H workshop2)
	(can_produce_K workshop2)
	(can_produce_L workshop0)
	(can_produce_M workshop2)
	(can_supply_D supplier1)
	(can_supply_E supplier2)
	(can_supply_G supplier2)
	(can_supply_I supplier1)
	(can_supply_J supplier1)
	(can_supply_N supplier0)
	(can_supply_O supplier0)
	(can_supply_P supplier1)
	(can_supply_Q supplier2)
	(can_supply_R supplier0)
	(can_supply_S supplier3)
	(at supplier0)
	(= (stock A) 0)
	(= (stock B) 0)
	(= (stock C) 0)
	(= (stock D) 0)
	(= (stock E) 0)
	(= (stock F) 0)
	(= (stock G) 0)
	(= (stock H) 0)
	(= (stock I) 0)
	(= (stock J) 0)
	(= (stock K) 0)
	(= (stock L) 0)
	(= (stock M) 0)
	(= (stock N) 0)
	(= (stock O) 0)
	(= (stock P) 0)
	(= (stock Q) 0)
	(= (stock R) 0)
	(= (stock S) 0)
	(= (item-goal A) 14)
	(= (item-goal B) 14)
	(= (item-goal C) 1)
	(= (item-goal D) 4)
	(= (item-goal E) 11)
	(= (item-goal F) 10)
	(= (item-goal G) 1)
	(= (item-goal H) 5)
	(= (item-goal I) 5)
	(= (item-goal J) 4)
	(= (item-goal K) 11)
	(= (item-goal L) 13)
	(= (item-goal M) 14)
	(= (item-goal N) 9)
	(= (item-goal O) 7)
	(= (item-goal P) 12)
	(= (item-goal Q) 3)
	(= (item-goal R) 4)
	(= (item-goal S) 6)
)
(:goal (and
	(delivered J customer0)
	(delivered N customer1)
	(delivered I customer2)
	(delivered B customer3)
))
)

