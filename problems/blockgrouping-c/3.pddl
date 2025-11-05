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
	(= (delta) 3)
)
(:init
	(= (x b0) 7)
	(= (y b0) 4)
	(= (x b1) 8)
	(= (y b1) 20)
	(= (x b2) 2)
	(= (y b2) 4)
	(= (x b3) 5)
	(= (y b3) 18)
	(= (x b4) 12)
	(= (y b4) 3)
	(= (x b5) 19)
	(= (y b5) 15)
	(= (x b6) 9)
	(= (y b6) 15)
	(= (x b7) 19)
	(= (y b7) 6)
	(= (x b8) 11)
	(= (y b8) 17)
	(= (x b9) 15)
	(= (y b9) 18)
	(= (max_x) 20)
	(= (min_x) 0)
	(= (max_y) 20)
	(= (min_y) 0)
)
(:goal (and
	(<= (- (x b0) (x b1)) 0.2)
	(>= (- (x b0) (x b1)) -0.2)
	(<= (- (y b0) (y b1)) 0.2)
	(>= (- (y b0) (y b1)) -0.2)

	(<= (- (x b0) (x b3)) 0.2)
	(>= (- (x b0) (x b3)) -0.2)
	(<= (- (y b0) (y b3)) 0.2)
	(>= (- (y b0) (y b3)) -0.2)

	(<= (- (x b1) (x b3)) 0.2)
	(>= (- (x b1) (x b3)) -0.2)
	(<= (- (y b1) (y b3)) 0.2)
	(>= (- (y b1) (y b3)) -0.2)

	(<= (- (x b2) (x b4)) 0.2)
	(>= (- (x b2) (x b4)) -0.2)
	(<= (- (y b2) (y b4)) 0.2)
	(>= (- (y b2) (y b4)) -0.2)

	(<= (- (x b5) (x b7)) 0.2)
	(>= (- (x b5) (x b7)) -0.2)
	(<= (- (y b5) (y b7)) 0.2)
	(>= (- (y b5) (y b7)) -0.2)

	(<= (- (x b5) (x b9)) 0.2)
	(>= (- (x b5) (x b9)) -0.2)
	(<= (- (y b5) (y b9)) 0.2)
	(>= (- (y b5) (y b9)) -0.2)

	(<= (- (x b6) (x b8)) 0.2)
	(>= (- (x b6) (x b8)) -0.2)
	(<= (- (y b6) (y b8)) 0.2)
	(>= (- (y b6) (y b8)) -0.2)

	(<= (- (x b7) (x b9)) 0.2)
	(>= (- (x b7) (x b9)) -0.2)
	(<= (- (y b7) (y b9)) 0.2)
	(>= (- (y b7) (y b9)) -0.2)

))
)

