## Exercise: Compound Operators in Evaluation

Observe that our model of evaluation allows for combinations whose operators are compound expressions.  
Use this observation to describe the behavior of the following procedure:

```scheme
(define (a-plus-abs-b a b)
  ((if (> b 0)
       +
       -)
   a
   b))
```

---

## Solution

The `if` expression is a special form, so it has its own evaluation rule.  
This means that the first subexpression (the predicate) is evaluated first.  
If its value is `#t`, the second subexpression is evaluated and returned;  
if its value is `#f`, the third subexpression is evaluated and returned instead.

Notice that the value returned by the `if` expression can itself be a procedure,  
blurring the traditional line between “data” and “functions.”

In this specific case:

- If `b` is greater than zero, the `if` expression evaluates to the `+` procedure,  
  which is then applied to `a` and `b`, giving `a + b`, or equivalently `a + |b|`.  

- If `b` is less than or equal to zero, the `if` expression evaluates to the `-` procedure,  
  which is applied to `a` and `b`, giving `a - b`, which also equals `a + |b|`.  

Hence, the procedure `a-plus-abs-b` computes `a + |b|` without explicitly calling `abs`.

---

### Example Evaluations

```scheme
> (a-plus-abs-b 3 5)
8

> (a-plus-abs-b 3 -5)
8
```