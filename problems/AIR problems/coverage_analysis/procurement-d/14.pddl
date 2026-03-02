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
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop1)
	(can_produce_B workshop0)
	(can_produce_C workshop11)
	(can_produce_F workshop8)
	(can_produce_H workshop6)
	(can_produce_K workshop11)
	(can_produce_L workshop9)
	(can_produce_M workshop8)
	(can_supply_D supplier4)
	(can_supply_E supplier5)
	(can_supply_G supplier0)
	(can_supply_I supplier1)
	(can_supply_J supplier6)
	(can_supply_N supplier11)
	(can_supply_O supplier10)
	(can_supply_P supplier4)
	(can_supply_Q supplier10)
	(can_supply_R supplier10)
	(can_supply_S supplier1)
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
	(= (item-goal A) 3)
	(= (item-goal B) 12)
	(= (item-goal C) 2)
	(= (item-goal D) 6)
	(= (item-goal E) 12)
	(= (item-goal F) 7)
	(= (item-goal G) 5)
	(= (item-goal H) 12)
	(= (item-goal I) 6)
	(= (item-goal J) 2)
	(= (item-goal K) 12)
	(= (item-goal L) 13)
	(= (item-goal M) 2)
	(= (item-goal N) 9)
	(= (item-goal O) 5)
	(= (item-goal P) 4)
	(= (item-goal Q) 4)
	(= (item-goal R) 5)
	(= (item-goal S) 8)
)
(:goal (and
	(delivered B customer0)
	(delivered L customer1)
	(delivered F customer2)
	(delivered P customer3)
	(delivered H customer4)
	(delivered M customer5)
	(delivered S customer6)
	(delivered K customer7)
	(delivered I customer8)
	(delivered Q customer9)
	(delivered R customer10)
	(delivered N customer11)
	(delivered O customer12)
))
)

