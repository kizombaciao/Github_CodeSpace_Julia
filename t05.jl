# Loop

using Turing

@model function demo(::Type{TV}=Vector{Float64})
    y = TV(undef, J)
    for j = 1:J
        Normal(θ[j], σ[j])
    end
end

