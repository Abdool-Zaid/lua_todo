local ops = {}


function ops.ceate()
    print("create new todo")
end

function ops.read()
    local file = io.open("data.tsk", "r")
    local content=  file:read("*all")
    file:close()
    print(content)
end

function ops.update()
    print("update todo")
end

function ops.delete()
    print("delete todo")
end

return ops