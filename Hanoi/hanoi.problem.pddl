(define (problem Hanoi_5_blocks)
    (:domain hanoi)
    (:objects a b c - object
              b1 b2 b3 - block   
    )
    (:init 
           (clear b1)(clear b)(clear c)
    
           (smaller b1 b2)(smaller b1 b3)
           (smaller b2 b3)

           (smaller b1 a)(smaller b1 b)(smaller b1 c)
           (smaller b2 a)(smaller b2 b)(smaller b2 c)
           (smaller b3 a)(smaller b3 b)(smaller b3 c)
           
           (on b3 a)(on b2 b3)(on b1 b2))
    (:goal (and(on b3 c)
               (on b2 b3)(on b1 b2))))
