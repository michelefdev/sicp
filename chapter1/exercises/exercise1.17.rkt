; suppose we include, together with addition, operations double, which doubles an integer, and halve, which
; divides an (even) integer by 2. Using these, design a multiplication procedure analogous to fast-expt that
; uses a logarithmic number of steps

(define (halve x)
    (/ x 2)
)

(define (double x)
    (* x 2)
)

(define (fast-mult a b)
    (cond ((= b 0) 0)
          ((even? b) (double (fast-mult a (halve b))))
          (else (+ a (fast-mult a (- b 1))))
    )
)