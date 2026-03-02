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
	customer0 - customer
	customer1 - customer
	customer2 - customer
	customer3 - customer
	customer4 - customer
	customer5 - customer
	customer6 - customer
	customer7 - customer
	customer8 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
	workshop4 - workshop
	workshop5 - workshop
	workshop6 - workshop
	workshop7 - workshop
	workshop8 - workshop
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop0)
	(can_produce_B workshop2)
	(can_produce_C workshop2)
	(can_produce_F workshop2)
	(can_produce_H workshop3)
	(can_produce_K workshop7)
	(can_produce_L workshop8)
	(can_produce_M workshop7)
	(can_supply_D supplier3)
	(can_supply_E supplier6)
	(can_supply_G supplier2)
	(can_supply_I supplier2)
	(can_supply_J supplier5)
	(can_supply_N supplier0)
	(can_supply_O supplier2)
	(can_supply_P supplier0)
	(can_supply_Q supplier1)
	(can_supply_R supplier8)
	(can_supply_S supplier4)
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
	(= (item-goal A) 4)
	(= (item-goal B) 8)
	(= (item-goal C) 11)
	(= (item-goal D) 6)
	(= (item-goal E) 3)
	(= (item-goal F) 12)
	(= (item-goal G) 8)
	(= (item-goal H) 7)
	(= (item-goal I) 3)
	(= (item-goal J) 7)
	(= (item-goal K) 3)
	(= (item-goal L) 4)
	(= (item-goal M) 4)
	(= (item-goal N) 10)
	(= (item-goal O) 2)
	(= (item-goal P) 6)
	(= (item-goal Q) 3)
	(= (item-goal R) 14)
	(= (item-goal S) 13)
)
(:goal (and
	(delivered M customer0)
	(delivered G customer1)
	(delivered B customer2)
	(delivered Q customer3)
	(delivered D customer4)
	(delivered A customer5)
	(delivered S customer6)
	(delivered K customer7)
	(delivered N customer8)
))
)

