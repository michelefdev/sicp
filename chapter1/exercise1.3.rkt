#lang scheme
;max-of-two behave like a "helper" function that is called in the recursive step, I expect a similar
;(but slightly more complex) helper for the greatest pair
;then for the greatest triplet and so on
;I also expect the helper function to be "abstractable" from the cardinality of the tuplet
;but that's the next step 

;###########################################GREATEST SINGLET###########################################
;HELPER FUNCTION
(define (max-of-two x y)
  (if (> x y) x y)
)

;MAIN FUNCTION
(define (greatest-of-many numbers)
  (cond
    ((null? numbers) '())
    ((null? (cdr numbers)) (car numbers))
    (else (max-of-two (greatest-of-many (cdr numbers))
                      (car numbers)))))

;###########################################GREATEST PAIR###########################################

;HELPER FUNCTIONS
(define (update-max-pair pair candidate)
  (cond
    ((> candidate (car pair)) (cons candidate (cdr pair) )) 
    ((> candidate (cadr pair)) (cons (car pair) candidate ))
    (else pair)
  )
)

(define (order-pair pair)
  (if (> (car pair) (cadr pair))
      (list (cadr pair) (car pair)) 
      (list (car pair) (cadr pair))
  )
)

;MAIN FUNCTION
(define (greatest-pair numbers)
  (cond 
    ((null? numbers) '())
    ((null? (cdr numbers)) '())
    ((null? (cddr numbers)) numbers)
    (else (order-pair(update-max-pair (order-pair (greatest-pair (cdr numbers))) (car numbers))))
  )
)