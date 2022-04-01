-- tables = lua's only compound data structure they are associative arrays
-- similar to php arrays or js bojects, they are hash-lookup dicts that can also be used as lists
-- using tables as dictionaries 7 maps:
-- dict literals have string keys by default:
t = {
    key1 = 'value1',
    key2 = false
}

-- string keys can use jk-like dot notation
print(t.key1) -- prints value1
t.newKey = {} -- adds a new key/value pair
t.key2 = nil -- removes key2 from tables

-- literal notation for any (non-nil) value as key:
u = {
    ['@!#'] = 'qbert',
    [{}] = 1729,
    [6.28] = 'tau'
}
print(u[6.28]) -- prints 'tau'

-- key matching is basically by value for numbers
-- and strings, but by identity for tables
a = u['@!#'] -- a = 'qbert'
b = u[{}] -- we might expect 1729 but its nil; the lookup fails because {} is not the same object as the one used to store the value

-- a one-table-param function call needs no parens:
function h(x)
    print(x.key1)
end

h {
    key1 = 'Sonmi~145'
} -- prints 'Sonmi~145'
-- h is the function call, it needs no parens

for key, val in pairs(u) do -- table iteration
    print(key, val)
end

-- using tables as lists / arrays:

-- list literals implicitly set up int keys
v = {'value1', 'value2', 1.21, 'gigawatts'}
for i = 1, #v do -- #v is the size of v for lists.
    print(v[i])
end
-- a 'list' is not a real type. v is just a table with consecutive integer keys, treated as a list
