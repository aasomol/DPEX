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
	(= (delta) 0)
)
(:init
	(= (max_int) 8)
	(= (value counter0) 0)
	(= (value counter1) 8)
	(= (value counter2) 6)
	(= (value counter3) 3)
)
(:goal (and
	(<= (+ (value counter0) 1) (value counter1))
	(<= (+ (value counter1) 1) (value counter2))
	(<= (+ (value counter2) 1) (value counter3))
))
)

