(define (problem blockgrouping)
(:domain blockgrouping)
(:objects 
	b0 - block
	b1 - block
	b2 - block
	b3 - block
	b4 - block
)
(:bounds 
	(<= (delta) 19)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (x b0) 15)
	(= (y b0) 16)
	(= (x b1) 18)
	(= (y b1) 10)
	(= (x b2) 2)
	(= (y b2) 3)
	(= (x b3) 15)
	(= (y b3) 5)
	(= (x b4) 13)
	(= (y b4) 19)
	(= (max_x) 20)
	(= (min_x) 0)
	(= (max_y) 20)
	(= (min_y) 0)
)
(:goal (and
	(= (x b0) (x b4))
	(= (y b0) (y b4))
	(= (x b1) (x b2))
	(= (y b1) (y b2))
))
)

