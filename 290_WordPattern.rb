# @param {String} pattern
# @param {String} str
# @return {Boolean}

def word_pattern(pattern, str)
    hash = Hash.new()
    split_str = str.split(" ")
    
    # Base case
    if pattern.length != split_str.length
        return false
    end
    
    # Hash key -> pattern
    # Hash value -> words
    # Assign values based on whether the hash contains the key && value already
    for i in 0...split_str.length
        if !(hash.has_key?(pattern[i])) && !(hash.has_value?(split_str[i]))
            hash[pattern[i]] = split_str[i]
        end
    end
     
    # Iterate through the input str and check if it matches pattern
    for i in 0...split_str.length
        if hash[pattern[i]] != split_str[i]
            return false
        end
    end
    
    return true
end