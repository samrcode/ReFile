--[[
    ReFile, Lua ReFile, or re, are made by samrcode on GitHub.
    You are allowed to change this code if you give credit to the original author.
]]

local re = {}

function re.math(op, x, y)
    if (op == 1) then
        return x + y
    elseif (op == 2) then
        return x - y
    elseif (op == 3) then
        return x * y
    elseif (op == 4) then
        return x / y
    else
        print("re: math")
        print("  | Something happened. Try again later.")
	print("  | ERROR: " .. op .. " IS NOT A VALID OPERATOR. MIN IS 1. MAX IS 4.")
    end
end

function re.printf(message, format)
	if (format == "i") then
		print("" .. message)
	else if (format == "red") then
		print("" .. message)
	else
		print("re: printf")
		print(" | Something happened. Try again later.")
		print(" | ERROR: " .. format .. " NOT VALID. PLEASE READ DOCUMENTATION.")
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

function re.choose(num, opt1, opt2, opt3, command1, command2, command3, errmsg)
    if (num == 1) then
        print("[1] " .. opt1)
        local uin = io.read("*n")
        if (uin == 1) then
            os.execute(command1)
        else
            print(errmsg .. "Press Enter to continue.")
            io.read()
        end
	elseif (num == 2) then
		print("[1] " .. opt1)
		print("[2] " .. opt2)
		local uin = io.read("*n")
		if (uin == 1) then
			os.execute(command1)
		elseif (uin == 2) then
			os.execute(command2)
		else
			print(errmsg .. "Press Enter to continue.")
			io.read()
		end
	elseif (num == 3) then
		print("[1] " .. opt1)
		print("[2] " .. opt2)
		print("[3] " .. opt3)
		local uin = io.read("*n")
		if (uin == 1) then
			os.execute(command1)
		elseif (uin == 2) then
			os.execute(command2)
		elseif (uin == 3) then
			os.execute(command3)
		else
			print(errmsg .. "Press Enter to continue.")
			io.read()
		end
	else
		print("re: chooose")
		print("  | Something happened. Try again later.")
		print("  | ERROR: " .. num .. " IS NOT A VALID AMOUNT. MIN IS 1. MAX IS 3.")
	end
end

return re
