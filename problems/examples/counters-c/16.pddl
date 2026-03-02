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
)
(:bounds 
	(<= (delta) 20)
	(>= (delta) 0)
)
(:precision 
	(= (delta) 3)
)
(:init
	(= (max_int) 20)
	(= (value counter0) 14)
	(= (value counter1) 20)
	(= (value counter2) 15)
	(= (value counter3) 5)
	(= (value counter4) 19)
	(= (value counter5) 6)
	(= (value counter6) 20)
	(= (value counter7) 17)
	(= (value counter8) 10)
	(= (value counter9) 16)
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
))
)

