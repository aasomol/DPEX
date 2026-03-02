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
	(= (batchsize) 3)
)
(:init
	(can_produce_A workshop13)
	(can_produce_B workshop6)
	(can_produce_C workshop2)
	(can_produce_F workshop10)
	(can_produce_H workshop4)
	(can_produce_K workshop13)
	(can_produce_L workshop13)
	(can_produce_M workshop7)
	(can_supply_D supplier0)
	(can_supply_E supplier6)
	(can_supply_G supplier4)
	(can_supply_I supplier6)
	(can_supply_J supplier5)
	(can_supply_N supplier11)
	(can_supply_O supplier6)
	(can_supply_P supplier2)
	(can_supply_Q supplier6)
	(can_supply_R supplier7)
	(can_supply_S supplier6)
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
	(= (item-goal A) 12)
	(= (item-goal B) 2)
	(= (item-goal C) 8)
	(= (item-goal D) 14)
	(= (item-goal E) 3)
	(= (item-goal F) 1)
	(= (item-goal G) 3)
	(= (item-goal H) 11)
	(= (item-goal I) 8)
	(= (item-goal J) 6)
	(= (item-goal K) 9)
	(= (item-goal L) 6)
	(= (item-goal M) 3)
	(= (item-goal N) 2)
	(= (item-goal O) 8)
	(= (item-goal P) 14)
	(= (item-goal Q) 14)
	(= (item-goal R) 11)
	(= (item-goal S) 9)
)
(:goal (and
	(delivered O customer0)
	(delivered M customer1)
	(delivered A customer2)
	(delivered B customer3)
	(delivered H customer4)
	(delivered N customer5)
	(delivered Q customer6)
	(delivered I customer7)
	(delivered K customer8)
	(delivered C customer9)
	(delivered G customer10)
	(delivered P customer11)
	(delivered E customer12)
	(delivered J customer13)
))
)

