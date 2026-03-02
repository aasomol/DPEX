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
	b10 - block
	b11 - block
	b12 - block
)
(:bounds 
	(<= (delta) 19)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (x b0) 14)
	(= (y b0) 20)
	(= (x b1) 7)
	(= (y b1) 20)
	(= (x b2) 4)
	(= (y b2) 8)
	(= (x b3) 11)
	(= (y b3) 8)
	(= (x b4) 9)
	(= (y b4) 6)
	(= (x b5) 12)
	(= (y b5) 2)
	(= (x b6) 16)
	(= (y b6) 12)
	(= (x b7) 15)
	(= (y b7) 13)
	(= (x b8) 1)
	(= (y b8) 16)
	(= (x b9) 19)
	(= (y b9) 3)
	(= (x b10) 6)
	(= (y b10) 9)
	(= (x b11) 20)
	(= (y b11) 18)
	(= (x b12) 6)
	(= (y b12) 14)
	(= (max_x) 20)
	(= (min_x) 0)
	(= (max_y) 20)
	(= (min_y) 0)
)
(:goal (and
	(= (x b0) (x b2))
	(= (y b0) (y b2))
	(= (x b0) (x b6))
	(= (y b0) (y b6))
	(= (x b0) (x b12))
	(= (y b0) (y b12))
	(= (x b1) (x b3))
	(= (y b1) (y b3))
	(= (x b2) (x b6))
	(= (y b2) (y b6))
	(= (x b2) (x b12))
	(= (y b2) (y b12))
	(= (x b4) (x b7))
	(= (y b4) (y b7))
	(= (x b4) (x b9))
	(= (y b4) (y b9))
	(= (x b4) (x b11))
	(= (y b4) (y b11))
	(= (x b5) (x b8))
	(= (y b5) (y b8))
	(= (x b5) (x b10))
	(= (y b5) (y b10))
	(= (x b6) (x b12))
	(= (y b6) (y b12))
	(= (x b7) (x b9))
	(= (y b7) (y b9))
	(= (x b7) (x b11))
	(= (y b7) (y b11))
	(= (x b8) (x b10))
	(= (y b8) (y b10))
	(= (x b9) (x b11))
	(= (y b9) (y b11))
))
)

