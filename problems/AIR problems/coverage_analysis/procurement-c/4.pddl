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
	(= (batchsize) 3)
)
(:init
	(can_produce_A workshop1)
	(can_produce_B workshop2)
	(can_produce_C workshop2)
	(can_produce_F workshop3)
	(can_produce_H workshop1)
	(can_produce_K workshop1)
	(can_produce_L workshop3)
	(can_produce_M workshop3)
	(can_supply_D supplier1)
	(can_supply_E supplier1)
	(can_supply_G supplier1)
	(can_supply_I supplier1)
	(can_supply_J supplier3)
	(can_supply_N supplier1)
	(can_supply_O supplier1)
	(can_supply_P supplier3)
	(can_supply_Q supplier2)
	(can_supply_R supplier2)
	(can_supply_S supplier2)
	(at customer2)
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
	(= (item-goal A) 13)
	(= (item-goal B) 11)
	(= (item-goal C) 9)
	(= (item-goal D) 9)
	(= (item-goal E) 1)
	(= (item-goal F) 1)
	(= (item-goal G) 1)
	(= (item-goal H) 1)
	(= (item-goal I) 3)
	(= (item-goal J) 14)
	(= (item-goal K) 13)
	(= (item-goal L) 2)
	(= (item-goal M) 14)
	(= (item-goal N) 9)
	(= (item-goal O) 1)
	(= (item-goal P) 4)
	(= (item-goal Q) 12)
	(= (item-goal R) 8)
	(= (item-goal S) 9)
)
(:goal (and
	(delivered I customer0)
	(delivered H customer1)
	(delivered M customer2)
	(delivered K customer3)
))
)

