# @param {Integer[]} nums
# @return {Integer}
=begin
    Boyer-Moore Voting Algorithm:
        Keep a candidate and a running count that increments
            when the candidate == value in array and decrements
            otherwise.
        If count is decremented to 0, change the candidate.
        Iterate through array one more time to confirm the 
            candidate appears greater than certain amount of time
        If we want > n/2, there will be at most ONE candidate
        If we want > n/3, there will be at most TWO candidates
        etc.
=end
def majority_element(nums)
    candidate = nil
    count = 0
    
    nums.each do |x|
        candidate = x if candidate.nil? || count == 0
        count += candidate == x ? 1 : -1
    end
    
    count = 0
    nums.each do |x|
        count += candidate == x ? 1 : 0
    end
    
    return candidate
end