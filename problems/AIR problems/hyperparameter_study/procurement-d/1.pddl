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
	customer0 - customer
	workshop0 - workshop
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
	(can_produce_B workshop0)
	(can_produce_C workshop0)
	(can_produce_F workshop0)
	(can_produce_H workshop0)
	(can_produce_K workshop0)
	(can_produce_L workshop0)
	(can_produce_M workshop0)
	(can_supply_D supplier0)
	(can_supply_E supplier0)
	(can_supply_G supplier0)
	(can_supply_I supplier0)
	(can_supply_J supplier0)
	(can_supply_N supplier0)
	(can_supply_O supplier0)
	(can_supply_P supplier0)
	(can_supply_Q supplier0)
	(can_supply_R supplier0)
	(can_supply_S supplier0)
	(at workshop0)
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
	(= (item-goal A) 10)
	(= (item-goal B) 2)
	(= (item-goal C) 9)
	(= (item-goal D) 11)
	(= (item-goal E) 10)
	(= (item-goal F) 12)
	(= (item-goal G) 14)
	(= (item-goal H) 2)
	(= (item-goal I) 14)
	(= (item-goal J) 1)
	(= (item-goal K) 2)
	(= (item-goal L) 10)
	(= (item-goal M) 6)
	(= (item-goal N) 14)
	(= (item-goal O) 14)
	(= (item-goal P) 6)
	(= (item-goal Q) 6)
	(= (item-goal R) 13)
	(= (item-goal S) 10)
)
(:goal (and
	(delivered O customer0)
))
)

