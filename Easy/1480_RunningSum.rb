# @param {Integer[]} nums
# @return {Integer[]}

def running_sum(nums)
    result = Array.new(nums.length)
    result[0] = nums[0]
    for i in 1...nums.length
        result[i] = nums[i]+result[i-1]
    end
    result
end