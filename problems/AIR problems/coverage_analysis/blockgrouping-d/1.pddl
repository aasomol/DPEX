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
	(= (x b0) 5)
	(= (y b0) 14)
	(= (x b1) 5)
	(= (y b1) 17)
	(= (x b2) 9)
	(= (y b2) 1)
	(= (x b3) 12)
	(= (y b3) 15)
	(= (x b4) 16)
	(= (y b4) 16)
	(= (x b5) 5)
	(= (y b5) 20)
	(= (x b6) 18)
	(= (y b6) 17)
	(= (x b7) 2)
	(= (y b7) 2)
	(= (x b8) 5)
	(= (y b8) 5)
	(= (x b9) 8)
	(= (y b9) 3)
	(= (max_x) 20)
	(= (min_x) 0)
	(= (max_y) 20)
	(= (min_y) 0)
)
(:goal (and
	(= (x b0) (x b2))
	(= (y b0) (y b2))
	(= (x b0) (x b5))
	(= (y b0) (y b5))
	(= (x b0) (x b7))
	(= (y b0) (y b7))
	(= (x b0) (x b9))
	(= (y b0) (y b9))
	(= (x b2) (x b5))
	(= (y b2) (y b5))
	(= (x b2) (x b7))
	(= (y b2) (y b7))
	(= (x b2) (x b9))
	(= (y b2) (y b9))
	(= (x b3) (x b4))
	(= (y b3) (y b4))
	(= (x b5) (x b7))
	(= (y b5) (y b7))
	(= (x b5) (x b9))
	(= (y b5) (y b9))
	(= (x b6) (x b8))
	(= (y b6) (y b8))
	(= (x b7) (x b9))
	(= (y b7) (y b9))
))
)

