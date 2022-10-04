product(x,y) = x * y

product(x::Number, y::Number) = x * y
methods(product)

product("a", "b")

@which product(1, 4.5)

@which product("a", :a)

@which product("a", "b")

product("a", "b")