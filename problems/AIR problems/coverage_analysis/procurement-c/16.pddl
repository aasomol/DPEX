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
	supplier6 - supplier
	supplier7 - supplier
	supplier8 - supplier
	supplier9 - supplier
	supplier10 - supplier
	supplier11 - supplier
	supplier12 - supplier
	supplier13 - supplier
	supplier14 - supplier
	customer0 - customer
	customer1 - customer
	customer2 - customer
	customer3 - customer
	customer4 - customer
	customer5 - customer
	customer6 - customer
	customer7 - customer
	customer8 - customer
	customer9 - customer
	customer10 - customer
	customer11 - customer
	customer12 - customer
	customer13 - customer
	customer14 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
	workshop4 - workshop
	workshop5 - workshop
	workshop6 - workshop
	workshop7 - workshop
	workshop8 - workshop
	workshop9 - workshop
	workshop10 - workshop
	workshop11 - workshop
	workshop12 - workshop
	workshop13 - workshop
	workshop14 - workshop
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 3)
)
(:init
	(can_produce_A workshop10)
	(can_produce_B workshop12)
	(can_produce_C workshop2)
	(can_produce_F workshop0)
	(can_produce_H workshop1)
	(can_produce_K workshop11)
	(can_produce_L workshop10)
	(can_produce_M workshop2)
	(can_supply_D supplier10)
	(can_supply_E supplier5)
	(can_supply_G supplier4)
	(can_supply_I supplier1)
	(can_supply_J supplier13)
	(can_supply_N supplier13)
	(can_supply_O supplier5)
	(can_supply_P supplier0)
	(can_supply_Q supplier8)
	(can_supply_R supplier11)
	(can_supply_S supplier1)
	(at customer7)
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
	(= (item-goal A) 3)
	(= (item-goal B) 4)
	(= (item-goal C) 7)
	(= (item-goal D) 14)
	(= (item-goal E) 1)
	(= (item-goal F) 6)
	(= (item-goal G) 5)
	(= (item-goal H) 10)
	(= (item-goal I) 10)
	(= (item-goal J) 3)
	(= (item-goal K) 13)
	(= (item-goal L) 11)
	(= (item-goal M) 5)
	(= (item-goal N) 3)
	(= (item-goal O) 3)
	(= (item-goal P) 14)
	(= (item-goal Q) 5)
	(= (item-goal R) 7)
	(= (item-goal S) 8)
)
(:goal (and
	(delivered E customer0)
	(delivered G customer1)
	(delivered K customer2)
	(delivered L customer3)
	(delivered J customer4)
	(delivered C customer5)
	(delivered S customer6)
	(delivered F customer7)
	(delivered M customer8)
	(delivered R customer9)
	(delivered P customer10)
	(delivered A customer11)
	(delivered B customer12)
	(delivered O customer13)
	(delivered I customer14)
))
)

