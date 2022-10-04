using Plots

t = range(0, 2π; length=100)
plot(t, [sin, cos]; label=["sine" "cosine"])

plot(sin, x -> sin(2x), t; linewidth=2, label="")

plot(sin, x -> sin(2x), 0, 2π, 100; linewidth=2, label="")

fx(t; a = 4.23, b = 2.35) = (a + b)*cos(t) - b*cos((a/b + 1)*t)
fy(t; a = 4.23, b = 2.35) = (a + b)*sin(t) - b*sin((a/b + 1)*t)

plot(fx, fy, -15, 20, 500;
    linewidth = 2,
    legend = false,
    axis = nothing,
    border = :none,
)
