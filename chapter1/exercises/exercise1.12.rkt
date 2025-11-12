; Write a procedure that computes elements of Pascal’s triangle by means of a recursive process.

(define (pascal row column)
    (if (or (= column 0) (= row column))
        1
        (+ (pascal (- row 1) (- column 1))
           (pascal (- row 1) column)
        )
    )
)