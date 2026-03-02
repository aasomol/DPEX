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
	(= (x b0) 16)
	(= (y b0) 6)
	(= (x b1) 8)
	(= (y b1) 11)
	(= (x b2) 17)
	(= (y b2) 9)
	(= (x b3) 9)
	(= (y b3) 20)
	(= (x b4) 1)
	(= (y b4) 1)
	(= (x b5) 5)
	(= (y b5) 10)
	(= (x b6) 16)
	(= (y b6) 5)
	(= (x b7) 7)
	(= (y b7) 2)
	(= (x b8) 18)
	(= (y b8) 19)
	(= (x b9) 2)
	(= (y b9) 1)
	(= (max_x) 20)
	(= (min_x) 0)
	(= (max_y) 20)
	(= (min_y) 0)
)
(:goal (and
	(= (x b0) (x b8))
	(= (y b0) (y b8))
	(= (x b1) (x b3))
	(= (y b1) (y b3))
	(= (x b1) (x b4))
	(= (y b1) (y b4))
	(= (x b1) (x b7))
	(= (y b1) (y b7))
	(= (x b2) (x b5))
	(= (y b2) (y b5))
	(= (x b2) (x b9))
	(= (y b2) (y b9))
	(= (x b3) (x b4))
	(= (y b3) (y b4))
	(= (x b3) (x b7))
	(= (y b3) (y b7))
	(= (x b4) (x b7))
	(= (y b4) (y b7))
	(= (x b5) (x b9))
	(= (y b5) (y b9))
))
)

