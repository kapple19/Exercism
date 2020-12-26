function score(x::Real, y::Real)
    r = sqrt(x^2 + y^2)
    if r <= 1
        pt = 10
    elseif r <= 5
        pt = 5
    elseif r <= 10
        pt = 1
    else
        pt = 0
    end
end
