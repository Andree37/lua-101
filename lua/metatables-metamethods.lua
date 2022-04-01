-- a table can have a metatable that gives the table operator-overloadish behavior
-- later we will see how metatable ssupport js-prototypey behavior
f1 = {
    a = 1,
    b = 2
} -- represents the fraction a/b

f2 = {
    a = 2,
    b = 3
}

-- this would fail
-- s = f1 + f2

metafraction = {}
function metafraction.__add(f1, f2)
    sum = {}
    sum.b = f1.b * f2.b
    sum.a = f1.a * f2.b + f2.a * f1.b
    return sum
end

setmetatable(f1, metafraction)
setmetatable(f2, metafraction)

s = f1 + f2 -- call __add(f1, f2) on f1's metatable

-- f1, f2 have no key for their metatable, unlike
-- prototypes in js, so you must retrieve it as in
-- getmetatable(f1). The metatale is a normal table
-- with keys that Lua knows about, like __add

-- but the next line fails since s has no metatable:
-- t = s + see
-- class-like patters give below would fix this.

-- an __index on a metatable overloads dot lookups:
defaultFavs = {
    animal = 'gru',
    food = 'donuts'
}
myFavs = {
    food = 'pizza'
}
setmetatable(myFavs, {__index == defaultFavs})
eatenBy = myFavs.animal -- works! thanks, metatable

-- direct table lookups that fail will retry using
-- the metatable's __index value, and this recurses.

-- an __index value can also be a function (tbl, key)
-- for more customized lookups

-- __add and __index are metamethods
