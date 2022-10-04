using Plots

x = range(0, 2π; length=100)
y = sin.(x)
plot(x, y; seriestype=:scatter)

scatter(x, y)

x = range(-5, 5; length=200)
fz(x, y) = x^2 * y^2 / (x^4 + y^4)

kwargs = (
    color=:viridis,
    legend=false,
    cbar=false,
    axis=nothing,
    border=:none,
)

contourf(x, x, fz; kwargs...) # or plot(x, x, fz; seriestype = :contourf, kwargs...)

heatmap(x, x, fz; kwargs...)
surface(x, x, fz; camera = (25, 65), kwargs...)
