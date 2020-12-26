function secret_handshake(code::Integer)
    bnum = string(code, base=2)
    shake = []
    N = length(bnum)
    if N >= 1
        if bnum[end] == '1'
            push!(shake, "wink")
        end
    end
    if N >= 2
        if bnum[end-1] == '1'
            push!(shake, "double blink")
        end
    end
    if N >= 3
        if bnum[end-2] == '1'
            push!(shake, "close your eyes")
        end
    end
    if N >= 4
        if bnum[end-3] == '1'
            push!(shake, "jump")
        end
    end
    if N >= 5
        if bnum[end-4] =='1'
            return reverse(shake)
        end
    end
    return shake
end
