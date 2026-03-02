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
	(can_produce_B workshop10)
	(can_produce_C workshop11)
	(can_produce_F workshop0)
	(can_produce_H workshop3)
	(can_produce_K workshop5)
	(can_produce_L workshop14)
	(can_produce_M workshop13)
	(can_supply_D supplier3)
	(can_supply_E supplier12)
	(can_supply_G supplier4)
	(can_supply_I supplier14)
	(can_supply_J supplier5)
	(can_supply_N supplier4)
	(can_supply_O supplier12)
	(can_supply_P supplier10)
	(can_supply_Q supplier5)
	(can_supply_R supplier4)
	(can_supply_S supplier15)
	(at customer15)
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
	(= (item-goal C) 10)
	(= (item-goal D) 2)
	(= (item-goal E) 11)
	(= (item-goal F) 7)
	(= (item-goal G) 10)
	(= (item-goal H) 2)
	(= (item-goal I) 2)
	(= (item-goal J) 6)
	(= (item-goal K) 11)
	(= (item-goal L) 2)
	(= (item-goal M) 6)
	(= (item-goal N) 11)
	(= (item-goal O) 12)
	(= (item-goal P) 1)
	(= (item-goal Q) 1)
	(= (item-goal R) 1)
	(= (item-goal S) 3)
)
(:goal (and
	(delivered D customer0)
	(delivered M customer1)
	(delivered K customer2)
	(delivered R customer3)
	(delivered B customer4)
	(delivered J customer5)
	(delivered G customer6)
	(delivered I customer7)
	(delivered P customer8)
	(delivered E customer9)
	(delivered A customer10)
	(delivered L customer11)
	(delivered C customer12)
	(delivered H customer13)
	(delivered Q customer14)
	(delivered F customer15)
))
)

