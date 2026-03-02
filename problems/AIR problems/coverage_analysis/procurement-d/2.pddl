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
	customer0 - customer
	customer1 - customer
	workshop0 - workshop
	workshop1 - workshop
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
	(can_produce_B workshop1)
	(can_produce_C workshop1)
	(can_produce_F workshop0)
	(can_produce_H workshop1)
	(can_produce_K workshop1)
	(can_produce_L workshop0)
	(can_produce_M workshop1)
	(can_supply_D supplier1)
	(can_supply_E supplier0)
	(can_supply_G supplier1)
	(can_supply_I supplier0)
	(can_supply_J supplier1)
	(can_supply_N supplier1)
	(can_supply_O supplier1)
	(can_supply_P supplier0)
	(can_supply_Q supplier0)
	(can_supply_R supplier1)
	(can_supply_S supplier1)
	(at customer0)
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
	(= (item-goal B) 4)
	(= (item-goal C) 9)
	(= (item-goal D) 3)
	(= (item-goal E) 6)
	(= (item-goal F) 7)
	(= (item-goal G) 6)
	(= (item-goal H) 4)
	(= (item-goal I) 12)
	(= (item-goal J) 14)
	(= (item-goal K) 2)
	(= (item-goal L) 13)
	(= (item-goal M) 3)
	(= (item-goal N) 8)
	(= (item-goal O) 8)
	(= (item-goal P) 5)
	(= (item-goal Q) 8)
	(= (item-goal R) 2)
	(= (item-goal S) 4)
)
(:goal (and
	(delivered Q customer0)
	(delivered D customer1)
))
)

