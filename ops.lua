local ops = {}


function ops.ceate()
    print("create new todo")
end





function ops.read()
    local file = io.open("data.tsk", "r")
    local content= {}
    for task in file:lines() do
        table.insert(content, task)  
    end

    file:close()
    for index, value in pairs(content) do
    print(index .. "||" .. value )
    end

end







function ops.update()
    print("update todo")
end








function ops.delete()
    print("delete todo")
end

return ops