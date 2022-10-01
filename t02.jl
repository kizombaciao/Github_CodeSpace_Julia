using Turing

@model function demo(y; σ²=1.0)
    n=length(y)

    σ² ~ InverseGamma(2, 3)
    σ = √σ²
    x ~ Normal(0, σ)

    y ~ MvNormal(x * ones(n), 1.0)
end

m = demo(ones(10))