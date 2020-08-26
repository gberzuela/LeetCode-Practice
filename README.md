# [LeetCode](https://www.leetcode.com) Problems done in Java/Ruby

## Problem 1480. Running Sum of 1d Array (Easy - Array Practice)
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

- [Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/1480_RunningSum.rb) 
------------------------------------------------------------------------
## Problem 771. Jewels and Stones (Easy - Hash Practice)
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

- [Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/771_Jewels%26Stones.rb)
------------------------------------------------------------------------
## Problem 1431. Kids WIth the Greatest Number of Candies (Easy - Iterating Practice)
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

- [Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/1431_GreaterNumberOfCandies.rb)
------------------------------------------------------------------------
## Problem 1512. Number of Good Pairs (Easy - Iterating Practice)
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

- [Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/1512_GoodPairs.rb)
- [Java Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/GoodPairs1512.java)
------------------------------------------------------------------------
## Problem 1108. Defanging an IP Address (Easy - String Manipulation)
Given a valid (IPv4) IP address, return a defanged version of that IP address.

A defanged IP address replaces every period "." with "[.]".

Example 1:
```
Input: address = "1.1.1.1"
Output: "1[.]1[.]1[.]1"
```

Example 2:
```
Input: address = "255.100.50.0"
Output: "255[.]100[.]50[.]0"
```

Constraints:
```
The given address is a valid IPv4 address.
```

- [Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/1108_DefangingIP.rb)
------------------------------------------------------------------------
## Problem 1476. Subrectangle Queries (Medium - Class Practice)
Implement the class SubrectangleQueries which receives a rows x cols rectangle as a matrix of integers in the constructor and supports two methods:

1. updateSubrectangle(int row1, int col1, int row2, int col2, int newValue)

    - Updates all values with newValue in the subrectangle whose upper left coordinate is (row1,col1) and bottom right coordinate is (row2,col2).
2. getValue(int row, int col)

    - Returns the current value of the coordinate (row,col) from the rectangle.

Example 1:
```
Input
["SubrectangleQueries","getValue","updateSubrectangle","getValue","getValue","updateSubrectangle","getValue","getValue"]
[[[[1,2,1],[4,3,4],[3,2,1],[1,1,1]]],[0,2],[0,0,3,2,5],[0,2],[3,1],[3,0,3,2,10],[3,1],[0,2]]
Output
[null,1,null,5,5,null,10,5]
Explanation
SubrectangleQueries subrectangleQueries = new SubrectangleQueries([[1,2,1],[4,3,4],[3,2,1],[1,1,1]]);  
// The initial rectangle (4x3) looks like:
// 1 2 1
// 4 3 4
// 3 2 1
// 1 1 1
subrectangleQueries.getValue(0, 2); // return 1
subrectangleQueries.updateSubrectangle(0, 0, 3, 2, 5);
// After this update the rectangle looks like:
// 5 5 5
// 5 5 5
// 5 5 5
// 5 5 5 
subrectangleQueries.getValue(0, 2); // return 5
subrectangleQueries.getValue(3, 1); // return 5
subrectangleQueries.updateSubrectangle(3, 0, 3, 2, 10);
// After this update the rectangle looks like:
// 5   5   5
// 5   5   5
// 5   5   5
// 10  10  10 
subrectangleQueries.getValue(3, 1); // return 10
subrectangleQueries.getValue(0, 2); // return 5
```

Example 2:
```
Input
["SubrectangleQueries","getValue","updateSubrectangle","getValue","getValue","updateSubrectangle","getValue"]
[[[[1,1,1],[2,2,2],[3,3,3]]],[0,0],[0,0,2,2,100],[0,0],[2,2],[1,1,2,2,20],[2,2]]
Output
[null,1,null,100,100,null,20]
Explanation
SubrectangleQueries subrectangleQueries = new SubrectangleQueries([[1,1,1],[2,2,2],[3,3,3]]);
subrectangleQueries.getValue(0, 0); // return 1
subrectangleQueries.updateSubrectangle(0, 0, 2, 2, 100);
subrectangleQueries.getValue(0, 0); // return 100
subrectangleQueries.getValue(2, 2); // return 100
subrectangleQueries.updateSubrectangle(1, 1, 2, 2, 20);
subrectangleQueries.getValue(2, 2); // return 20
 ```

Constraints:
```
There will be at most 500 operations considering both methods: updateSubrectangle and getValue.
1 <= rows, cols <= 100
rows == rectangle.length
cols == rectangle[i].length
0 <= row1 <= row2 < rows
0 <= col1 <= col2 < cols
1 <= newValue, rectangle[i][j] <= 10^9
0 <= row < rows
0 <= col < cols
```

- [Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/1476_SubrectangleQueries.rb)
------------------------------------------------------------------------
## Problem 1. Two Sum (Easy - Logic Practice)

Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:
```
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
```

- [Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/1_TwoSum.rb)
------------------------------------------------------------------------
## Problem 876. Middle of the Linked List (Eash - Linked Lists)

Given a non-empty, singly linked list with head node head, return a middle node of linked list.

If there are two middle nodes, return the second middle node.

 

Example 1:
```
Input: [1,2,3,4,5]
Output: Node 3 from this list (Serialization: [3,4,5])
The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
Note that we returned a ListNode object ans, such that:
ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
```

Example 2:
```
Input: [1,2,3,4,5,6]
Output: Node 4 from this list (Serialization: [4,5,6])
Since the list has two middle nodes with values 3 and 4, we return the second one.
```

- [Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/876_MiddleofLL.rb)
------------------------------------------------------------------------
## Problem 707. Design Linked List ( Medium - Class Practice)

Design your implementation of the linked list. You can choose to use the singly linked list or the doubly linked list. A node in a singly linked list should have two attributes: val and next. val is the value of the current node, and next is a pointer/reference to the next node. If you want to use the doubly linked list, you will need one more attribute prev to indicate the previous node in the linked list. Assume all nodes in the linked list are 0-indexed.

Implement these functions in your linked list class:
```
- get(index) : Get the value of the index-th node in the linked list. If the index is invalid, return -1.
- addAtHead(val) : Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list.
- addAtTail(val) : Append a node of value val to the last element of the linked list.
- addAtIndex(index, val) : Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted.
- deleteAtIndex(index) : Delete the index-th node in the linked list, if the index is valid.
 ```

Example:
```
Input: 
["MyLinkedList","addAtHead","addAtTail","addAtIndex","get","deleteAtIndex","get"]
[[],[1],[3],[1,2],[1],[1],[1]]
Output:  
[null,null,null,null,2,null,3]

Explanation:
MyLinkedList linkedList = new MyLinkedList(); // Initialize empty LinkedList
linkedList.addAtHead(1);
linkedList.addAtTail(3);
linkedList.addAtIndex(1, 2);  // linked list becomes 1->2->3
linkedList.get(1);            // returns 2
linkedList.deleteAtIndex(1);  // now the linked list is 1->3
linkedList.get(1);            // returns 3
 ```

Constraints:
```
- 0 <= index,val <= 1000
- Please do not use the built-in LinkedList library.
- At most 2000 calls will be made to get, addAtHead, addAtTail,  addAtIndex and deleteAtIndex.
```

- [Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/707_MySingleLL.rb)
------------------------------------------------------------------------
## Problem 234. Palindrome Linked List ( Easy - LL Practice )

Given a singly linked list, determine if it is a palindrome.

Example 1:
```
Input: 1->2
Output: false
```

Example 2:
```
Input: 1->2->2->1
Output: true
```

Follow up:
- Could you do it in O(n) time and O(1) space?

- [Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/234_PalindromeLL.rb)
------------------------------------------------------------------------
## Problem 884. Uncommon Words from Two Sentences ( Easy - Hash Practice)

We are given two sentences A and B.  (A sentence is a string of space separated words.  Each word consists only of lowercase letters.)

A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.

Return a list of all uncommon words. 

You may return the list in any order.

Example 1:
```
Input: A = "this apple is sweet", B = "this apple is sour"
Output: ["sweet","sour"]
```

Example 2:
```
Input: A = "apple apple", B = "banana"
Output: ["banana"]
 ```

Note:
```
1. 0 <= A.length <= 200
2. 0 <= B.length <= 200
3. A and B both contain only spaces and lowercase letters.
```

- [Ruby Solution](https://github.com/gberzuela/LeetCode-Practice/blob/master/884_UncommonWords.rb)
------------------------------------------------------------------------