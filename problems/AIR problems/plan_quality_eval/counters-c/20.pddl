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
	counter8 - counter
	counter9 - counter
	counter10 - counter
	counter11 - counter
)
(:bounds 
	(<= (delta) 24)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 3)
)
(:init
	(= (max_int) 24)
	(= (value counter0) 4)
	(= (value counter1) 5)
	(= (value counter2) 4)
	(= (value counter3) 13)
	(= (value counter4) 12)
	(= (value counter5) 12)
	(= (value counter6) 16)
	(= (value counter7) 13)
	(= (value counter8) 5)
	(= (value counter9) 19)
	(= (value counter10) 24)
	(= (value counter11) 24)
)
(:goal (and
	(<= (+ (value counter0) 1) (value counter1))
	(<= (+ (value counter1) 1) (value counter2))
	(<= (+ (value counter2) 1) (value counter3))
	(<= (+ (value counter3) 1) (value counter4))
	(<= (+ (value counter4) 1) (value counter5))
	(<= (+ (value counter5) 1) (value counter6))
	(<= (+ (value counter6) 1) (value counter7))
	(<= (+ (value counter7) 1) (value counter8))
	(<= (+ (value counter8) 1) (value counter9))
	(<= (+ (value counter9) 1) (value counter10))
	(<= (+ (value counter10) 1) (value counter11))
))
)

