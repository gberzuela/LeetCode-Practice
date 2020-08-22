# [LeetCode](https://www.leetcode.com) Problems done in Java/Ruby

## Problem 1480. Running Sum of 1d Array 

Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

Return the running sum of nums.

Example 1:
```
Input: nums = [1,2,3,4]
Output: [1,3,6,10]
Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
```

Example 2:
```
Input: nums = [1,1,1,1,1]
Output: [1,2,3,4,5]
Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
```

Example 3:
```
Input: nums = [3,1,2,10,1]
Output: [3,4,6,16,17]
```

Constraints:
```
1 <= nums.length <= 1000
-10^6 <= nums[i] <= 10^6
```

[Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/RunningSum.rb) 
------------------------------------------------------------------------
## Problem 771. Jewels and Stones

You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.

The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive, so "a" is considered a different type of stone from "A".

Example 1:
```
Input: J = "aA", S = "aAAbbbb"
Output: 3
```

Example 2:
```
Input: J = "z", S = "ZZ"
Output: 0
```

Note:
```
S and J will consist of letters and have length at most 50.
The characters in J are distinct.
```

[Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/Jewels%26Stones.rb)
------------------------------------------------------------------------
## Problem 1431. Kids WIth the Greatest Number of Candies

Given the array candies and the integer extraCandies, where candies[i] represents the number of candies that the ith kid has.

For each kid check if there is a way to distribute extraCandies among the kids such that he or she can have the greatest number of candies among them. Notice that multiple kids can have the greatest number of candies.

Example 1:
```
Input: candies = [2,3,5,1,3], extraCandies = 3
Output: [true,true,true,false,true] 
Explanation: 
Kid 1 has 2 candies and if he or she receives all extra candies (3) will have 5 candies --- the greatest number of candies among the kids. 
Kid 2 has 3 candies and if he or she receives at least 2 extra candies will have the greatest number of candies among the kids. 
Kid 3 has 5 candies and this is already the greatest number of candies among the kids. 
Kid 4 has 1 candy and even if he or she receives all extra candies will only have 4 candies. 
Kid 5 has 3 candies and if he or she receives at least 2 extra candies will have the greatest number of candies among the kids. 

```
Example 2:
```
Input: candies = [4,2,1,1,2], extraCandies = 1
Output: [true,false,false,false,false] 
Explanation: There is only 1 extra candy, therefore only kid 1 will have the greatest number of candies among the kids regardless of who takes the extra candy.
```

Example 3:
```
Input: candies = [12,1,12], extraCandies = 10
Output: [true,false,true]
```

Constraints:
```
2 <= candies.length <= 100
1 <= candies[i] <= 100
1 <= extraCandies <= 50
```

[Ruby solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/GreaterNumberOfCandies.rb)
------------------------------------------------------------------------
## Problem 1512. Number of Good Pairs

Given an array of integers nums.

A pair (i,j) is called good if nums[i] == nums[j] and i < j.

Return the number of good pairs.

Example 1:
```
Input: nums = [1,2,3,1,1,3]
Output: 4
Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
```

Example 2:
```
Input: nums = [1,1,1,1]
Output: 6
Explanation: Each pair in the array are good.
```

Example 3:
```
Input: nums = [1,2,3]
Output: 0
 ```

Constraints:
```
1 <= nums.length <= 100
1 <= nums[i] <= 100
```

[Ruby solution]()
------------------------------------------------------------------------