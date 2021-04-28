/*
https://leetcode.com/problems/search-a-2d-matrix/

Write an efficient algorithm that searched for a value in an m x n matrix. This matrix has the following properties:
- Integers in each row are sorted from left to right
- The first integer of each row is greater than the last integer of the previous row

Constraints:
- m == matrix.length
- n == matrix[i].length
- 1 <= m, n <= 100
- -104 <= matrix[i][j], target <= 104
*/

/**
 *
 * @param {Number[][]} matrix
 * @param {Number} target
 * @returns
 */

const searchMatrix = (matrix, target) => {
  let row = 0;
  let col = matrix[0].length - 1;

  while (row < matrix.length) {
    const current = matrix[row][col];

    if (current === target) return true;
    if (current < target) row++;
    else {
      col--;
      if (col < 0) row++;
    }
  }

  return false;
};

// Test 1
let matrix = [
  [1, 3, 5, 7],
  [10, 11, 16, 20],
  [23, 30, 34, 60],
];
let target = 3;
let Result = searchMatrix(matrix, target);
console.log({
  Inputs: { matrix, target },
  Result,
  Expected: true,
});
console.log("------------");

// Test 2
matrix = [
  [1, 3, 5, 7],
  [10, 11, 16, 20],
  [23, 30, 34, 60],
];
target = 13;
Result = searchMatrix(matrix, target);
console.log({
  Inputs: { matrix, target },
  Result,
  Expected: false,
});
console.log("------------");

// Test 3
matrix = [[1, 3]];
target = 2;
Result = searchMatrix(matrix, target);
console.log({
  Inputs: { matrix, target },
  Result,
  Expected: false,
});
console.log("------------");

// Test 4
matrix = [[1], [3]];
target = 0;
Result = searchMatrix(matrix, target);
console.log({
  Inputs: { matrix, target },
  Result,
  Expected: false,
});
console.log("------------");
