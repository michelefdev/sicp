(define (try guess x)
    (if (good-enough? guess x)
        guess
        (try (improve guess x) x) 
    )
)

(define (good-enough? guess x)
    (if (< (abs (- (cube guess) x) ) 0.1 )
        true
        false
    )
)

(define (cube x)
    (* x x x )
)

(define (improve y x)
    (/ (+ (/ x (square y)) (* 2 y) )
        3
    )
)

(define (square x)
    (* x x)
)

(define (cube-root x)
  (try 1 x)
)
