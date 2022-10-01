using Turing

@model function demo(n; x=missing)
    # If `x` is `missing`, we consider it as a random variable to be sampled.
    if x === missing
        # Since trying to do `x[i] ~ ...` doesn't make sense when `x === missing`
        # we need to replace `x` with an `Array` that can hold the results.
        x = Vector(undef, n)
    end

    x .~ Normal()
end

@model function demo(n, ::Type{T}; x=missing) where {T}
    # If `x` is `missing`, we consider it as a random variable to be sampled.
    if x === missing
        # Since trying to do `x[i] ~ ...` doesn't make sense when `x === missing`
        # we need to replace `x` with an `Array` that can hold the results.
        x = Vector{T}(undef, n)
    end

    x .~ Normal()
end

@model function demo(n, ::Type{T}; x=missing) where {T}
    x = x === missing ? Vector{T}(undef, n) : x
    x .~ Normal()
end