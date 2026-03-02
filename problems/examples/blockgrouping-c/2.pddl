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
	(= (delta) 3)
)
(:init
	(= (x b0) 4)
	(= (y b0) 7)
	(= (x b1) 13)
	(= (y b1) 4)
	(= (x b2) 14)
	(= (y b2) 2)
	(= (x b3) 20)
	(= (y b3) 1)
	(= (x b4) 18)
	(= (y b4) 17)
	(= (x b5) 3)
	(= (y b5) 7)
	(= (x b6) 7)
	(= (y b6) 1)
	(= (max_x) 20)
	(= (min_x) 0)
	(= (max_y) 20)
	(= (min_y) 0)
)
(:goal (and
	(<= (- (x b0) (x b6)) 0.2)
	(>= (- (x b0) (x b6)) -0.2)
	(<= (- (y b0) (y b6)) 0.2)
	(>= (- (y b0) (y b6)) -0.2)

	(<= (- (x b1) (x b2)) 0.2)
	(>= (- (x b1) (x b2)) -0.2)
	(<= (- (y b1) (y b2)) 0.2)
	(>= (- (y b1) (y b2)) -0.2)

	(<= (- (x b4) (x b5)) 0.2)
	(>= (- (x b4) (x b5)) -0.2)
	(<= (- (y b4) (y b5)) 0.2)
	(>= (- (y b4) (y b5)) -0.2)

))
)

