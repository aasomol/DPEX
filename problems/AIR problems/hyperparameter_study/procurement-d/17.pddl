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
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop14)
	(can_produce_B workshop13)
	(can_produce_C workshop6)
	(can_produce_F workshop4)
	(can_produce_H workshop0)
	(can_produce_K workshop9)
	(can_produce_L workshop4)
	(can_produce_M workshop15)
	(can_supply_D supplier7)
	(can_supply_E supplier7)
	(can_supply_G supplier5)
	(can_supply_I supplier6)
	(can_supply_J supplier0)
	(can_supply_N supplier11)
	(can_supply_O supplier2)
	(can_supply_P supplier9)
	(can_supply_Q supplier9)
	(can_supply_R supplier13)
	(can_supply_S supplier1)
	(at supplier15)
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
	(= (item-goal B) 6)
	(= (item-goal C) 6)
	(= (item-goal D) 5)
	(= (item-goal E) 1)
	(= (item-goal F) 12)
	(= (item-goal G) 5)
	(= (item-goal H) 13)
	(= (item-goal I) 2)
	(= (item-goal J) 5)
	(= (item-goal K) 13)
	(= (item-goal L) 4)
	(= (item-goal M) 6)
	(= (item-goal N) 5)
	(= (item-goal O) 8)
	(= (item-goal P) 10)
	(= (item-goal Q) 11)
	(= (item-goal R) 6)
	(= (item-goal S) 10)
)
(:goal (and
	(delivered H customer0)
	(delivered N customer1)
	(delivered Q customer2)
	(delivered L customer3)
	(delivered G customer4)
	(delivered O customer5)
	(delivered M customer6)
	(delivered R customer7)
	(delivered P customer8)
	(delivered S customer9)
	(delivered F customer10)
	(delivered C customer11)
	(delivered J customer12)
	(delivered D customer13)
	(delivered B customer14)
	(delivered K customer15)
))
)

