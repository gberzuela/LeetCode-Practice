# @param {Integer[][]} trips
# @param {Integer} capacity
# @return {Boolean}

def car_pooling(trips, capacity)
    # n = trips.length

    # sort trips by start_destination
    # TC: O(nlogn)
    # SC: O(n)
    sorted = trips.sort_by { |trip| trip[1] }

    # hash:
    #   key -> end destination
    #   value -> how many passengers need to be dropped off there
    # TC: O(n)
    # SC: O(n)
    check = Hash.new()
    for i in 0...sorted.length
        if check.has_key?(sorted[i][2])
            check[sorted[i][2]] += sorted[i][0]
        else
            check[sorted[i][2]] = sorted[i][0]
        end
    end
    
    # store end destinations in order
    # TC: O(nlogn)
    # SC: O(n)
    dropoffs = check.keys.sort

    # TC: O(n)? while loop will never run n times
    # SC: O(1)
    riders = 0
    for i in 0...sorted.length
        # first check if the next pick up location passes 
        #   any end destinations and remove all the passengers
        while dropoffs[0] <= sorted[i][1]
            riders -= check[dropoffs.shift]
        end

        # pick up new passengers then check if we are over capacity
        riders += sorted[i][0]
        return false if riders > capacity
    end

    return true
end

p car_pooling([[3,2,7],[3,7,9],[8,3,9]], 11)