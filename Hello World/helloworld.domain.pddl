(define (domain hello)

(:requirements :strips :typing :negative-preconditions)

(:types thing)

(:predicates
    (can_hear ?t - thing) 
    (said_hello_to ?t - thing) 
)

(:action say-hello
    :parameters (?t - thing)
    :precondition (and
        (not (said_hello_to ?t))
        (can_hear ?t)
    )
    :effect (and
        (said_hello_to ?t)
    )
)
)
