(define (problem counters)
(:domain counters)
(:objects 
	counter0 - counter
	counter1 - counter
	counter2 - counter
	counter3 - counter
	counter4 - counter
)
(:bounds 
	(<= (delta) 10)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (max_int) 10)
	(= (value counter0) 7)
	(= (value counter1) 8)
	(= (value counter2) 11)
	(= (value counter3) 8)
	(= (value counter4) 4)
)
(:goal (and
	(<= (+ (value counter0) 1) (value counter1))
	(<= (+ (value counter1) 1) (value counter2))
	(<= (+ (value counter2) 1) (value counter3))
	(<= (+ (value counter3) 1) (value counter4))
))
)

