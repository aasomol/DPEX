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
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop11)
	(can_produce_B workshop13)
	(can_produce_C workshop2)
	(can_produce_F workshop0)
	(can_produce_H workshop10)
	(can_produce_K workshop0)
	(can_produce_L workshop2)
	(can_produce_M workshop8)
	(can_supply_D supplier6)
	(can_supply_E supplier10)
	(can_supply_G supplier3)
	(can_supply_I supplier2)
	(can_supply_J supplier8)
	(can_supply_N supplier3)
	(can_supply_O supplier11)
	(can_supply_P supplier10)
	(can_supply_Q supplier0)
	(can_supply_R supplier10)
	(can_supply_S supplier11)
	(at workshop0)
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
	(= (item-goal B) 9)
	(= (item-goal C) 5)
	(= (item-goal D) 11)
	(= (item-goal E) 9)
	(= (item-goal F) 12)
	(= (item-goal G) 12)
	(= (item-goal H) 10)
	(= (item-goal I) 13)
	(= (item-goal J) 1)
	(= (item-goal K) 5)
	(= (item-goal L) 14)
	(= (item-goal M) 12)
	(= (item-goal N) 11)
	(= (item-goal O) 1)
	(= (item-goal P) 3)
	(= (item-goal Q) 1)
	(= (item-goal R) 12)
	(= (item-goal S) 14)
)
(:goal (and
	(delivered H customer0)
	(delivered L customer1)
	(delivered J customer2)
	(delivered G customer3)
	(delivered N customer4)
	(delivered E customer5)
	(delivered S customer6)
	(delivered F customer7)
	(delivered C customer8)
	(delivered B customer9)
	(delivered P customer10)
	(delivered M customer11)
	(delivered I customer12)
	(delivered D customer13)
	(delivered R customer14)
))
)

