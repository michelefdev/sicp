; There is an algorithm for computing Fibonacci numbers in logarithmic time.
; Define the transformation T: a ← a + b, b ← a. Repeatedly applying T n times
; to (1,0) yields (Fib(n+1), Fib(n)). Consider T as the case p=0, q=1 of a
; family T_pq: (a,b) → (b*q + a*q + a*p,  b*p + a*q). Show that applying T_pq
; twice is equivalent to a single T_p'q' of the same form, and express p' and q'
; in terms of p and q. Use this to compute T^n by successive squaring.

(define (square x)
    (* x x)
)

(define (fib n)
    (fib-iter 1 0 0 1 n))
(define (fib-iter a b p q count)
    (cond ((= count 0) b)
          ((even? count)
            (fib-iter a
                    b
                    (+ (square p) (square q))
                    (+ (* 2 p q) (square q))
                    (/ count 2)
            )
          )
    (else (fib-iter (+ (* b q) (* a q) (* a p))
        (+ (* b p) (* a q))
        p
        q
        (- count 1)))
    )
)