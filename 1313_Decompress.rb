# @param {Integer[]} nums
# @return {Integer[]}
def decompress_rl_elist(nums)
    result = Array.new()
    
    index = 0
    while index < nums.length
        for i in 0...nums[index]
            result << nums[index+1]
        end
        
        index += 2
    end
    
    result
end