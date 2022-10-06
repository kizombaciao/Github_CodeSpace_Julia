using BSON

BSON.bson("test2.bson", a = [1+2im, 3+4im], b = "Hello, World!")

data = Dict(:a => [1+2im, 3+4im], :b => "Hello, World!")

BSON.bson("test1.bson", data)
