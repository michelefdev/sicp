# Inductive Proof for the Fibonacci Transformation

We consider the transformation  
\[
(a, b) \mapsto (a + b, a)
\]
interpreted as a *simultaneous assignment*:  
- the new value of `a` is the old `a + b`  
- the new value of `b` is the old `a`

We start from the initial pair \((a, b) = (1, 0)\).

---

## Claim

After applying the transformation exactly \(n\) times, the values of \(a\) and \(b\) are:

\[
a = 	{Fib}(n+1), \qquad b = 	{Fib}(n)
\]

where the Fibonacci sequence is defined by:

- \(	{Fib}(0) = 0\)  
- \(	{Fib}(1) = 1\)  
- \(	{Fib}(k) = 	{Fib}(k-1) + 	{Fib}(k-2)\) for \(k \ge 2\)

---

## Proof by Induction

### Base Case (n = 0)

With zero applications of the transformation, we have the initial state:
\[
a = 1, \quad b = 0.
\]

Since:
\[
	{Fib}(1) = 1, \qquad 	{Fib}(0) = 0,
\]
the claim holds for \(n = 0\).

---

### Inductive Step

Assume the claim \(P(n)\) is true for some \(n \ge 0\).  
Thus, after \(n\) applications:

\[
a = 	{Fib}(n+1), \qquad b = 	{Fib}(n).
\]

Apply the transformation once more:

\[
a' = a + b = 	{Fib}(n+1) + 	{Fib}(n),
\]
\[
b' = a = 	{Fib}(n+1).
\]

By the Fibonacci recurrence:
\[
	{Fib}(n+2) = 	{Fib}(n+1) + 	{Fib}(n),
\]
we obtain:

\[
a' = 	{Fib}(n+2), \qquad b' = 	{Fib}(n+1).
\]

Thus \(P(n+1)\) holds.

---

## Conclusion

Since both the base case and inductive step are valid, the claim is proven for all \(n \ge 0\).  
After \(n\) applications of the transformation \((a,b) \mapsto (a+b,a)\), the values are:

\[
a = 	{Fib}(n+1), \qquad b = 	{Fib}(n).
\]
