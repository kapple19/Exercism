function raindrops(number::Int)
    ret = ""
    if number % 3 == 0
        ret *= "Pling"
    end
    if number % 5 == 0
        ret *= "Plang"
    end
    if number % 7 == 0
        ret *= "Plong"
    end
    if length(ret) == 0
        return string(number)
    else
        return ret
    end
end
