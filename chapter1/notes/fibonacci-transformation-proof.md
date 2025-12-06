# Inductive Proof for the Fibonacci Transformation

We consider the transformation

```
(a, b) -> (a + b, a)
```

interpreted as a **simultaneous assignment**:
- the new value of `a` is the old `a + b`
- the new value of `b` is the old `a`

We start from the initial pair:

```
(a, b) = (1, 0)
```

---

## Claim

After applying the transformation exactly `n` times, the values of `a` and `b` are:

```
a = Fib(n + 1)
b = Fib(n)
```

where the Fibonacci sequence is defined as:

```
Fib(0) = 0
Fib(1) = 1
Fib(k) = Fib(k − 1) + Fib(k − 2),   for k ≥ 2
```

---

## Proof by Induction

### Base Case (n = 0)

With zero applications of the transformation, we have the initial state:

```
a = 1
b = 0
```

Since:

```
Fib(1) = 1
Fib(0) = 0
```

the claim holds for `n = 0`.

---

### Inductive Step

Assume the claim holds for some `n ≥ 0`.  
That is, after `n` applications:

```
a = Fib(n + 1)
b = Fib(n)
```

Apply the transformation once more:

```
a' = a + b = Fib(n + 1) + Fib(n)
b' = a     = Fib(n + 1)
```

By the Fibonacci recurrence relation:

```
Fib(n + 2) = Fib(n + 1) + Fib(n)
```

we obtain:

```
a' = Fib(n + 2)
b' = Fib(n + 1)
```

Thus, the claim holds for `n + 1`.

---

## Conclusion

Since both the base case and the inductive step are valid, the claim holds for all `n ≥ 0`.

After `n` applications of the transformation:

```
(a, b) -> (a + b, a)
```

the resulting values are:

```
a = Fib(n + 1)
b = Fib(n)
```