using Plots

x = range(0, 2π; length=100)
y = sin.(x)
plot(x, y; seriestype=:scatter)
