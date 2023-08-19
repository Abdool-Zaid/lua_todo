local ops = {}



function open_file()
    local file = io.open("data.tsk", "r")
    local content= {}
    for task in file:lines() do
        table.insert(content, task)  
    end
    file:close()
    return content
end    




function ops.create(task)
    local file = io.open("data.tsk","a")
    file:write("\n" ..task)
    file:close()
    ops.read()
end





function ops.read()
    os.execute("cls")
    local tasks = open_file()
    
    for index, value in pairs(tasks) do
        print(index .. "||" .. value )
    end
end







function ops.update()
    print("update todo")
end








function ops.delete(list)
    local del_list = stringToTable(list)
    for key, value in pairs(del_list) do
    -- print( key .."||" .. value)

    end

end
function splitString(input, delimiter)
    local result = {}
    local pattern = string.format("([^%s]+)", delimiter)
    input:gsub(pattern, function(item) result[#result + 1] = item end)
    return result
end

function stringToTable(inputString)
    local splitNumbers = splitString(inputString, ",")

    local resultTable = {}
    for _, numStr in ipairs(splitNumbers) do
        local num = tonumber(numStr)
        if num then
            table.insert(resultTable, num)
        else
            print("Invalid number:", numStr)
        end
    end

    return resultTable
end

return ops