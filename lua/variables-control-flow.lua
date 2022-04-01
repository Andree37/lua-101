-- a comment like this
num = 2 -- all numbers are doubles

s = 'walternate' -- immutable strings like python
t = "this is also fine"
u = [[ this allows 
    for start and end on multi lines]]
t = nil -- undefined t; Lua has garbage collection

-- Blocks are denoted with keywords like do/end
while num < 50 do
    num = num + 1
end

-- if Clauses:
if num > 40 then
    print('over 40')
elseif s ~= 'walternate' then -- ~= is not equals instead of !=
    io.write('not over 40\n') -- defaults to stdout.
else
    -- variables are global by default
    thisIsGlobal = 5 -- camel case is common

    -- How to make a variable local:
    local line = io.read() -- reads next stdin line

    -- string concatenation uses the .. operator
    print('Winter is coming, ' .. line)
end

-- Undefined varaibles return nil.
-- This is not an error:
foo = anUnknownVariable -- foo = nil

aBoolValue = false

-- Only nil and false are falsy; 0 and '' are true
if not aBoolValue then
    print('twas false')
end

-- 'or' and 'and' are short-circuted
-- this is similar to the a?b:c operator in C/js:
ans = aBoolValue and 'yes' or 'no' -- > 'no'

karlSum = 0

for i = 1, 100 do -- the range includes both ends
    karlSum = karlSum + i
end

-- use "100, 1, -1" as the range to count down:
fredSum = 0
for j = 100, 1, -1 do
    fredSum = fredSum + j
end

-- In general, the range is begin, end [, step].

-- another loop construct
repeat
    print('the way of the future')
    num = num + 1
until num == 0

