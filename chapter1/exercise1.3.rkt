#lang scheme
;max-of-two behave like a "helper" function that is called in the recursive step, I expect a similar
;(but slightly more complex) helper for the greatest pair
;then for the greatest triplet and so on
;I also expect the helper function to be "abstractable" from the cardinality of the tuplet
;but that's the next step 

(define (max-of-two x y)
  (if (> x y) x y)
)

(define (greatest-of-many numbers)
  (cond
    ((null? numbers) '())
    ((null? (cdr numbers)) (car numbers))
    (else (max-of-two (greatest-of-many (cdr numbers))
                      (car numbers)))))