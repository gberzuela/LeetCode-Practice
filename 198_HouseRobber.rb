# @param {Integer[]} nums
# @return {Integer}

# Dynamic programming method
def rob(nums)
    return 0 if nums.length == 0
    
    dp = Array.new
    dp[0] = 0
    dp[1] = nums[0]
    
    for i in 1...nums.length
        dp[i+1] = [dp[i], dp[i-1] + nums[i]].max
    end
    
    return dp[nums.length]
end