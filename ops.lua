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








function ops.delete(...)
    print(type(...))
    -- for key, value in pairs({...}) do
    -- print( key .."||" .. value)
    -- end

end

return ops