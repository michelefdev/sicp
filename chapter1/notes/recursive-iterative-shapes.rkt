; Jumping stright into factorial is tricky for me, so let's try something simpler first.
; The idea is to get used to handle counters and accumulators in recursive functions.

; Redefine a function my-product that takes two positive integers a and b and returns their product a * b.
(define (my-product a b)
    (define (product-iter a b total)
        (cond
            ( (or (= a 0) (= b 0)) 0)
            ((= b 1) (+ total a))
            (else (product-iter a 
                            (- b 1) 
                            (+ total a)))
        )
    )
    (product-iter a b 0)
)

; Define a function that takes a positive integer n and returns the sum of the first n integers.
(define (sum-of-consecutives n)
    (define (sum-iter n counter)
        (if (= n 0)
            counter
            (sum-iter (- n 1)
                      (+ n counter)

            )
        )    
    )
    (sum-iter n 0)
)

; Finally try with the factorial
(define (factorial n)
    (define (factorial-iter number total)
        (if (or (= number 1) (= number 0))
            total
            (factorial-iter (- number 1)
                            (* total number)
            )
        )
    )
    (factorial iter n 1)
)