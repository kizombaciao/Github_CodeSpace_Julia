using Plots

x = range(0, 2π; length=100)
plot(x, [sin, cos, tan, sinc];
    layout=4,
    linewidth=2,
    legend=false,
    title=["1" "2" "3" "4"]
)

plot(x, [sin, cos, tan, sinc];
    layout = grid(4, 1; heights = [0.1 ,0.4, 0.4, 0.1]),
    linewidth = 2,
    legend = false,
)

l = @layout [a ; b{0.3w} c]
plot(x, [sin, cos, tan]; layout = l, linewidth = 2, legend = false)

linewidth = range(1, 20; length = 100)
p1 = plot(x, sin; legend = false, line_z = 1:100, color = :viridis, linewidth)
p2 = plot(x, cos; legend = false, line_z = 1:100, color = :Blues_9, linewidth)
p3 = plot(x, tan; legend = false, line_z = 1:100, color = :hsv, linewidth)

l = @layout [a ; b{0.3w} c]
plot(p1, p2, p3; layout = l)
