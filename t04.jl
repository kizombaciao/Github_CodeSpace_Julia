using Turing

@model function demo(y; σ²=1.0, n = y isa AbstractArray ? length(y) : 1)
    σ² ~ InverseGamma(2, 3)
    σ = √σ²
    x ~ Normal(0, σ)

    y ~ MvNormal(x * ones(n), 1.0)

    return (; σ, x, y, whatever=100 .* y)
end

m = demo(missing, n=10)
m()

m = demo(missing; σ² = missing, n=10)
m()
