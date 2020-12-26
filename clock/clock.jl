mutable struct Clock
    Min::Integer
    Sec::Integer
    Clock(Min, Sec) = new(Min += floor(Sec/60), Sec % 60)
end
