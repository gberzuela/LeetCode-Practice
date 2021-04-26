/**
 * @param {number} n
 * @return {number}
 */

 // Fibonacci Sequence
var climbStairs = function(n) {
    // Dynamic Programming Method
    /*
    const memo = new Array(n+1);
    memo[0] = 1;
    memo[1] = 1;
    for (let i = 2; i <= n; i++) {
        memo[i] = memo[i-2] + memo[i-1];
    }
    return memo[n];*/
    
    // Iterative Method: No extra space
    if (n==1) { return 1; }
    let first = 1;
    let second = 1;
    for (let i = 2; i <= n; i++) {
        let third = first + second;
        first = second;
        second = third;
    }
    
    return second;
};