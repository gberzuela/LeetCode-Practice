# @param {String} j
# @param {String} s
# @return {Integer}

def num_jewels_in_stones(j, s)
    jewelHash = Hash.new(0)
    j.each_char {|char| jewelHash[char] = 0}
    s.each_char do |char|
        if jewelHash.key?(char)
            jewelHash[char]+=1
        end
    end
        
    result = 0
    jewelHash.values.each {|x| result+=x}
    result
end