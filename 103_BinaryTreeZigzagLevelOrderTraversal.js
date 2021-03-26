/*
Given the root of a binary tree, return the zigzag level order traversal of its nodes' values. (i.e., from left to right, then right to left for the next level and alternate between).
*/

const zigzagLevelOrder = (root) => {
  const result = [];
  traverse(root, 0, result);
  return result;
};

const traverse = (root, level, result) => {
  if (!root) return result;

  if (!result[level]) result.push([]);

  if (level % 2) {
    result[level].unshift(root.value);
  } else {
    result[level].push(root.value);
  }

  if (root.left) traverse(root.left, level + 1, result);
  if (root.right) traverse(root.right, level + 1, result);
};

class BST {
  constructor(value) {
    this.value = value;
    this.left = null;
    this.right = null;
  }
}

// Example 1
const BST3 = new BST(3);
const BST9 = new BST(9);
const BST20 = new BST(20);
const BST15 = new BST(15);
const BST7 = new BST(7);

BST3.left = BST9;
BST3.right = BST20;

BST20.left = BST15;
BST20.right = BST7;

/*
    3
   / \
  9  20
    /  \
   15   7
 */

let result = zigzagLevelOrder(BST3);
console.log("Result -->", result);
console.log("Expected --> [[3],[20,9],[15,7]]");
