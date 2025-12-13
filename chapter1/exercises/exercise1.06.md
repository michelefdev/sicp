# Exercise: new if
Alyssa P. Hacker doesn’t see why if needs to
be provided as a special form. “Why can’t I just deﬁne it as
an ordinary procedure in terms of cond?” she asks. Alyssa’s
friend Eva Lu Ator claims this can indeed be done, and she
deﬁnes a new version of if:

## Definitions
```scheme
(define (new-if predicate then-clause else-clause)
(cond (predicate then-clause)
(else else-clause)))
```

Eva demonstrates the program for Alyssa:

```scheme
    (new-if (= 2 3) 0 5)
    5
    (new-if (= 1 1) 0 5)
    0
```

Delighted, Alyssa uses new-if to rewrite the square-root
program:

```scheme
(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))
```
What happens when Alyssa attempts to use this to compute
square roots? Explain.

## Expression to evaluate:
```scheme
(sqrt-iter 1 3)
```
The native `if` clause has its own peculiar order of evaluation. In particular, the predicate gets evaluated first and then, only if the predicate is true, the second argument of the `if` clause is evaluated and returned, otherwise the last argument is evaluated and returned.

If we rewrite the `if` special form according to Alyssa, the evaluator gets to evaluate this expression:
```scheme
(new-if (good-enough? 1 3)
        guess
        (sqrt-iter (improve guess 1) 3))
```
which SHOULD become:
```scheme
(cond ((good-enough? 1 3) guess)
      (else (sqrt-iter (improve guess 1) 3))
)

But since the new-if is NOT a special form, the evaluator evaluate according to applicative order, trying to expand every argument. This lead the program to keep on calling the `(sqrt-iter (improve guess 1) 3)` indefinitely,getting stuck in an infinite loop

