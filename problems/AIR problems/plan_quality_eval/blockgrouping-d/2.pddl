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
)
(:bounds 
	(<= (delta) 19)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (x b0) 11)
	(= (y b0) 9)
	(= (x b1) 10)
	(= (y b1) 7)
	(= (x b2) 10)
	(= (y b2) 20)
	(= (x b3) 16)
	(= (y b3) 16)
	(= (x b4) 13)
	(= (y b4) 16)
	(= (x b5) 5)
	(= (y b5) 12)
	(= (x b6) 3)
	(= (y b6) 16)
	(= (max_x) 20)
	(= (min_x) 0)
	(= (max_y) 20)
	(= (min_y) 0)
)
(:goal (and
	(= (x b0) (x b1))
	(= (y b0) (y b1))
	(= (x b2) (x b6))
	(= (y b2) (y b6))
	(= (x b3) (x b4))
	(= (y b3) (y b4))
))
)

