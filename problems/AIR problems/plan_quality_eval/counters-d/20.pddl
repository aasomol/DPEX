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
)
(:bounds 
	(<= (delta) 22)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 0)
)
(:init
	(= (max_int) 22)
	(= (value counter0) 12)
	(= (value counter1) 5)
	(= (value counter2) 22)
	(= (value counter3) 6)
	(= (value counter4) 5)
	(= (value counter5) 18)
	(= (value counter6) 11)
	(= (value counter7) 15)
	(= (value counter8) 22)
	(= (value counter9) 18)
	(= (value counter10) 13)
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
))
)

