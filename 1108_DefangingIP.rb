# @param {String} address
# @return {String}

def defang_i_paddr(address)
    splitString = address.split(/([.])/)
    splitString = splitString.map {|x| x=="." ? "[.]" : x}
    splitString.join()
end