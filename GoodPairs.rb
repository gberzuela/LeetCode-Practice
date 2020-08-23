# @param {Integer[]} nums
# @return {Integer}

def num_identical_pairs(nums)
    if nums.length == 1
        return 0
    end
    
    result = 0
    for i in 0...nums.length
        for j in i+1...nums.length
            result = nums[i]==nums[j] ? result+=1 : result
        end
    end
    result
end