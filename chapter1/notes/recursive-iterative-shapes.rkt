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
    (define (sum-iter n 0)
        (cond ()
        )    
    )
    (sum-iter n 0)

)

Define a function that takes the product of all the pairs of the first 10 numbers and sum it (or something like that)



