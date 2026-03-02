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
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop7)
	(can_produce_B workshop8)
	(can_produce_C workshop5)
	(can_produce_F workshop1)
	(can_produce_H workshop4)
	(can_produce_K workshop9)
	(can_produce_L workshop5)
	(can_produce_M workshop5)
	(can_supply_D supplier1)
	(can_supply_E supplier6)
	(can_supply_G supplier6)
	(can_supply_I supplier5)
	(can_supply_J supplier9)
	(can_supply_N supplier7)
	(can_supply_O supplier6)
	(can_supply_P supplier10)
	(can_supply_Q supplier9)
	(can_supply_R supplier8)
	(can_supply_S supplier3)
	(at workshop4)
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
	(= (item-goal A) 8)
	(= (item-goal B) 14)
	(= (item-goal C) 13)
	(= (item-goal D) 7)
	(= (item-goal E) 14)
	(= (item-goal F) 11)
	(= (item-goal G) 4)
	(= (item-goal H) 12)
	(= (item-goal I) 11)
	(= (item-goal J) 11)
	(= (item-goal K) 3)
	(= (item-goal L) 5)
	(= (item-goal M) 5)
	(= (item-goal N) 13)
	(= (item-goal O) 13)
	(= (item-goal P) 4)
	(= (item-goal Q) 4)
	(= (item-goal R) 7)
	(= (item-goal S) 7)
)
(:goal (and
	(delivered N customer0)
	(delivered B customer1)
	(delivered C customer2)
	(delivered K customer3)
	(delivered F customer4)
	(delivered A customer5)
	(delivered R customer6)
	(delivered L customer7)
	(delivered Q customer8)
	(delivered G customer9)
	(delivered E customer10)
))
)

