
**Claim.**  
Fib(n) is the closest integer to φ^n / √5, where φ = (1 + √5) / 2.

**Hint:**  
Let ψ = (1 − √5) / 2.

Then using induction and the definition of the Fibonacci numbers, prove that

Fib(n) = (φ^n − ψ^n) / √5.

---

### Base Case

We check n = 0 and n = 1.

- For n = 0:

(φ^0 − ψ^0) / √5  
= (1 − 1) / √5  
= 0  
= Fib(0).

- For n = 1:

(φ − ψ) / √5  
= √5 / √5  
= 1  
= Fib(1).

Thus the formula holds for the base cases.

---

### Inductive Step

Assume the formula holds for n = k and n = k − 1:

Fib(k) = (φ^k − ψ^k) / √5  
Fib(k − 1) = (φ^(k−1) − ψ^(k−1)) / √5

We must show it holds for n = k + 1.

Using the Fibonacci recurrence:

Fib(k + 1) = Fib(k) + Fib(k − 1)

Substitute the inductive hypotheses:

Fib(k + 1)
= (φ^k − ψ^k) / √5 + (φ^(k−1) − ψ^(k−1)) / √5

Combine:

Fib(k + 1)
= [φ^k + φ^(k−1) − (ψ^k + ψ^(k−1))] / √5

Factor:

φ^k + φ^(k−1) = φ^(k−1)(φ + 1)  
ψ^k + ψ^(k−1) = ψ^(k−1)(ψ + 1)

Use the identities:

φ^2 = φ + 1  
ψ^2 = ψ + 1

Thus:

φ^(k−1)(φ + 1) = φ^(k+1)  
ψ^(k−1)(ψ + 1) = ψ^(k+1)

Therefore:

Fib(k + 1) = (φ^(k+1) − ψ^(k+1)) / √5

This completes the induction.

---

### Conclusion

By mathematical induction, for all n ≥ 0:

Fib(n) = (φ^n − ψ^n) / √5
Fib(n) = φ^n / √5 − ψ^n / √5
Fib(n) - φ^n / √5 = − ψ^n / √5
|Fib(n) - φ^n / √5 | = |ψ^n| / √5

Since |ψ| / √5 < 1/2, the same inequality is true for |ψ^n| as well.

Thus Fib(n) differs from φ^n / √5 by less than 1/2, making Fib(n) the **closest integer** to φ^n / √5.