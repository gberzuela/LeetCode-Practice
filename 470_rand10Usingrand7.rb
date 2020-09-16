# The rand7() API is already defined for you.
# def rand7()
# @return {Integer} a random integer in the range 1 to 7

=begin
    Discard and roll again method:
    1. rand49()
        => 7*(rand7() - 1) + rand7() ... (returns values between 1-49)
    2. Keep "rolling the die" so our range is 1-40
        => dice > 40 because it's the highest product of 10
    3. Get the remainder and add 1 to be within 1-10
=end

# @return {Integer} a random integer in the range 1 to 10
def rand10()
    dice = 41
    
    while dice > 40
        dice = 7*(rand7() - 1) + rand7()
    end
    
    return dice%10+1
end

=begin
    Example:
    Implement rand7() using rand5()
    def rand5()
    @return {Integer} a random integer in the range 1-5

    def rand7()
        dice = 22

        while dice > 21
            5*(rand5() - 1) + rand5()
        end

        return dice%7+1
    end
=end