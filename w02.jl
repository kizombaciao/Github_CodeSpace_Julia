using RCall, RDatasets

mtcars = dataset("datasets", "mtcars");

library(ggplot2)

ggplot($mtcars, aes(x = WT, y = MPG)) + geom_point()
