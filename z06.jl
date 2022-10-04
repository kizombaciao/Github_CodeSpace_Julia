using Plots

n = 200
x = range(0, 2π; length=n)
linewidth = range(1, 50; length=n)
color = palette(:viridis, n)
xlims = (0, 7)
ylims = (-1.2, 1.2)
label = ""

plot(x, sin.(x); linewidth, color, label, xlims, ylims)

plot(x, [sin.(x) cos.(x)]; linewidth, color = [color :red], label, xlims, ylims)

plotattr(:Series)
plotattr("title")
