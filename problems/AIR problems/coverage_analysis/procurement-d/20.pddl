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
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop6)
	(can_produce_B workshop0)
	(can_produce_C workshop2)
	(can_produce_F workshop3)
	(can_produce_H workshop16)
	(can_produce_K workshop15)
	(can_produce_L workshop14)
	(can_produce_M workshop7)
	(can_supply_D supplier7)
	(can_supply_E supplier14)
	(can_supply_G supplier15)
	(can_supply_I supplier3)
	(can_supply_J supplier10)
	(can_supply_N supplier14)
	(can_supply_O supplier12)
	(can_supply_P supplier13)
	(can_supply_Q supplier2)
	(can_supply_R supplier0)
	(can_supply_S supplier18)
	(at supplier11)
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
	(= (item-goal B) 12)
	(= (item-goal C) 4)
	(= (item-goal D) 8)
	(= (item-goal E) 3)
	(= (item-goal F) 8)
	(= (item-goal G) 7)
	(= (item-goal H) 2)
	(= (item-goal I) 12)
	(= (item-goal J) 4)
	(= (item-goal K) 2)
	(= (item-goal L) 13)
	(= (item-goal M) 1)
	(= (item-goal N) 13)
	(= (item-goal O) 6)
	(= (item-goal P) 7)
	(= (item-goal Q) 12)
	(= (item-goal R) 12)
	(= (item-goal S) 12)
)
(:goal (and
	(delivered K customer0)
	(delivered N customer1)
	(delivered A customer2)
	(delivered I customer3)
	(delivered D customer4)
	(delivered C customer5)
	(delivered Q customer6)
	(delivered P customer7)
	(delivered J customer8)
	(delivered S customer9)
	(delivered H customer10)
	(delivered R customer11)
	(delivered O customer12)
	(delivered F customer13)
	(delivered M customer14)
	(delivered L customer15)
	(delivered G customer16)
	(delivered E customer17)
	(delivered B customer18)
))
)

