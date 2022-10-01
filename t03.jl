@model function demo(y; σ²=1.0)
    n = length(y)

    σ² ~ InverseGamma(2, 3)
    σ = √σ²
    x ~ Normal(0, σ)

    y ~ MvNormal(x * ones(n), 1.0)

    return (; σ, x, y, whatever=100 .* y)
end

m = demo(ones(10));
m()

