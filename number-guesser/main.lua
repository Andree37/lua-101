-- Simple guess the number game
-- used to learn how to program in lua
local M = {}

local max = 100

function M.play()
    local rand = math.random(1, max)

    io.write("pick a number to guess\n")

    repeat
        guess = io.read("n")
        if guess > rand then
            print('Your guess is too high' .. guess .. '\n')
        elseif guess < rand then
            print('Your guess is too low: ' .. guess .. '\n')
        end
    until guess == rand

    print("You won!")
end

-- play the game
M.play()

return M
