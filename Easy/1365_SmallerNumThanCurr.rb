# @param {Integer[]} nums
# @return {Integer[]}

=begin
    Sort in descending order
        O(log(n)) || O(nlog(n))
    Create hash
        Compare next value: if less than, then everything after it is smaller; length - (index+1)
    Create return array
        Loop through originial array and add the value corresponding to the hash
=end

def smaller_numbers_than_current(nums)
    # Sort in descending order
    sorted = nums.sort { |a, b| b <=> a }
    hash = Hash.new()
    
    for i in 0...sorted.length
        if i != sorted.length - 1 && sorted[i] > sorted[i+1]
            hash[sorted[i]] = sorted.length - i - 1
        elsif i == sorted.length - 1
            hash[sorted[i]] = 0
        end
    end
    
    result = Array.new
    nums.each { |num| result << hash[num] }
    
    result
end