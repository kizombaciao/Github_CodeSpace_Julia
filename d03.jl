using StatsPlots

@df iris scatter(
    :SepalLength,
    :SepalWidth;
    group = :Species,
    xlabel = "SepalLength",
    ylabel = "SepalWidth",
    marker = ([:d :h :star7], 8),
)

@df iris marginalkde(
    :SepalLength,
    :SepalWidth;
    xlabel = "SepalLength",
    ylabel = "SepalWidth",
)

@df iris corrplot(
    cols(1:4);
    grid = false,
    nbins = 15,
    fillcolor = :viridis,
    markercolor = :viridis,
)

