"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    input_lower = lowercase(input)
    for letter = 'a':'z'
        if letter ∉ input_lower
            return false
        end
    end
    return true
end