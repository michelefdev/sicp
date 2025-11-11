; f(n)= n if n < 3
; f(n)= f(n-1) + 2*f(n-2) + 3*f(n-3) if n >= 3

; Write a procedure that computes f by means of a recursive
; process. Write a procedure that computes f by means of an
; iterative process.

(define (f-recur n)
    (if (< n 3) n 
        (+ 
            (f-recur (- n 1))
            (* 2 (f-recur (- n 2)))
            (* 3 (f-recur (- n 3)))
        )
    )
)

(define (f-iter n)
    (define (f first second third counter)
        (if (= counter 0)
            third
            (f second third (+ third (* 2 second) (* 3 first)) (- counter 1))
        )
    )
    (cond 
        ((< n 3) n)
        (else (f 0 1 2 (- n 2)))
    )
)