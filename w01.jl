subtypes(Cint)
supertype(Cint)
supertype(Signed)
supertype(Integer)

mycompare(a, b)::Cint = sign(a - b)

mycompare_c = @cfunction(mycompare, Cint, (Ref{Cdouble}, Ref{Cdouble}))

A = [1.3, -2.7, 4.4, 3.1];

ccall(:qsort, Cvoid, (Ptr{Cdouble}, Csize_t, Csize_t, Ptr{Cvoid}),
             A, length(A), sizeof(eltype(A)), mycompare_c)

A