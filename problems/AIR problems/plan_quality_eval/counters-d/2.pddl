(define (problem counters)
(:domain counters)
(:objects 
	counter0 - counter
	counter1 - counter
)
(:bounds 
	(<= (delta) 4)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (max_int) 4)
	(= (value counter0) 2)
	(= (value counter1) 2)
)
(:goal (and
	(<= (+ (value counter0) 1) (value counter1))
))
)

