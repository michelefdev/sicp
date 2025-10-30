; Deﬁne a procedure that takes three numbers
; as arguments and returns the sum of the squares of the two
; larger numbers.


;this helper function updates the pair if the candidate is greater than either of the two values in the pair
(define (update-max-pair pair candidate)
  (cond
    ((> candidate (car pair)) (cons candidate (cdr pair) )) 
    ((> candidate (cadr pair)) (cons (car pair) candidate ))
    (else pair)
  )
)

;this helper function orders the pair in ascending order
(define (order-pair pair)
  (if (> (car pair) (cadr pair))
      (list (cadr pair) (car pair)) 
      (list (car pair) (cadr pair))
  )
)

;the main function recursively finds the greatest pair in the list
(define (greatest-pair numbers)
  (cond 
    ((null? numbers) '())
    ((null? (cdr numbers)) '())
    ((null? (cddr numbers)) numbers)
    (else (order-pair(update-max-pair (order-pair (greatest-pair (cdr numbers))) (car numbers))))
  )
)

;define the function that gives the square of a number
(define (square x)
  (* x x)
)
;define the final function that returns the sum of the squares of the greatest pairs in a triplet 
(define (sum-square-of-greatests triplet)
  ( + (square
        (car 
          (greatest-pair triplet)))
      (square
        (cadr
          (greatest-pair triplet)))
  )
)