struct Rectangle
    bottomleft::Vector{Float64}
    width
    height
end

r = Rectangle([1, 2], 3, 4)

isa(r, Rectangle)

methods(Rectangle)

r.width
getproperty(r, :width)

area(r::Rectangle) = r.width * r.height
area(r)

function vertices(r::Rectangle)
    x, y = r.bottomleft
    w, h = r.width, r.height
    return [[x, y], [x + w, y], [x + 2, y + h], [x, y + h]]
end
vertices(r)

fieldnames(Rectangle)
typeof(r)

r.bottomleft = [2; 2]
r.bottomleft[1] = 5
r.bottomleft
area(r)
vertices(r)

mutable struct MutableRectangle
    bottomleft::Vector{Float64}
    width
    height
end
mr = MutableRectangle([1, 2], 3, 4)
isa(mr, MutableRectangle)
mr.width
setproperty!(mr, :height, 2.5)
mr
area(mr)

const AbstractRectangle = Union{Rectangle,MutableRectangle}
Rectangle <: AbstractRectangle
MutableRectangle <: AbstractRectangle
perimeter(r::AbstractRectangle) = 2 * (r.width + r.height)
perimeter(r)
perimeter(mr)

abstract type AbstractPoint{T} end

struct Point{T<:Real} <: AbstractPoint{T}
    x::T
    y::T
end
isconcretetype(Point{Float64})
Point{Float64} <: Point <: AbstractPoint
Point{Float32} <: Point <: AbstractPoint
Point{Int64} <: Point <: AbstractPoint
subtypes(Point)

Point{Float64} <: Point{Real}
Point{Float64} <: AbstractPoint{Float64}
Point{Float64} <: AbstractPoint{Real}

coordinates(p::Point{Real}) = (p.x, p.y)
coordinates(Point(1, 2))
coordinates(Point(1.0, 2.0))

struct Point2{T<:Float64} <: AbstractPoint{T}
    x::T
    y::T
end
coordinates2(p::Point{Float64}) = (p.x, p.y)
coordinates2(Point(1, 2))
coordinates2(Point(1.0, 2.0))

coordinates(p::Point{<:Real}) = (p.x, p.y)
coordinates(Point(1, 2))
coordinates(Point(1.0, 2.0))

Base.show(io::IO, p::AbstractPoint) = print(io, coordinates(p))
Point(4, 2)
Point(0.2, 1.3)
Point(1, 2)
Point{Float32}(1, 2)
Point(1, 2.0)

struct Point3D{T<:Real} <: AbstractPoint{T}
    x::T
    y::T
    z::T
end
coordinates(p::Point3D) = (p.x, p.y, p.z)
Point3D(1, 2, 3)
Point3D{Float32}(1, 2, 3)

Point(x::Real, y::Real) = Point(promote(x,y)...)
Point(1,2.0)