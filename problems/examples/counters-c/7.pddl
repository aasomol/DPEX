(define (problem counters)
(:domain counters)
(:objects 
	counter0 - counter
	counter1 - counter
	counter2 - counter
	counter3 - counter
	counter4 - counter
	counter5 - counter
)
(:bounds 
	(<= (delta) 12)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 3)
)
(:init
	(= (max_int) 12)
	(= (value counter0) 8)
	(= (value counter1) 6)
	(= (value counter2) 11)
	(= (value counter3) 12)
	(= (value counter4) 9)
	(= (value counter5) 12)
)
(:goal (and
	(<= (+ (value counter0) 1) (value counter1))
	(<= (+ (value counter1) 1) (value counter2))
	(<= (+ (value counter2) 1) (value counter3))
	(<= (+ (value counter3) 1) (value counter4))
	(<= (+ (value counter4) 1) (value counter5))
))
)

