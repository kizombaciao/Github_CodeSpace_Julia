using Plots

n = 1000
t = range(0, 2π; length = n)

fx(t) = cos(3t)
fy(t) = sin(2t)

linewidth = vcat(
    range(1, 50; length = n ÷ 2),
    range(50, 1; length = n - n ÷ 2)
)

c = palette(:viridis, 2);
typeof(c)

c = collect(palette(:viridis, 2))

color = vcat(
    collect(palette(:viridis, n ÷ 2)),
    collect(palette(:viridis, n - n ÷ 2; rev = true))
)

plot(fx.(t), fy.(t);
    linewidth,
    color,
    lims = (-1.2, 1.2),
    legend = false,
    axis = nothing,
    border = :none,
)
