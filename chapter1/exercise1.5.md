# Ben Bitdiddle’s Evaluation Test

## Definitions
```scheme
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
```

## Expression to Evaluate
```scheme
(test 0 (p))
```
What behavior will Ben observe with an interpreter that
uses applicative-order evaluation? What behavior will he
observe with an interpreter that uses normal-order evalu-
ation?
---

We follow the **apply–eval loop** to evaluate this combination:

- `test` evaluates to a **procedure object** (it’s not applied yet; we first need the values of the operands, because we are working with **applicative order** of evaluation).
- Then `0` (the argument) is evaluated and returns the integer zero.
- Lastly, the `(p)` expression is evaluated (and applied!) because the **applicative order** of evaluation requires the “greedy” evaluation of all operands.

At this point, the interpreter gets stuck in an **infinite loop**.  

Notice that the `if` special form would evaluate `p` **only if** `x` were different from zero, which would **not** lead to an infinite loop.  
But this doesn’t matter here, since the `(p)` operand is being evaluated **as soon as possible** by the interpreter, which gets stuck even before reaching that point.

---

In a **normal order** evaluation, operands are evaluated **only when needed**.  
So, given the definition of the `test` function, the interpreter would actually reach the state where it evaluates the expression:

```scheme
(if (= 0 0) 0 (p))
```

However, `p` is **never really evaluated** because of the `if` special form’s evaluation rule, which states that the third argument of the if form is evaluated only if the predicate is false, which would not be the case in this example.

---

**Summary:**  
- Applicative order: evaluates `(p)` eagerly → infinite loop.  
- Normal order: delays `(p)` until needed → returns `0` safely.