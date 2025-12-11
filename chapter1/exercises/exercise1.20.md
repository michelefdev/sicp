APPLICATIVE ORDER OF EVALUATION (eager):

(gcd 206 40)
---
(if (= 40 0)
206
(gcd 40 (remainder 206 40)))	+1
---
(gcd 40 6)			
---
(if (= 6 0)
40
(gcd 6 (remainder 40 6)))	+1
---
(gcd 6 2)
---
(if (= 2 0)
6
(gcd 2 (remainder 6 2)))	+1
---
(gcd 2 0)
2
---
TOT REMAINDER CALLS: 3

NORMAL ORDER OF EVALUATION (lazy):

(gcd 206 40)
---
(if (= 40 0)
206
(gcd 40 (remainder 206 40)))
---
(gcd 40 (remainder 206 40))
---
(if (= (remainder 206 40) 0)						+1
40
(gcd (remainder 206 40) (remainder 40 ((remainder 206 40)))))
---
(if (= 6 0))
40
(gcd (remainder 206 40) (remainder 40 ((remainder 206 40))))
---
(gcd (remainder 206 40) 
     (remainder 40 ((remainder 206 40)))
)
---
(if (= (remainder 40 ((remainder 206 40))) 0)				+2
(remainder 206 40)
(gcd (remainder 40 ((remainder 206 40))) 
     (remainder (remainder 206 40)  (remainder 40 ((remainder 206 40)))))
)
---
(if (= 4 0)
(remainder 206 40)
(gcd (remainder 40 ((remainder 206 40))) (remainder (remainder 206 40)  (remainder 40 ((remainder 206 40)))))
)
---
(gcd (remainder 40 ((remainder 206 40))) (remainder (remainder 206 40)  (remainder 40 ((remainder 206 40)))))
---                                                         
(if (= (remainder (remainder 206 40)  (remainder 40 ((remainder 206 40)))) 0) ) +4
(remainder 40 ((remainder 206 40)))
(gcd (remainder (remainder 206 40)  (remainder 40 ((remainder 206 40)))) (remainder (remainder 40 ((remainder 206 40))) (remainder (remainder 206 40)  (remainder 40 ((remainder 206 40))))))
---
(if (= 2 0))
(remainder 40 ((remainder 206 40)))
(gcd (remainder (remainder 206 40)  (remainder 40 ((remainder 206 40)))) (remainder (remainder 40 ((remainder 206 40))) (remainder (remainder 206 40)  (remainder 40 ((remainder 206 40))))))
---
(gcd (remainder (remainder 206 40)  (remainder 40 ((remainder 206 40)))) (remainder (remainder 40 ((remainder 206 40))) (remainder (remainder 206 40)  (remainder 40 ((remainder 206 40))))))
---
(if (= (remainder (remainder 40 ((remainder 206 40))) (remainder (remainder 206 40)  (remainder 40 ((remainder 206 40))))) 0) + 7
(remainder (remainder 206 40)  (remainder 40 ((remainder 206 40)))) +4
[... not needed because I know the recursion stops here]
)
---
2
---
TOT REMAINDER CALLS: 18







