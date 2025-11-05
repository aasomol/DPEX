(define (domain blockgrouping)

    
    (:types block)

    (:input
        (delta)
    )
    
    (:functions
        (x ?b - block)  
        (y ?b - block)  
        (max_x)
        (min_x)
        (max_y)
        (min_y)
    )

    ;; Move a block from its location to an adjacent location
    (:action move_block_up
     :parameters (?b - block)
     :precondition (and (<= (+ (y ?b) (delta)) (max_y) ))
     :effect (and
        (increase (y ?b) (delta))
    ))

    (:action move_block_down
     :parameters (?b - block)
     :precondition (and (>= (- (y ?b) (delta)) (min_y) ))
     :effect (and
        (decrease (y ?b) (delta))
    ))

    (:action move_block_right
     :parameters (?b - block)
     :precondition (and (<= (+ (x ?b) (delta)) (max_x) ))
     :effect (and
        (increase (x ?b) (delta))
    ))

    (:action move_block_left
     :parameters (?b - block)
     :precondition (and (>= (- (x ?b) (delta)) (min_x) ))
     :effect (and
        (decrease (x ?b) (delta))
    ))

)
