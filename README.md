# [LeetCode](https://www.leetcode.com) Problems done in Java/Ruby

## Problem 1480. Running Sum of 1d Array 
Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

Return the running sum of nums.

Example 1:
---
Input: nums = [1,2,3,4]
Output: [1,3,6,10]
Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
---

Example 2:
---
Input: nums = [1,1,1,1,1]
Output: [1,2,3,4,5]
Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
---

Example 3:
---
Input: nums = [3,1,2,10,1]
Output: [3,4,6,16,17]
 ---

Constraints:
---
1 <= nums.length <= 1000
-10^6 <= nums[i] <= 10^6
---

[Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/RunningSum.rb) 
---
## Problem 771. Jewels and Stones
You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.

The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive, so "a" is considered a different type of stone from "A".

Example 1:
---
Input: J = "aA", S = "aAAbbbb"
Output: 3
---

Example 2:
---
Input: J = "z", S = "ZZ"
Output: 0
---

Note:
---
S and J will consist of letters and have length at most 50.
The characters in J are distinct.
---
[Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/Jewels%26Stones.rb)
---
