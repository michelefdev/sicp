;A recursive sum procedure describing a recursive sum process
(define (sum-recur a b)
    (if (= a 0)
        b
        (inc (sum-recur (dec a) b))
    )
)

;A recursive sum procedure describing an iterative sum process
(define (sum-iter a b)
    (if (= a 0)
        b
        (sum-iter (dec a) (inc b))

    )
)

; RECURSIVE EVALUATION
; (sum-recur 4 5)
; (inc (sum-recur 3 5))
; (inc (inc (sum-recur 2 5)))
; (inc (inc (inc (sum-recur 1 5))))
; (inc (inc (inc (inc (sum-recur 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9

; ITERATIVE EVALUATION
; (sum-iter 4 5)
; (sum-iter 3 6)
; (sum-iter 2 7)
; (sum-iter 1 8)
; (sum-iter 0 9)
; 9
