/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */

var twoSum = function(nums, target) {
    const hash = new Map();
    for (let i = 0; i < nums.length; i++) {
        hash.set(nums[i], i);
    }
    
    for (let i = 0; i <= nums.length; i++) {
        if ( hash.has(target-nums[i]) && hash.get(target-nums[i]) != i) {
            return [i, hash.get(target-nums[i])];
        }
    }
};