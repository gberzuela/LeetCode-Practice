# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}
def can_complete_circuit(gas, cost)
    # find all valid starting points such that gas[i] >= cost[i]
    # check all starting points up until starting point - 1 and see if to it
    #   possible to finish the circuit
    starting = Array.new()
    for i in 0...gas.length
        starting << i if gas[i] >= cost[i]
    end
    
    starting.each do |index|
        # have our check start at the next index
        #   start at index 0 if we are already at the end
        check = index == gas.length - 1 ? 0 : index + 1
        # begin out net gas consumption with our given index
        net = gas[index] - cost[index]
        
        while check != index
            net += gas[check] - cost[check]
            # break out of this loop if this index reaches a negative net value
            break if net < 0
            check = check == gas.length - 1 ? 0 : check + 1
        end
        
        return index if net >= 0
    end
    
    return -1