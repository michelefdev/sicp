; Newton’s method for cube roots is based on
; the fact that if y is an approximation to the cube root of x,
; then a beer approximation is given by the value
; (x/y^2 + 2y) / 3
; Use this formula to implement a cube-root procedure anal-
; ogous to the square-root procedure. (In Section 1.3.4 we will
; see how to implement Newton’s method in general as an
; abstraction of these square-root and cube-root procedures.)

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
