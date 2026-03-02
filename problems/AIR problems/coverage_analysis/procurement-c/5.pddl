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
	(can_produce_B workshop0)
	(can_produce_C workshop4)
	(can_produce_F workshop3)
	(can_produce_H workshop3)
	(can_produce_K workshop4)
	(can_produce_L workshop4)
	(can_produce_M workshop0)
	(can_supply_D supplier4)
	(can_supply_E supplier3)
	(can_supply_G supplier1)
	(can_supply_I supplier0)
	(can_supply_J supplier2)
	(can_supply_N supplier2)
	(can_supply_O supplier1)
	(can_supply_P supplier2)
	(can_supply_Q supplier4)
	(can_supply_R supplier4)
	(can_supply_S supplier0)
	(at customer3)
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
	(= (item-goal A) 10)
	(= (item-goal B) 6)
	(= (item-goal C) 8)
	(= (item-goal D) 10)
	(= (item-goal E) 5)
	(= (item-goal F) 4)
	(= (item-goal G) 1)
	(= (item-goal H) 14)
	(= (item-goal I) 2)
	(= (item-goal J) 9)
	(= (item-goal K) 14)
	(= (item-goal L) 11)
	(= (item-goal M) 9)
	(= (item-goal N) 6)
	(= (item-goal O) 12)
	(= (item-goal P) 5)
	(= (item-goal Q) 11)
	(= (item-goal R) 3)
	(= (item-goal S) 8)
)
(:goal (and
	(delivered D customer0)
	(delivered C customer1)
	(delivered O customer2)
	(delivered R customer3)
	(delivered P customer4)
))
)

