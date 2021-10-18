(define (problem hello-world)

(:domain hello)

(:objects
    world - thing
)

(:init
    (can_hear world)
)

(:goal
    (and
        (said_hello_to world)
    )
)
)
