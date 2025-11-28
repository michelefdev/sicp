; Design a procedure that evolves an iterative exponentiation process that 
; uses successive squaring and uses a logarithmic number of steps

(define (fast-exp b n)
    (define (square x)
        (* x x)
    )
    (define (fast-exp-iter a b n
        )
        (cond ((= n 0) a)
              ((even? n) (fast-exp-iter a (square b) (/ n 2)))
              (else (fast-exp-iter (* a b) b (- n 1))))
    )
    (fast-exp-iter 1 b n)
)