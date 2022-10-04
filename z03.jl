supertype(Float64)

function supertypes_tree(T::Type, level::Int=0)
    isequal(T, Any) && return
    println(repeat("   ", level), T)
    supertypes_tree(supertype(T), level + 1)
    return
end

supertypes_tree(Float64)

Float64 <: AbstractFloat <: Real <: Number

subtypes(Number)

function subtypes_tree(T::Type, level::Int = 0)
    println(repeat("   ", level), T)
    subtypes_tree.(subtypes(T), level + 1)
    return
end

subtypes_tree(Number)
supertypes_tree(String)

