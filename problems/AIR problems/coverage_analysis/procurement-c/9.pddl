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
	customer0 - customer
	customer1 - customer
	customer2 - customer
	customer3 - customer
	customer4 - customer
	customer5 - customer
	customer6 - customer
	customer7 - customer
	workshop0 - workshop
	workshop1 - workshop
	workshop2 - workshop
	workshop3 - workshop
	workshop4 - workshop
	workshop5 - workshop
	workshop6 - workshop
	workshop7 - workshop
)
(:bounds
	(<= (batchsize) 100)
	(>= (batchsize) 0)
)
(:precision 
	(= (batchsize) 3)
)
(:init
	(can_produce_A workshop7)
	(can_produce_B workshop2)
	(can_produce_C workshop3)
	(can_produce_F workshop3)
	(can_produce_H workshop7)
	(can_produce_K workshop5)
	(can_produce_L workshop4)
	(can_produce_M workshop1)
	(can_supply_D supplier6)
	(can_supply_E supplier0)
	(can_supply_G supplier5)
	(can_supply_I supplier7)
	(can_supply_J supplier6)
	(can_supply_N supplier6)
	(can_supply_O supplier6)
	(can_supply_P supplier6)
	(can_supply_Q supplier6)
	(can_supply_R supplier3)
	(can_supply_S supplier4)
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
	(= (item-goal B) 13)
	(= (item-goal C) 5)
	(= (item-goal D) 4)
	(= (item-goal E) 4)
	(= (item-goal F) 7)
	(= (item-goal G) 5)
	(= (item-goal H) 9)
	(= (item-goal I) 4)
	(= (item-goal J) 4)
	(= (item-goal K) 1)
	(= (item-goal L) 14)
	(= (item-goal M) 12)
	(= (item-goal N) 1)
	(= (item-goal O) 14)
	(= (item-goal P) 14)
	(= (item-goal Q) 8)
	(= (item-goal R) 1)
	(= (item-goal S) 4)
)
(:goal (and
	(delivered C customer0)
	(delivered F customer1)
	(delivered N customer2)
	(delivered H customer3)
	(delivered A customer4)
	(delivered K customer5)
	(delivered L customer6)
	(delivered D customer7)
))
)

