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
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 3)
)
(:init
	(can_produce_A workshop2)
	(can_produce_B workshop9)
	(can_produce_C workshop5)
	(can_produce_F workshop0)
	(can_produce_H workshop8)
	(can_produce_K workshop8)
	(can_produce_L workshop6)
	(can_produce_M workshop0)
	(can_supply_D supplier6)
	(can_supply_E supplier0)
	(can_supply_G supplier3)
	(can_supply_I supplier1)
	(can_supply_J supplier8)
	(can_supply_N supplier4)
	(can_supply_O supplier8)
	(can_supply_P supplier3)
	(can_supply_Q supplier9)
	(can_supply_R supplier7)
	(can_supply_S supplier3)
	(at customer2)
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
	(= (item-goal A) 2)
	(= (item-goal B) 4)
	(= (item-goal C) 13)
	(= (item-goal D) 8)
	(= (item-goal E) 11)
	(= (item-goal F) 1)
	(= (item-goal G) 10)
	(= (item-goal H) 5)
	(= (item-goal I) 9)
	(= (item-goal J) 5)
	(= (item-goal K) 12)
	(= (item-goal L) 4)
	(= (item-goal M) 9)
	(= (item-goal N) 5)
	(= (item-goal O) 14)
	(= (item-goal P) 1)
	(= (item-goal Q) 8)
	(= (item-goal R) 10)
	(= (item-goal S) 14)
)
(:goal (and
	(delivered P customer0)
	(delivered R customer1)
	(delivered M customer2)
	(delivered L customer3)
	(delivered I customer4)
	(delivered J customer5)
	(delivered E customer6)
	(delivered N customer7)
	(delivered A customer8)
	(delivered O customer9)
))
)

