-- Suppose the file mod.lua looks like this:
-- [check mod.lua]
-- we can use mod.lua's functionality:
local mod = require('mod') -- ru the file mod.lua

-- require is the standard way to include modules.

-- This works because mod here = M in mod.lua:
mod.sayHello() -- 'hello to Hrunkner'

-- this is wrong; sayMyName only exists in mod.lua:
-- mod.sayMyName() --error

-- Suposse mod2.lua contains "print('Hi!')".
-- local a = require('mod2') --prints 'Hi'
-- local b = require('mod2') -- doesnt print; a=b.

-- dofile is like require without caching:
-- dofile('mod2.lua') --> 'Hi'
-- dofile('mod2.lua') --> 'Hi' again!

-- loadfile loads a lua file but doesn't run it yet.
f = loadfile('mod.lua') -- call f() to run it.

-- load is loadfile for strings.
-- (loadstring is deprecated, use load instead)
g = load('print(343)') -- returns a function
g() -- prints out 343
