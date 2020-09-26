# @param {Integer[]} nums
# @return {String}

# n = nums.length
# TC: O(nlogn)
#   Not entirely sure about TC of custom sorting 
# SC: O(n)
#   Only use another array of size n to store string 
#   values of nums
def largest_number(nums)
    # Convert all values in nums to string and store them in an array
    strings = Array.new()
    nums.each do |num|
        strings << num.to_s
    end
    
    # Sort comparator compares the order of concatentation
    # !(bang) operator to sort the array in place instead of 
    #   having to store into another variable
    # Ex. str = ["10", "2"]
    #   "102" <=> "210" = -1
    #   We negate the expression because we want it in descending order
    strings.sort! { |a,b| -(a+b <=> b+a) }
    
    result = ""
    strings.each { |num| result += num }
    # Return is weird for the edge case that nums = [0,0] 
    # First convert to int to remove the second 0, then back to string for
    #   proper return type
    return result.to_i.to_s
end