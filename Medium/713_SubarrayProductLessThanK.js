function numSubarrayProductLessThanK(nums, k) {
    // Base case
    if (nums.length == 0 || k <= 1) {return 0;}
    
    // Sliding window method: *DID NOT COMPLETELY SOLVE MYSELF*
    //  Iterate with a right bounday and incrementing the product
    //  If we come across product >= k, we /= the left boundy and increment left
    //  As we move the left boundary, we are still checking all possible subarrays
    //     Ex. nums = [10,5,2,6], k = 100
    //      We get to a point where left = 1, right == 3
    //      All NEW possible combinations in that subarray are [6], [2,6], and [5,2,6]
    //      Three NEW possible combinations = right - left + 1 
    let result = 0;
    let left = 0;
    let product = 1;
    for (let right = 0; right < nums.length; right++) {
        product *= nums[right];
        while (product >= k) {
            product /= nums[left++];
        }
        // Couldn't figure out the number of NEW possible combinations 
        result += right - left + 1;
    }
    
    return result;
};

console.log(numSubarrayProductLessThanK([10,5,2,6], 100));