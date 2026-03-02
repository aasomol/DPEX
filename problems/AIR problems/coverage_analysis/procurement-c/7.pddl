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
	supplier5 - supplier
	customer0 - customer
	customer1 - customer
	customer2 - customer
	customer3 - customer
	customer4 - customer
	customer5 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
	workshop4 - workshop
	workshop5 - workshop
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
	(can_produce_B workshop1)
	(can_produce_C workshop0)
	(can_produce_F workshop1)
	(can_produce_H workshop3)
	(can_produce_K workshop0)
	(can_produce_L workshop0)
	(can_produce_M workshop3)
	(can_supply_D supplier0)
	(can_supply_E supplier5)
	(can_supply_G supplier3)
	(can_supply_I supplier4)
	(can_supply_J supplier5)
	(can_supply_N supplier5)
	(can_supply_O supplier0)
	(can_supply_P supplier2)
	(can_supply_Q supplier5)
	(can_supply_R supplier3)
	(can_supply_S supplier3)
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
	(= (item-goal A) 9)
	(= (item-goal B) 4)
	(= (item-goal C) 5)
	(= (item-goal D) 2)
	(= (item-goal E) 4)
	(= (item-goal F) 8)
	(= (item-goal G) 1)
	(= (item-goal H) 1)
	(= (item-goal I) 3)
	(= (item-goal J) 6)
	(= (item-goal K) 6)
	(= (item-goal L) 5)
	(= (item-goal M) 11)
	(= (item-goal N) 4)
	(= (item-goal O) 3)
	(= (item-goal P) 10)
	(= (item-goal Q) 14)
	(= (item-goal R) 1)
	(= (item-goal S) 7)
)
(:goal (and
	(delivered E customer0)
	(delivered J customer1)
	(delivered D customer2)
	(delivered H customer3)
	(delivered P customer4)
	(delivered C customer5)
))
)

