#lang scheme
;(define (check-sign-if-broke x)
;  (if (> x 0)
;      (display "x is positive")
;      (newline)
;      (display "x is not positive")))


(define (check-sign-if-fixed x)
  (if (> x 0)
      (begin
        (display "x is positive")
        (newline)
        'positive)
      (begin
        (display "x is not positive")
        (newline)
        'not-positive)))


(define (check-sign-cond x)
  (cond ((> x 0)
         (display "x is positive")
         (newline)
         'positive)
        ((= x 0)
         (display "x is zero")
         (newline)
         'zero)
        (else
         (display "x is negative")
         (newline)
         'negative)))


(define (begin-test x)
  (if (> x 0)
      (begin
        (display "x is positive")
        'positive
        42
        (newline)
        )
      (begin
        (display "x is not positive")
        (newline)
        'not-positive)))