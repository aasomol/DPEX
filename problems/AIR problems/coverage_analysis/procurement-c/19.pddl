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
	(= (batchsize) 3)
)
(:init
	(can_produce_A workshop3)
	(can_produce_B workshop12)
	(can_produce_C workshop8)
	(can_produce_F workshop9)
	(can_produce_H workshop17)
	(can_produce_K workshop5)
	(can_produce_L workshop6)
	(can_produce_M workshop11)
	(can_supply_D supplier17)
	(can_supply_E supplier14)
	(can_supply_G supplier2)
	(can_supply_I supplier4)
	(can_supply_J supplier12)
	(can_supply_N supplier13)
	(can_supply_O supplier1)
	(can_supply_P supplier5)
	(can_supply_Q supplier11)
	(can_supply_R supplier6)
	(can_supply_S supplier16)
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
	(= (item-goal A) 7)
	(= (item-goal B) 1)
	(= (item-goal C) 12)
	(= (item-goal D) 2)
	(= (item-goal E) 10)
	(= (item-goal F) 4)
	(= (item-goal G) 12)
	(= (item-goal H) 5)
	(= (item-goal I) 1)
	(= (item-goal J) 3)
	(= (item-goal K) 7)
	(= (item-goal L) 11)
	(= (item-goal M) 12)
	(= (item-goal N) 10)
	(= (item-goal O) 6)
	(= (item-goal P) 12)
	(= (item-goal Q) 7)
	(= (item-goal R) 2)
	(= (item-goal S) 1)
)
(:goal (and
	(delivered H customer0)
	(delivered J customer1)
	(delivered I customer2)
	(delivered S customer3)
	(delivered B customer4)
	(delivered C customer5)
	(delivered Q customer6)
	(delivered A customer7)
	(delivered G customer8)
	(delivered R customer9)
	(delivered E customer10)
	(delivered O customer11)
	(delivered N customer12)
	(delivered K customer13)
	(delivered D customer14)
	(delivered M customer15)
	(delivered P customer16)
	(delivered F customer17)
))
)

