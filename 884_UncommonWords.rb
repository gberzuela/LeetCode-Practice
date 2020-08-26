# @param {String} a
# @param {String} b
# @return {String[]}

def uncommon_from_sentences(a, b)
    result = Array.new
    hash = Hash.new
    
    a.split.each { |word| hash.key?(word) ? hash[word] += 1 : hash[word] = 1 }
    b.split.each { |word| hash.key?(word) ? hash[word] += 1 : hash[word] = 1 }
    
    hash.each { |key, value| value == 1 ? result << key : result}
    
    result
end