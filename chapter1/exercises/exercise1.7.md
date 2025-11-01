# Exercise: is it really good enough?
The good-enough? test used in computing
square roots will not be very eﬀective for ﬁnding the square
roots of very small numbers. Also, in real computers, arithmetic 
operations are almost always performed with limited precision. 
This makes our test inadequate for very large numbers.
Explain these statements, with examples showing
how the test fails for small and large numbers.

if you take the square root of very small numbers the recursion stops too early, because the numbers themselves are smaller than the good enough range, for example:
```text
I try to find the square root of 0.01 (good-enough 0.1)
let the guess be 1,     I check it and I am not satisfied, then I take the average of (0.01/1) and 1,
let the guess be 0.505, I check it and I am not satisfied, then I take the average of (0.01/0.505) and 0.505
let the guess be 0.262, I check and notice that (0.262 * 0.262) - 0.01 = 0.05864 e 0.05864 < 0.1 so the algorithm stops,
but it return a value that is quite far from the real answer (0.1)
```

if you try and take the square root of very big numbers you might hit the limited precision limit. Say you set "good enough" to be 0.001, but you are taking the square root of one thousand. Getting within 0.001 range of the real square root might require a lot more precision that you actually have, in fact:

```text
I try to find the square root of 1000 (good-enough 0.001).
let the guess be 1,   		I check it and I am not satisfied, then I take the average of (1000/1) e 1,
let the guess be 500.5,   	I check it and I am not satisfied, then I take the average of (1000/500.5) e 500.5,
let the guess be 251.24		I check it and I am not satisfied, then I take the average of (1000/251.24) e 251.24
let the guess be 127.61		I check it and I am not satisfied, then I take the average of (1000/127.61) e 127.61
let the guess be 67.72		I check it and I am not satisfied, then I take the average of (1000/67.72) e 67.72
let the guess be 41.24		I check it and I am not satisfied, then I take the average of (1000/41.24) e 41.24
let the guess be 32.74		I check it and I am not satisfied, then I take the average of (1000/32.74) e 32.74
let the guess be 31.64		I check it and I am not satisfied, then I take the average of (1000/31.64) e 31.64
let the guess be 31.62      I check it and I am not satisfied, then I take the average of (1000/31.62) e 31.62
let the guess be 31.62      I check it and I am not satisfied, then I take the average of (1000/31.62) e 31.62
.
.
.
let the guess be 31.62 I check it and I am not satisfied *because (1000- (31.62 * 31.62)) = 0.17 and 0.17 > 0.001* so i get stuck inside an infinite loop.

```