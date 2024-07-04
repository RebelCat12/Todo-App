while true do
    local todoItems = {}
    local function tablelength(tbl)
        local count = 0
        for _ in pairs(tbl) do count = count + 1 end
        return count
    end

    print("Current todos: " .. table.concat(todoItems, "\n"))

    print("[A]dd, [R]emove, [C]omplete, [E]xit")
    local userInput = io.read()
    userInput = string.lower(userInput)

    if userInput == "a" then
        print("Enter your todo")
        local newTodo = io.read()
        table.insert(todoItems, newTodo)
    elseif userInput == "r" then
        print("Which number item do you want to remove?")
        local toRemove = io.read()
        --This bit isn't working, not sure why at this point.
        --I though I had it, but I guess not.
        if tonumber(toRemove) <= tablelength(todoItems) then
            table.remove(todoItems, toRemove)
        else
            print("There aren't that many items on the list, doofus")
        end
    elseif userInput == "c" then
        
    elseif userInput == "e" then
        os.exit()
    else
        print("That's not a valid command.")
    end
end
