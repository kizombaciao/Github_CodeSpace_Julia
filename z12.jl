using Plots

x = range(-5, 5; length = 400)
fz(x, y) = x^2*y^2/(x^4 + y^4)
plt = surface(x, x, fz;
    camera = (30, 65),
    color = :viridis,
    legend = false,
    axis = nothing,
    border = :none,
    cbar = false,
)

anim = @animate for i in vcat(30:60, 60:-1:30)
    plot!(plt, camera = (i, 65))
end

gif(anim, "animsurf.gif", fps = 15)
