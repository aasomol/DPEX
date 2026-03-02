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
	supplier4 - supplier
	customer0 - customer
	customer1 - customer
	customer2 - customer
	customer3 - customer
	customer4 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
	workshop4 - workshop
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 3)
)
(:init
	(can_produce_A workshop1)
	(can_produce_B workshop3)
	(can_produce_C workshop1)
	(can_produce_F workshop3)
	(can_produce_H workshop4)
	(can_produce_K workshop0)
	(can_produce_L workshop1)
	(can_produce_M workshop3)
	(can_supply_D supplier2)
	(can_supply_E supplier3)
	(can_supply_G supplier0)
	(can_supply_I supplier3)
	(can_supply_J supplier4)
	(can_supply_N supplier0)
	(can_supply_O supplier0)
	(can_supply_P supplier2)
	(can_supply_Q supplier4)
	(can_supply_R supplier1)
	(can_supply_S supplier4)
	(at supplier4)
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
	(= (item-goal A) 12)
	(= (item-goal B) 10)
	(= (item-goal C) 5)
	(= (item-goal D) 11)
	(= (item-goal E) 8)
	(= (item-goal F) 8)
	(= (item-goal G) 9)
	(= (item-goal H) 9)
	(= (item-goal I) 14)
	(= (item-goal J) 4)
	(= (item-goal K) 3)
	(= (item-goal L) 10)
	(= (item-goal M) 8)
	(= (item-goal N) 14)
	(= (item-goal O) 8)
	(= (item-goal P) 13)
	(= (item-goal Q) 8)
	(= (item-goal R) 1)
	(= (item-goal S) 3)
)
(:goal (and
	(delivered O customer0)
	(delivered Q customer1)
	(delivered I customer2)
	(delivered H customer3)
	(delivered N customer4)
))
)

