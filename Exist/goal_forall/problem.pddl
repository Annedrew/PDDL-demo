(define (problem problem_name) (:domain domain_name)
(:objects 
    agent1 agent2 - people
    a b c ex - block
    d e - ex
)

(:init
    (adjacent a b)
    (adjacent b c)
    (adjacent c d)
    (at agent1 a)
    (at agent2 a)
)

(:goal (forall (?agent - people)
    (at ?agent d)
)
)
)
