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
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 3)
)
(:init
	(can_produce_A workshop12)
	(can_produce_B workshop13)
	(can_produce_C workshop14)
	(can_produce_F workshop4)
	(can_produce_H workshop0)
	(can_produce_K workshop5)
	(can_produce_L workshop12)
	(can_produce_M workshop12)
	(can_supply_D supplier4)
	(can_supply_E supplier8)
	(can_supply_G supplier1)
	(can_supply_I supplier1)
	(can_supply_J supplier16)
	(can_supply_N supplier16)
	(can_supply_O supplier7)
	(can_supply_P supplier0)
	(can_supply_Q supplier6)
	(can_supply_R supplier8)
	(can_supply_S supplier11)
	(at customer14)
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
	(= (item-goal B) 6)
	(= (item-goal C) 2)
	(= (item-goal D) 14)
	(= (item-goal E) 2)
	(= (item-goal F) 6)
	(= (item-goal G) 7)
	(= (item-goal H) 5)
	(= (item-goal I) 9)
	(= (item-goal J) 10)
	(= (item-goal K) 3)
	(= (item-goal L) 6)
	(= (item-goal M) 11)
	(= (item-goal N) 7)
	(= (item-goal O) 13)
	(= (item-goal P) 3)
	(= (item-goal Q) 7)
	(= (item-goal R) 9)
	(= (item-goal S) 2)
)
(:goal (and
	(delivered F customer0)
	(delivered E customer1)
	(delivered Q customer2)
	(delivered L customer3)
	(delivered H customer4)
	(delivered G customer5)
	(delivered K customer6)
	(delivered M customer7)
	(delivered O customer8)
	(delivered B customer9)
	(delivered D customer10)
	(delivered A customer11)
	(delivered J customer12)
	(delivered P customer13)
	(delivered I customer14)
	(delivered C customer15)
	(delivered N customer16)
))
)

