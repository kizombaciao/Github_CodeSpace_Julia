using Plots

n = 300
plt = plot(Float64[], [sin, cos];
    legend=false,
    xlims=(0, 6π),
    ylims=(-1.1, 1.1),
    linewidth=range(1, 20; length=n),
    color=palette(:viridis, n),
    axis=nothing,
    border=:none
)

anim = Animation()

for x in range(0, 6π; length = n)
    push!(plt, x, [sin(x), cos(x)])
    frame(anim)
end

gif(anim, "animsincos.gif", fps = 15)
