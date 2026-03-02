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
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop0)
	(can_produce_B workshop2)
	(can_produce_C workshop4)
	(can_produce_F workshop3)
	(can_produce_H workshop4)
	(can_produce_K workshop3)
	(can_produce_L workshop3)
	(can_produce_M workshop0)
	(can_supply_D supplier1)
	(can_supply_E supplier3)
	(can_supply_G supplier3)
	(can_supply_I supplier0)
	(can_supply_J supplier2)
	(can_supply_N supplier0)
	(can_supply_O supplier0)
	(can_supply_P supplier3)
	(can_supply_Q supplier2)
	(can_supply_R supplier0)
	(can_supply_S supplier2)
	(at supplier1)
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
	(= (item-goal B) 13)
	(= (item-goal C) 3)
	(= (item-goal D) 8)
	(= (item-goal E) 1)
	(= (item-goal F) 5)
	(= (item-goal G) 6)
	(= (item-goal H) 9)
	(= (item-goal I) 5)
	(= (item-goal J) 12)
	(= (item-goal K) 9)
	(= (item-goal L) 1)
	(= (item-goal M) 7)
	(= (item-goal N) 10)
	(= (item-goal O) 2)
	(= (item-goal P) 6)
	(= (item-goal Q) 6)
	(= (item-goal R) 6)
	(= (item-goal S) 7)
)
(:goal (and
	(delivered M customer0)
	(delivered K customer1)
	(delivered O customer2)
	(delivered F customer3)
	(delivered J customer4)
))
)

