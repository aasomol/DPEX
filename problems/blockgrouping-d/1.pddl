(define (problem blockgrouping)
(:domain blockgrouping)
(:objects 
	b0 - block
	b1 - block
	b2 - block
	b3 - block
	b4 - block
	b5 - block
	b6 - block
	b7 - block
	b8 - block
	b9 - block
)
(:bounds 
	(<= (delta) 19)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (x b0) 18)
	(= (y b0) 3)
	(= (x b1) 16)
	(= (y b1) 6)
	(= (x b2) 17)
	(= (y b2) 1)
	(= (x b3) 12)
	(= (y b3) 13)
	(= (x b4) 19)
	(= (y b4) 8)
	(= (x b5) 3)
	(= (y b5) 13)
	(= (x b6) 13)
	(= (y b6) 4)
	(= (x b7) 2)
	(= (y b7) 4)
	(= (x b8) 7)
	(= (y b8) 13)
	(= (x b9) 4)
	(= (y b9) 14)
	(= (max_x) 20)
	(= (min_x) 0)
	(= (max_y) 20)
	(= (min_y) 0)
)
(:goal (and
	(= (x b0) (x b1))
	(= (y b0) (y b1))
	(= (x b0) (x b2))
	(= (y b0) (y b2))
	(= (x b0) (x b5))
	(= (y b0) (y b5))
	(= (x b1) (x b2))
	(= (y b1) (y b2))
	(= (x b1) (x b5))
	(= (y b1) (y b5))
	(= (x b2) (x b5))
	(= (y b2) (y b5))
	(= (x b3) (x b4))
	(= (y b3) (y b4))
	(= (x b3) (x b6))
	(= (y b3) (y b6))
	(= (x b4) (x b6))
	(= (y b4) (y b6))
	(= (x b7) (x b8))
	(= (y b7) (y b8))
))
)

