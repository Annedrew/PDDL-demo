(define (domain domain_name)

(:requirements :typing)
(:types 
    people block ex
)

(:predicates 
    (at ?agent ?from)
    (adjacent ?from ?to)
)


(:action action_name
    :parameters (?agent - people ?from - block ?to - block)
    :precondition (and 
        (at ?agent ?from)
        (adjacent ?from ?to)
    )
    :effect (and 
        (at ?agent ?to)
    )
)
)
