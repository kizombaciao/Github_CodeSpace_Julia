# Broadcast

x .~ Normal(0, 1)

for i in eachindex(x)
    x[i] ~ Normal(0, 1)
end


x .~ Normal.(μ, 1)

for i in eachindex(x)
    x[i] ~ Normal(μ[i], 1)
end

@. x ~ Normal(μ, 1)