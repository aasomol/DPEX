(define (domain counters)
    
    (:types counter)

    (:input 
        (delta)
    )

    (:functions
        (value ?c - counter)
        (max_int)
    )

    ;; Increment the value in the given counter 
    (:action increment
         :parameters (?c - counter)
         :precondition (and (<= (+ (value ?c) (delta)) (max_int)))
         :effect (and (increase (value ?c) (delta)))
    )

    ;; Decrement the value in the given counter
    (:action decrement
         :parameters (?c - counter)
         :precondition (and (>= (value ?c) (delta)))
         :effect (and (decrease (value ?c) (delta)))
    )
)
