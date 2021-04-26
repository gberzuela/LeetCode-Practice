# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

=begin
   # brute force method
    
def two_sum(nums, target)
    for i in 0..nums.length-2
        for j in i+1..nums.length-1
            if nums[i] + nums[j] == target
                return [i, j]
            end
        end
    end
end

=end


# hash method: reduces time complexity but increases space complexity 
def two_sum(nums, target)
    hash = Hash.new
    for i in 0...nums.length
        hash[nums[i]] = i
    end
    
    for i in 0..nums.length
        if( hash.key?(target-nums[i]) && hash[target-nums[i]] != i )
            return i, hash[target-nums[i]]
        end
    end
end