# @param {Integer} low
# @param {Integer} high
# @return {Integer[]}
=begin
    Pattern of finding sequential digits would be to increment previous digit by some 
        pattern of 1's depending on how long the digit is.
        Ex. 12 + 11 = 23
            123 + 111 = 234
            1234 + 1111 = 2345
=end
def sequential_digits(low, high)
    # Initialize return array
    result = Array.new()
    # We always start at 12 as that is the first number with sequential digits
    start = 12
    # Next start is used to start at the next power of 10.
    #   Ex. 12 would go to 100. We know we stop finding sequential digits when 
    #       the number%10 == 0.
    #       When we reach 100, 12*10+next_start = 123
    next_start = 3
    increment = 11
    check = start
    
    # Loop until we reach our upper boundary
    while check <= high
        if check % 10 == 0
            start = start * 10 + next_start
            next_start += 1
            check = start
            # Change how we increment by a multiple of 10 and add 1
            #   if increment is 11 and we need to go to the next start
            #       increment is now 11*10+1 = 111
            increment = increment * 10 + 1
        elsif low <= check && check <= high
            result.push(check)
            check += increment
        else
            check += increment
        end
    end
    
    p result
end