using Plots

x = range(0, 2π; length = 100)
y = sin.(x)
plot(x, y)

y = hcat(sin.(x), cos.(x))
plot(x, y)

plot!(x, sin.(x .+ π/4))

plt = plot(x, hcat(sin.(x), cos.(x)))
plot!(plt, x, sin.(x .+ π/4))

x = range(0, 2π; length = 100)
y = hcat(sin.(x), cos.(x))
plot(x, y;
    label = ["sine" "cosine"],
    xguide = "x",
    yguide = "y",
    legend = :bottomleft,
    title = "Trigonometric functions",
    xticks = (0:0.5π:2π, ["0", "0.5π", "π", "1.5π", "2π"]),
    color = [:red :blue],
    linestyle = [:dash :dot],
    linewidth = [2 4],
)
