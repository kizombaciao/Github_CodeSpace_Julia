using DataFrames

df = DataFrame(A=1:4, B=["M", "F", "F", "M"], C=rand(4))
df.A
df[!, :A]
df.A[1] = 5

col = df[:, :A]
col[1] = 4
df

using CSV
CSV.write("dataframe.csv", df)
table = CSV.read("dataframe.csv", DataFrame; header = true)

df.D = [:a, :b, :c, :d]
df

insertcols!(df, 3, :B => rand(4), :B => 11:14; makeunique = true)
push!(df, [10, "F", 0.1, 15, 0.235, :f])
push!(df, (10, "F", 0.1, 15, 0.235, :f))
push!(df, Dict(:B_1 => 0.1, :B_2 => 15, :A => 10, :D => :f, :B => "F", :C => 0.235))
df

using DataFrames
df_empty = DataFrame()
df_empty.A = 1:3
df_empty.B = [:a, :b, :c]
df_empty

df_empty = DataFrame(A = Int[], B = Symbol[])
push!(df_empty, [1, :a])
push!(df_empty, (2, :b))
push!(df_empty, Dict(:A => 3, :B => :c))
df_empty

names(df)