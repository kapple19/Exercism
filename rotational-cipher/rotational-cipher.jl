function rotate(key::Int, input::String)
    N = length(input)
    output = "";
    for n in 1:N
        ch = input[n]
        if ('a' <= ch && ch <= 'z')
            ch += key
            while ch > 'z'
                ch -= 26;
            end
        elseif ('A' <= ch && ch <= 'Z')
            ch +=key
            while ch > 'Z'
                ch -= 26;
            end
        end
        output *= string(ch);
    end
    return output
end

function rotate(key::Int, input::Char)
    if ('a' <= input && input <= 'z')
        input += key
        while input > 'z'
            input -= 26;
        end
    elseif ('A' <= input && input <= 'Z')
        input += key
        while input > 'Z'
            input -= 26;
        end
    end
    return input
end