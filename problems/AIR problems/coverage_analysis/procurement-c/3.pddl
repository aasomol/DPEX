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
	customer0 - customer
	customer1 - customer
	customer2 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 3)
)
(:init
	(can_produce_A workshop2)
	(can_produce_B workshop0)
	(can_produce_C workshop2)
	(can_produce_F workshop2)
	(can_produce_H workshop0)
	(can_produce_K workshop2)
	(can_produce_L workshop0)
	(can_produce_M workshop1)
	(can_supply_D supplier1)
	(can_supply_E supplier2)
	(can_supply_G supplier2)
	(can_supply_I supplier2)
	(can_supply_J supplier2)
	(can_supply_N supplier0)
	(can_supply_O supplier2)
	(can_supply_P supplier1)
	(can_supply_Q supplier1)
	(can_supply_R supplier2)
	(can_supply_S supplier2)
	(at workshop1)
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
	(= (item-goal A) 2)
	(= (item-goal B) 12)
	(= (item-goal C) 6)
	(= (item-goal D) 1)
	(= (item-goal E) 10)
	(= (item-goal F) 13)
	(= (item-goal G) 10)
	(= (item-goal H) 12)
	(= (item-goal I) 2)
	(= (item-goal J) 6)
	(= (item-goal K) 10)
	(= (item-goal L) 12)
	(= (item-goal M) 8)
	(= (item-goal N) 12)
	(= (item-goal O) 10)
	(= (item-goal P) 14)
	(= (item-goal Q) 11)
	(= (item-goal R) 3)
	(= (item-goal S) 13)
)
(:goal (and
	(delivered H customer0)
	(delivered L customer1)
	(delivered D customer2)
))
)

