# Exercise: is it really good enough?
The good-enough? test used in computing
square roots will not be very eﬀective for ﬁnding the square
roots of very small numbers. Also, in real computers, arithmetic 
operations are almost always performed with limited precision. 
This makes our test inadequate for very large numbers.
Explain these statements, with examples showing
how the test fails for small and large numbers.

if you take the square root of very small numbers the result would be smaller than the good enough range, which means you are not precise enough to get an accurate estimation for the square root.
```scheme
(sqrt 0.01)
0.005 X
```

if you try and take the square root of very big numbers you might hit the limited precision limit. Say you set "good enough" to be 0.10, but you are taking the square root of one bilion. Getting within 0.10 might require a lot more precision that you actually have, in fact:

'''scheme
(sqrt 1000)
31.37

(* 31.37 31.37)
984
```
Notice that the result is well out the `0.01` range of the `good-enough` procedure, proving the point