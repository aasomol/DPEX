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
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 3)
)
(:init
	(can_produce_A workshop4)
	(can_produce_B workshop6)
	(can_produce_C workshop2)
	(can_produce_F workshop4)
	(can_produce_H workshop9)
	(can_produce_K workshop8)
	(can_produce_L workshop1)
	(can_produce_M workshop9)
	(can_supply_D supplier6)
	(can_supply_E supplier5)
	(can_supply_G supplier4)
	(can_supply_I supplier3)
	(can_supply_J supplier6)
	(can_supply_N supplier10)
	(can_supply_O supplier2)
	(can_supply_P supplier6)
	(can_supply_Q supplier9)
	(can_supply_R supplier0)
	(can_supply_S supplier2)
	(at supplier6)
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
	(= (item-goal A) 4)
	(= (item-goal B) 7)
	(= (item-goal C) 5)
	(= (item-goal D) 7)
	(= (item-goal E) 6)
	(= (item-goal F) 3)
	(= (item-goal G) 7)
	(= (item-goal H) 3)
	(= (item-goal I) 9)
	(= (item-goal J) 4)
	(= (item-goal K) 14)
	(= (item-goal L) 13)
	(= (item-goal M) 2)
	(= (item-goal N) 12)
	(= (item-goal O) 10)
	(= (item-goal P) 11)
	(= (item-goal Q) 1)
	(= (item-goal R) 4)
	(= (item-goal S) 1)
)
(:goal (and
	(delivered L customer0)
	(delivered C customer1)
	(delivered S customer2)
	(delivered K customer3)
	(delivered P customer4)
	(delivered R customer5)
	(delivered G customer6)
	(delivered I customer7)
	(delivered M customer8)
	(delivered H customer9)
	(delivered F customer10)
))
)

