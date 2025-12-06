# Euclidean Algorithm — Clean Proof

Let \(a, b \in \mathbb{Z}\) with \(a > b > 0\).
Let \(d\) be an integer such that  
\[
d \mid a \quad \text{and} \quad d \mid b
\]
(where \(d \mid a\) means *d divides a*).

---

## Lemma: If \(d \mid a\) and \(d \mid b\), then \(d \mid r\)

By the **Division Algorithm**, there exist integers \(k\) and \(r\) such that  
\[
a = b k + r, \quad 0 \le r < |b|.
\]

Rewriting,
\[
r = a - b k.
\]

Since:
- \(d \mid a\),
- \(d \mid b\) implies \(d \mid bk\),
- and the integers are closed under subtraction,

it follows that  
\[
d \mid (a - bk) = r.
\]

✅ Therefore, **any common divisor of \(a\) and \(b\) also divides \(r\)**.

---

## Consequence: Invariance of the GCD

Because the common divisors of \(a\) and \(b\) are exactly the same as the common divisors of \(b\) and \(r\), we conclude:
\[
\gcd(a,b) = \gcd(b,r).
\]

---

## Base Case

If \(b = 0\), then:
\[
\gcd(h,0) = h,
\]
since \(h \mid h\) and \(h \mid 0\).

---

## Euclidean Algorithm

Given \(a > b > 0\):

1. Compute the remainder \(r\) of \(a / b\).
2. Replace \((a,b)\) with \((b,r)\).
3. Repeat until the remainder is zero.

Formally:
\[
\gcd(a,b) = \gcd(b,r).
\]

---

## Termination

At each step:
\[
0 \le r < b.
\]

Thus the sequence of remainders is a strictly decreasing sequence of non‑negative integers.  
Such a sequence **must eventually reach 0**.

When the remainder is zero, the algorithm stops, and the last non‑zero remainder is the gcd.

✅ **Therefore, the Euclidean Algorithm always terminates and correctly computes the gcd.**