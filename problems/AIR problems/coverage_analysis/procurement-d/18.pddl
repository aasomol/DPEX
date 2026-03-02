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
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop4)
	(can_produce_B workshop3)
	(can_produce_C workshop11)
	(can_produce_F workshop0)
	(can_produce_H workshop7)
	(can_produce_K workshop12)
	(can_produce_L workshop16)
	(can_produce_M workshop8)
	(can_supply_D supplier6)
	(can_supply_E supplier3)
	(can_supply_G supplier5)
	(can_supply_I supplier7)
	(can_supply_J supplier11)
	(can_supply_N supplier14)
	(can_supply_O supplier11)
	(can_supply_P supplier6)
	(can_supply_Q supplier13)
	(can_supply_R supplier9)
	(can_supply_S supplier7)
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
	(= (item-goal A) 9)
	(= (item-goal B) 1)
	(= (item-goal C) 5)
	(= (item-goal D) 14)
	(= (item-goal E) 3)
	(= (item-goal F) 5)
	(= (item-goal G) 2)
	(= (item-goal H) 3)
	(= (item-goal I) 4)
	(= (item-goal J) 6)
	(= (item-goal K) 11)
	(= (item-goal L) 7)
	(= (item-goal M) 8)
	(= (item-goal N) 6)
	(= (item-goal O) 7)
	(= (item-goal P) 11)
	(= (item-goal Q) 8)
	(= (item-goal R) 6)
	(= (item-goal S) 3)
)
(:goal (and
	(delivered I customer0)
	(delivered H customer1)
	(delivered O customer2)
	(delivered S customer3)
	(delivered B customer4)
	(delivered P customer5)
	(delivered C customer6)
	(delivered E customer7)
	(delivered G customer8)
	(delivered L customer9)
	(delivered F customer10)
	(delivered A customer11)
	(delivered Q customer12)
	(delivered N customer13)
	(delivered K customer14)
	(delivered D customer15)
	(delivered M customer16)
))
)

