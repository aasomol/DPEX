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
	(= (batchsize) 0)
)
(:init
	(can_produce_A workshop5)
	(can_produce_B workshop7)
	(can_produce_C workshop0)
	(can_produce_F workshop3)
	(can_produce_H workshop3)
	(can_produce_K workshop1)
	(can_produce_L workshop5)
	(can_produce_M workshop0)
	(can_supply_D supplier0)
	(can_supply_E supplier5)
	(can_supply_G supplier9)
	(can_supply_I supplier2)
	(can_supply_J supplier7)
	(can_supply_N supplier9)
	(can_supply_O supplier2)
	(can_supply_P supplier3)
	(can_supply_Q supplier5)
	(can_supply_R supplier9)
	(can_supply_S supplier8)
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
	(= (item-goal A) 4)
	(= (item-goal B) 14)
	(= (item-goal C) 12)
	(= (item-goal D) 9)
	(= (item-goal E) 2)
	(= (item-goal F) 6)
	(= (item-goal G) 11)
	(= (item-goal H) 8)
	(= (item-goal I) 4)
	(= (item-goal J) 3)
	(= (item-goal K) 2)
	(= (item-goal L) 14)
	(= (item-goal M) 4)
	(= (item-goal N) 13)
	(= (item-goal O) 9)
	(= (item-goal P) 1)
	(= (item-goal Q) 1)
	(= (item-goal R) 12)
	(= (item-goal S) 9)
)
(:goal (and
	(delivered P customer0)
	(delivered D customer1)
	(delivered S customer2)
	(delivered M customer3)
	(delivered K customer4)
	(delivered H customer5)
	(delivered Q customer6)
	(delivered J customer7)
	(delivered A customer8)
	(delivered O customer9)
))
)

