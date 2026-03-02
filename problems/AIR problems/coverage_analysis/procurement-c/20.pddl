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
	supplier15 - supplier
	supplier16 - supplier
	supplier17 - supplier
	supplier18 - supplier
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
	customer15 - customer
	customer16 - customer
	customer17 - customer
	customer18 - customer
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
	workshop15 - workshop
	workshop16 - workshop
	workshop17 - workshop
	workshop18 - workshop
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 3)
)
(:init
	(can_produce_A workshop7)
	(can_produce_B workshop16)
	(can_produce_C workshop12)
	(can_produce_F workshop5)
	(can_produce_H workshop17)
	(can_produce_K workshop6)
	(can_produce_L workshop7)
	(can_produce_M workshop16)
	(can_supply_D supplier12)
	(can_supply_E supplier4)
	(can_supply_G supplier0)
	(can_supply_I supplier17)
	(can_supply_J supplier2)
	(can_supply_N supplier3)
	(can_supply_O supplier9)
	(can_supply_P supplier7)
	(can_supply_Q supplier1)
	(can_supply_R supplier11)
	(can_supply_S supplier2)
	(at supplier8)
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
	(= (item-goal A) 8)
	(= (item-goal B) 3)
	(= (item-goal C) 11)
	(= (item-goal D) 4)
	(= (item-goal E) 9)
	(= (item-goal F) 8)
	(= (item-goal G) 1)
	(= (item-goal H) 14)
	(= (item-goal I) 11)
	(= (item-goal J) 9)
	(= (item-goal K) 2)
	(= (item-goal L) 1)
	(= (item-goal M) 8)
	(= (item-goal N) 2)
	(= (item-goal O) 3)
	(= (item-goal P) 4)
	(= (item-goal Q) 11)
	(= (item-goal R) 5)
	(= (item-goal S) 12)
)
(:goal (and
	(delivered R customer0)
	(delivered G customer1)
	(delivered K customer2)
	(delivered P customer3)
	(delivered I customer4)
	(delivered B customer5)
	(delivered H customer6)
	(delivered C customer7)
	(delivered E customer8)
	(delivered M customer9)
	(delivered N customer10)
	(delivered O customer11)
	(delivered J customer12)
	(delivered S customer13)
	(delivered Q customer14)
	(delivered F customer15)
	(delivered L customer16)
	(delivered D customer17)
	(delivered A customer18)
))
)

