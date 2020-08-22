# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}

def kids_with_candies(candies, extra_candies)
    max = candies.max
    result = Array.new(candies.length)
    for x in 0...candies.length
        result[x] = (candies[x]+extra_candies) >= max ? true : false
    end
    return result
end