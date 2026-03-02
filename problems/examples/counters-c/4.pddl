(define (problem counters)
(:domain counters)
(:objects 
	counter0 - counter
	counter1 - counter
	counter2 - counter
	counter3 - counter
)
(:bounds 
	(<= (delta) 8)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 3)
)
(:init
	(= (max_int) 8)
	(= (value counter0) 8)
	(= (value counter1) 5)
	(= (value counter2) 2)
	(= (value counter3) 2)
)
(:goal (and
	(<= (+ (value counter0) 1) (value counter1))
	(<= (+ (value counter1) 1) (value counter2))
	(<= (+ (value counter2) 1) (value counter3))
))
)

