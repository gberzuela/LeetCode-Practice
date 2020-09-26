# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}

def find_poisoned_duration(time_series, duration)
    # Base case: Teemo never attacked
    return 0 if time_series.length == 0
    
    # We check the time interval between attacks. Ashe will only take up to duration amount of damage
    #   if the interval between attacks are great enough. Otherwise, Ashe just takes poison damage equal
    #   to the interval between attacks before getting reapplied with more poison
    result = 0
    for i in 1...time_series.length
        result += (time_series[i] - time_series[i-1]) < duration ? time_series[i] - time_series[i-1] : duration
    end
    # We add duration because the last value in time_series is still an attack that will apply poison
    # We need to do this because out loop only checks the total damage for intervals within the array
    result + duration
end