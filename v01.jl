struct Rectangle
    bottomleft::Vector{Float64}
    width
    height
end

r = Rectangle([1,2], 3, 4)

isa(r, Rectangle)

methods(Rectangle)

r.width
getproperty(r, :width)

area(r::Rectangle) = r.width * r.height
area(r)

function vertices(r::Rectangle)
    x, y = r.bottomleft
    w, h = r.width, r.height
    return [[x, y], [x+w, y], [x+2, y+h], [x, y+h]]
end
vertices(r)

fieldnames(Rectangle)
typeof(r)

r.bottomleft = [2;2]
r.bottomleft[1] = 5
r.bottomleft
area(r)
vertices(r)

mutable struct MutableRectangle
    bottomleft::Vector{Float64}
    width
    height
end
mr = MutableRectangle([1,2], 3, 4)
isa(mr, MutableRectangle)
mr.width
setproperty!(mr, :height, 2.5)
mr
area(mr)

const AbstractRectangle = Union{Rectangle, MutableRectangle}
Rectangle <: AbstractRectangle
MutableRectangle <: AbstractRectangle
perimeter(r::AbstractRectangle) = 2 * (r.width + r.height)
perimeter(r)
perimeter(mr)

abstract type AbstractPoint{T} end

struct Point{T <: Real} <: AbstractPoint{T}
    x::T
    y::T
end
isconcretetype(Point{Float64})
