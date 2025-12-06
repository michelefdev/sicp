# Euclidean Algorithm — Proof

Let a, b be integers with a > b > 0.  
Let d be an integer such that d | a and d | b  
(where d | a means *d divides a*).

---

## Lemma  
If d | a and d | b, then d | r.

By the **Division Algorithm**, there exist integers k and r such that:

```
a = b k + r,    with 0 ≤ r < |b|
```

Rewriting:

```
r = a − b k
```

Since:
- d | a,
- d | b implies d | (b k),
- integers are closed under subtraction,

it follows that d | r.

✅ Therefore, every common divisor of a and b also divides r.

---

## Consequence: GCD Preservation

Because the common divisors of (a, b) and (b, r) are the same, we have:

```
gcd(a, b) = gcd(b, r)
```

---

## Base Case

If b = 0, then:

```
gcd(h, 0) = h
```

since h divides both h and 0.

---

## Euclidean Algorithm

Given a > b > 0:

1. Compute the remainder r of a divided by b.
2. Replace (a, b) with (b, r).
3. Repeat until r = 0.

Formally:

```
gcd(a, b) = gcd(b, r)
```

---

## Termination

At each step:

```
0 ≤ r < b
```

Thus, the sequence of remainders is a strictly decreasing sequence of non‑negative integers.  
Such a sequence must eventually reach 0.

When the remainder is zero, the algorithm stops, and the last non‑zero remainder is the gcd.

✅ **The Euclidean Algorithm always terminates and correctly computes the gcd.**