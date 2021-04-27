/*
https://leetcode.com/problems/transpose-matrix/

Given a 2D integer array "matrix", return the transpose of "matrix".

transpose - a matrix flipped over its main diagonal, switching the matrix's row and colum indices

Constraints:
- m == matrix.length
- n == matrix[i].length
- 1 <= m, n <= 1000
- 1 <= m * n <= 105
- -109 <= matrix[i][j] <= 109
*/

const transpose = (matrix) => {
  const result = new Array(matrix[0].length).fill(0).map(() => []);

  for (let row = 0; row < matrix.length; row++) {
    for (let col = 0; col < matrix[row].length; col++) {
      result[col][row] = matrix[row][col];
    }
  }

  return result;
};

// Test 1
let matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
];
let Result = transpose(matrix);
console.log({
  Inputs: matrix,
  Result,
  Expected: [
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
  ],
});
console.log("------------");

// Test 2
matrix = [
  [1, 2, 3],
  [4, 5, 6],
];
Result = transpose(matrix);
console.log({
  Inputs: matrix,
  Result,
  Expected: [
    [1, 4],
    [2, 5],
    [3, 6],
  ],
});
console.log("------------");

// Test 3
matrix = [
  [1, 2, 3, 10],
  [4, 5, 6, 11],
  [7, 8, 9, 12],
];
Result = transpose(matrix);
console.log({
  Inputs: matrix,
  Result,
  Expected: [
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [10, 11, 12],
  ],
});
console.log("------------");
