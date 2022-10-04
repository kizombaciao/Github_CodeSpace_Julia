using RDatasets, DataFrames

iris = dataset("datasets", "iris")
first(iris, 6)

describe(iris)

iris[2:4, [:SepalLength, :Species]]

iris[2:4, Not([:SepalLength, :Species])]

using Query

table = @from row in iris begin
    @where row.SepalLength >= 6 && row.SepalWidth >= 3.4
    @select {
        row.Species,
        SepalSum = row.SepalLength + row.SepalWidth,
        PetalSum = row.PetalLength + row.PetalWidth,
    }
    @collect DataFrame
end
