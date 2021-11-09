(define (domain exit)

(:requirements :typing :negative-preconditions :action-costs)

(:types people edges)

(:predicates
    (Available ?agent - people)
    (adjacent ?from - edges ?to - edges)
    (at ?agent - people ?from - edges)
    (next-agent ?agent - people ?nagent - people)
    (destination ?agent - people ?from - edges)
    (last-agent ?agent - people)
)

(:functions
    (road_cost ?agent - people) - number
    (road_risk ?from - edges ?to - edges) - number
    (road_crowd ?from - edges ?to - edges) - number
)

(:action move
    :parameters (?agent - people ?from - edges ?to - edges ?nagent - people)
    :precondition (and 
        (not (last-agent ?agent))
        (Available ?agent)
        (at ?agent ?from)
        (adjacent ?from ?to)
        (next-agent ?agent ?nagent)
        (not (destination ?agent ?from))
    )
    :effect (and 
        (not (at ?agent ?from))
        (at ?agent ?to)
        (Available ?nagent)
        (not (Available ?agent))
        (increase (road_cost ?agent) (+ (road_risk ?from ?to) (road_crowd ?from ?to)))       
    ))

(:action reinit
    :parameters (?agent - people ?from - edges ?to - edges ?nagent - people)
    :precondition (and  
        (last-agent ?agent)
        (Available ?agent)
        (at ?agent ?from)
        (adjacent ?from ?to)       
        (next-agent ?agent ?nagent)
        (not (destination ?agent ?from))
    )
    :effect (and 
        (not (at ?agent ?from))
        (at ?agent ?to)
        (next-agent ?agent ?nagent)
        (not (Available ?agent))
        (Available ?nagent)
        (increase (road_cost ?agent) (+ (road_risk ?from ?to) (road_crowd ?from ?to)))
    ))
)
