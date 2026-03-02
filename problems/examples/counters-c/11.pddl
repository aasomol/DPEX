(define (problem counters)
(:domain counters)
(:objects 
	counter0 - counter
	counter1 - counter
	counter2 - counter
	counter3 - counter
	counter4 - counter
	counter5 - counter
	counter6 - counter
	counter7 - counter
)
(:bounds 
	(<= (delta) 16)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 3)
)
(:init
	(= (max_int) 16)
	(= (value counter0) 3)
	(= (value counter1) 15)
	(= (value counter2) 5)
	(= (value counter3) 1)
	(= (value counter4) 9)
	(= (value counter5) 2)
	(= (value counter6) 4)
	(= (value counter7) 8)
)
(:goal (and
	(<= (+ (value counter0) 1) (value counter1))
	(<= (+ (value counter1) 1) (value counter2))
	(<= (+ (value counter2) 1) (value counter3))
	(<= (+ (value counter3) 1) (value counter4))
	(<= (+ (value counter4) 1) (value counter5))
	(<= (+ (value counter5) 1) (value counter6))
	(<= (+ (value counter6) 1) (value counter7))
))
)

