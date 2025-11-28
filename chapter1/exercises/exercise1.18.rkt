; devise a procedure that generates an iterative process for multiplying two integers in terms of
; adding, doubling, and halving and uses a logarithmic number of steps

(define (fast-mult a b)

    (define (halve x)
        (/ x 2)
    )

    (define (double x)
        (* x 2)
    )

    (define (fast-mult-iter k a b)
        (cond ((= b 0) k)
              ((even? b) (fast-mult-iter k (double a) (halve b)))
              (else (fast-mult-iter (+ k a) a (- b 1)))
        )
    )

    (fast-mult-iter 0 a b)
)

; A general approach to build iterative processes is to have invariant, meaning a state variable that
; stays the same across every step of the algorithm, in this case the invariant is:

; k = (a*b) + a