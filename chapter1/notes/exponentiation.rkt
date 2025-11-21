(define (exp-rec b n)
    (if (= n 0)
        1
        (* b (exp-rec b (- n 1)))
    )
)

(define (exp-iter b n)
    (exp b n 1)
    (define (exp b n result)
        (if (= n 0)
            result
            (exp b (- n 1) (* b result))
        )
    )
)

; (exp-iter 2 0)
; (exp 2 0 1)
; 1

; (exp-iter 2 1)
; (exp 2 1 1)
; (exp 2 0 2)
; 2

; (exp-iter 2 2)
; (exp 2 2 1)
; (exp 2 1 2)
; (exp 2 0 4)
; 4

; (exp-iter 3 3)
; (exp 3 3 1)
; (exp 3 2 3)
; (exp 3 1 9)
; (exp 3 0 27)
; 27

(define (square x)
    (* x x)
)

(define (fast-exp b n)
    (cond ((= n 0) 1)
          ((even? n) (square (fast-exp (b (/ n 2)))))
          (else (* (fast-exp b (- n 1)) b))
    )
)

; (fast-exp 2 0)
; 1

; (fast-exp 2 1)
; (* (fast-exp 2 0) 2)
; (* 1 2)
; 2

; (fast-exp 2 2)
; (square (fast-exp (2 1)))
; (square 2)
; 4

; (fast-exp 2 3)
; (* (fast-exp 2 2) 2)
; (* (square (fast-exp (2 1))) 2)
; (* (square (* (fast-exp 2 0) 2)) 2)
; (* (square (* 1 2)) 2)
; (* (square 2) 2)
; (* 4 2)
; 8

; (fast-exp 2 4)
; (square (fast-exp 2 2))
; (square (square (fast-exp 2 1)))
; (square (square (* (fast-exp 2 0) 2)))
; (square (square (* 1 2)))
; (square (square 2))
; (square 4)
; 16