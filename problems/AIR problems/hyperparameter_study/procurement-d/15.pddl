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
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop9)
	(can_produce_B workshop4)
	(can_produce_C workshop2)
	(can_produce_F workshop3)
	(can_produce_H workshop7)
	(can_produce_K workshop8)
	(can_produce_L workshop11)
	(can_produce_M workshop9)
	(can_supply_D supplier3)
	(can_supply_E supplier10)
	(can_supply_G supplier7)
	(can_supply_I supplier11)
	(can_supply_J supplier9)
	(can_supply_N supplier8)
	(can_supply_O supplier13)
	(can_supply_P supplier2)
	(can_supply_Q supplier5)
	(can_supply_R supplier12)
	(can_supply_S supplier0)
	(at supplier7)
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
	(= (item-goal A) 13)
	(= (item-goal B) 12)
	(= (item-goal C) 13)
	(= (item-goal D) 6)
	(= (item-goal E) 6)
	(= (item-goal F) 13)
	(= (item-goal G) 13)
	(= (item-goal H) 5)
	(= (item-goal I) 9)
	(= (item-goal J) 14)
	(= (item-goal K) 2)
	(= (item-goal L) 9)
	(= (item-goal M) 1)
	(= (item-goal N) 12)
	(= (item-goal O) 12)
	(= (item-goal P) 13)
	(= (item-goal Q) 7)
	(= (item-goal R) 12)
	(= (item-goal S) 7)
)
(:goal (and
	(delivered R customer0)
	(delivered I customer1)
	(delivered D customer2)
	(delivered F customer3)
	(delivered M customer4)
	(delivered L customer5)
	(delivered B customer6)
	(delivered O customer7)
	(delivered Q customer8)
	(delivered K customer9)
	(delivered C customer10)
	(delivered E customer11)
	(delivered P customer12)
	(delivered N customer13)
))
)

