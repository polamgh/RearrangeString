# RearrangeString
Rearrange String


Given a string str consisting of letters only and an integer n, the task is to replace every character of the given string by a character which is n times more than it. If the letter exceeds ‘z’, then start checking from ‘a’ in a cyclic manner.

Examples:\n
Input: str = “abc”, n = 2
Output: cde
a is moved by 2 times which results in character c
b is moved by 2 times which results in character d
c is moved by 2 times which results in character e

Input: str = “abc”, n= 28
Output: cde
a is moved 25 times, z is reached. Then the 26th character will be a, 27th b and 28th c.
b is moved 24 times, z is reached. 28-th is d.
c is moved 23 times, z is reached. 28-th is e.


For test:

```swift
var oldStr = "abc"
var n = 2
var n2 = 28
let rearrange = RearrangeString()
print(rearrange.encode(str: oldStr, n: n))
print(rearrange.encode(str: oldStr, n: n2))
```
