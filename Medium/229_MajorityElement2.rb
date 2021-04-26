# @param {Integer[]} nums
# @return {Integer[]}

# Boyer-Moore Voting Algorithm
#   Keep a running counter that increments everytime the current
#       value == candidate and decrements otherwise
#   When counter == 0 then we change the candidate
#   Iterate through the array again to confirm that our final candidate 
#       is our answer
def majority_element(nums)
    # there can be at most two nums that occur > n/3 times
    # initialize those values and their counters
    candidate1 = nil
    count1 = 0
    candidate2 = nil
    count2 = 0
    
    nums.each do |x|
        # Check that we already have candidates and increment their counters
        if !candidate1.nil? && x == candidate1
            count1 += 1
        elsif !candidate2.nil? && x == candidate2
            count2 += 1
        # Changes candidates when their count == 0
        elsif count1 == 0
            candidate1 = x
            count1 += 1
        elsif count2 == 0 
            candidate2 = x
            count2 += 1
        # If x is neither of the candidates, decrement the counter
        else
            count1 -= 1
            count2 -= 1
        end
    end
    
    # Initialize return array and reset counters to check how often the
    #   candidates appear
    result = Array.new()
    count1 = 0
    count2 = 0
    nums.each do |x|
        count1 += !candidate1.nil? && candidate1 == x ? 1 : 0
        count2 += !candidate2.nil? && candidate2 == x ? 1 : 0 
    end
    
    # Only add candidates to the array if their count is > n/3
    result << candidate1 if count1 > nums.length/3
    result << candidate2 if count2 > nums.length/3
    
    result
end