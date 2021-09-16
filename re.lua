--[[
    ReFile, Lua ReFile, lua re, or re, are made by samr.
    You are allowed to change this code if you give credit to the original author.
]]

local re = {}

function re.math(op, x, y)
    if (op == "+") then
        print(x + y)
    elseif (op == "-") then
        print(x - y)
    elseif (op == "*") then
        print(x * y)
    elseif (op == "/") then
        print(x / y)
    else
        print("re: math")
        print("| Something heppened. Try again later.")
    end
end

function re.pause(message)
    if (message == "") then
        print("Press any key to continue... ")
        io.read(1)
    else
        print(message)
        io.read(1)
    end
end

return re