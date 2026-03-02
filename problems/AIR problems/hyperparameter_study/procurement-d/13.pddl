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
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop11)
	(can_produce_B workshop8)
	(can_produce_C workshop5)
	(can_produce_F workshop9)
	(can_produce_H workshop6)
	(can_produce_K workshop4)
	(can_produce_L workshop1)
	(can_produce_M workshop2)
	(can_supply_D supplier11)
	(can_supply_E supplier2)
	(can_supply_G supplier11)
	(can_supply_I supplier0)
	(can_supply_J supplier9)
	(can_supply_N supplier11)
	(can_supply_O supplier1)
	(can_supply_P supplier7)
	(can_supply_Q supplier3)
	(can_supply_R supplier8)
	(can_supply_S supplier0)
	(at workshop1)
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
	(= (item-goal A) 11)
	(= (item-goal B) 13)
	(= (item-goal C) 14)
	(= (item-goal D) 7)
	(= (item-goal E) 11)
	(= (item-goal F) 6)
	(= (item-goal G) 2)
	(= (item-goal H) 5)
	(= (item-goal I) 6)
	(= (item-goal J) 6)
	(= (item-goal K) 12)
	(= (item-goal L) 14)
	(= (item-goal M) 11)
	(= (item-goal N) 9)
	(= (item-goal O) 2)
	(= (item-goal P) 2)
	(= (item-goal Q) 1)
	(= (item-goal R) 12)
	(= (item-goal S) 11)
)
(:goal (and
	(delivered Q customer0)
	(delivered M customer1)
	(delivered L customer2)
	(delivered E customer3)
	(delivered I customer4)
	(delivered S customer5)
	(delivered C customer6)
	(delivered F customer7)
	(delivered J customer8)
	(delivered N customer9)
	(delivered O customer10)
	(delivered A customer11)
))
)

