function triangle(N)
    if N < 0
        throw(DomainError(N, "Input must be non-negative integer."))
    end
    rows = []
    for n ∈ 1:N
        bin(m) = binomial(n-1,m)
        push!(rows, map(bin, 0:(n-1)))
    end
    return rows
end
