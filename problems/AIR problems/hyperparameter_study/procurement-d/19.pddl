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
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop10)
	(can_produce_B workshop1)
	(can_produce_C workshop3)
	(can_produce_F workshop2)
	(can_produce_H workshop10)
	(can_produce_K workshop6)
	(can_produce_L workshop6)
	(can_produce_M workshop17)
	(can_supply_D supplier11)
	(can_supply_E supplier12)
	(can_supply_G supplier16)
	(can_supply_I supplier1)
	(can_supply_J supplier9)
	(can_supply_N supplier3)
	(can_supply_O supplier7)
	(can_supply_P supplier1)
	(can_supply_Q supplier16)
	(can_supply_R supplier16)
	(can_supply_S supplier2)
	(at workshop10)
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
	(= (item-goal B) 3)
	(= (item-goal C) 6)
	(= (item-goal D) 5)
	(= (item-goal E) 12)
	(= (item-goal F) 1)
	(= (item-goal G) 14)
	(= (item-goal H) 12)
	(= (item-goal I) 5)
	(= (item-goal J) 1)
	(= (item-goal K) 10)
	(= (item-goal L) 6)
	(= (item-goal M) 2)
	(= (item-goal N) 1)
	(= (item-goal O) 2)
	(= (item-goal P) 14)
	(= (item-goal Q) 8)
	(= (item-goal R) 8)
	(= (item-goal S) 3)
)
(:goal (and
	(delivered H customer0)
	(delivered C customer1)
	(delivered I customer2)
	(delivered F customer3)
	(delivered D customer4)
	(delivered G customer5)
	(delivered O customer6)
	(delivered R customer7)
	(delivered J customer8)
	(delivered E customer9)
	(delivered M customer10)
	(delivered P customer11)
	(delivered K customer12)
	(delivered A customer13)
	(delivered L customer14)
	(delivered Q customer15)
	(delivered B customer16)
	(delivered N customer17)
))
)

