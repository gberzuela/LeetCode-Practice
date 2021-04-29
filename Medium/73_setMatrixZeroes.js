/*
https://leetcode.com/problems/set-matrix-zeroes/

Given an m x n matrix, if an element is 0, set its entire row and column to 0. Do it in-place.

Follow up:
- A straight forward solution using O(mn) space is probably a bad idea.
- A simple improvement uses O(m + n) space, but still not the best solution.
- Could you devise a constant space solution?

Constraints:
- m == matrix.length
- n == matrix[0].length
- 1 <= m, n <= 200
- -231 <= matrix[i][j] <= 231 - 1
*/

/**
 *
 * @param {Number[][]} matrix
 * @returns
 */

// O(m + n) space
// const setZeroes = (matrix) => {
//   let rowLen = matrix.length;
//   let colLen = matrix[0].length;

//   let rowsHash = {};
//   let colsHash = {};

//    // Mark any row or col that need to be made zero
//   for (let i = 0; i < rowLen; i++) {
//     for (let j = 0; j < colLen; j++) {
//       if (!matrix[i][j]) {
//         rowsHash[i] = true;
//         colsHash[j] = true;
//       }
//     }
//   }
//  // Iterate through the matrix one more and if the element is in a row || col in a hash, make it 0
//   for (let i = 0; i < rowLen; i++) {
//     for (let j = 0; j < colLen; j++) {
//       if (rowsHash[i] || colsHash[j]) matrix[i][j] = 0;
//     }
//   }

//   return matrix;
// };

// O(1) space
const setZeroes = (matrix) => {
  let isCol = false;
  let rowLen = matrix.length;
  let colLen = matrix[0].length;

  for (let i = 0; i < rowLen; i++) {
    /*
        If the first cell for both first row and first col is the same
            we can use an additional variable for either the first row/col
        We use this variable for the first col and matrix[0][0] for the first row
      */
    if (!matrix[i][0]) isCol = true;

    for (let j = 0; j < colLen; j++) {
      if (!matrix[i][j]) {
        matrix[0][j] = 0;
        matrix[i][0] = 0;
      }
    }
  }

  // Iterate through matrix again and using the first row and first col, update the elements
  for (let i = 1; i < rowLen; i++) {
    for (let j = 1; j < colLen; j++) {
      if (!matrix[i][0] || !matrix[0][j]) matrix[i][j] = 0;
    }
  }

  // Check if the first row needs to be zero
  if (!matrix[0][0]) {
    for (let j = 0; j < colLen; j++) {
      matrix[0][j] = 0;
    }
  }

  // Check if the first col needs to be zero
  if (isCol) {
    for (let i = 0; i < rowLen; i++) {
      matrix[i][0] = 0;
    }
  }

  return matrix;
};

// Test 1
let matrix = [
  [1, 1, 1],
  [1, 0, 1],
  [1, 1, 1],
];
let Result = setZeroes(matrix);
console.log({
  Inputs: { matrix },
  Result,
  Expected: [
    [1, 0, 1],
    [0, 0, 0],
    [1, 0, 1],
  ],
});
console.log("------------");

// Test 2
matrix = [
  [0, 1, 2, 0],
  [3, 4, 5, 2],
  [1, 3, 1, 5],
];
Result = setZeroes(matrix);
console.log({
  Inputs: { matrix },
  Result,
  Expected: [
    [0, 0, 0, 0],
    [0, 4, 5, 0],
    [0, 3, 1, 0],
  ],
});
console.log("------------");
