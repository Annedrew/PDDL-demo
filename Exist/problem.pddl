(define (problem enmergency) (:domain exit)

(:objects
    agent1
    a b c d e - block
)

(:init
    (at agent1 a)
    
    (adjacent a b)
    (adjacent a d)   
    (adjacent b d)
    (adjacent b e)
    (adjacent b c)
    (adjacent c e)
    (adjacent d e)
    
    (adjacent b a)
    (adjacent d a)   
    (adjacent d b)
    (adjacent e b)
    (adjacent c b)
    (adjacent e c)
    (adjacent e d)
)

(:goal (and
        (at agent1 e)
    )
)
)
