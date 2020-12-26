"Your optional docstring here"
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError("DNA strands are of differing length."))
    end
    N = 0
    for n = 1:length(a)
        if a[n] != b[n]
            N += 1
        end
    end
    N
end
