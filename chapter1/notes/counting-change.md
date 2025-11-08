# PROBLEM
How many different ways can we make change of $1.00, given half-dollars, quarters,
dimes, nickels, and pennies?

## Naive approach for a simpler case with only two kind of coins. 
```scheme

(define counting-changes value1 value2 amount
    (cond ((or (< amount 0) (= args_value 0)) 0)
          ((= amount 0 1))
          (else 
               (+ (counting-changes value1 amount)
                  (counting-changes value1 value2 (- amount value2))))
    
    )
)
```
It doesn't work because of a mismatch between the expected number of arguments and the number of arguments passed in the recursive call (expected 3, given 2)


The algorithm looks correct even if the implementation is syntactically incorrect. Let's test it with a few simple cases

### Testing the algorithm alone
How many different combination of pennies and nickels can we arrange to get 10 cents?

first notice that (cc 1 n) is 1. If you have pennies only, there's only one arrangement to get any
amount of cents: all of it is pennies. Let's prove it.

#### Prof by induction
##### Thesis
P(n) = 1: (cc 1 n) = 1
##### Base cases
P(0) = 1
P(1) = 1 
##### Inductive step
P(n)        =>  P(n+1) 
(cc 1 n)=1  =>  (cc 1 (+ 1 n))=1 

(cc 1 (+ n 1))
(+ (cc 0 (+ n 1)) (cc 1 n))
(+ 0 1)

- [x] 1

### Back to the testing
(cc 1 5 10)
(+ (cc 1 10) (cc 1 5 5))
(+ 1 (+ (cc 1 5) (cc 1 0)))
(+ 1 (+ 1 1))
(+ 1 2)
3
