local ops = {}

function _G.start()
    local file = io.open("data.tsk", "r")
    local arr = {}
    for line in file:lines() do
       table.insert (arr, line);
    end
    file:close()
return arr
end

local tasks = start()

function ops.create(new_task)
table.insert(tasks, new_task)
ops.read()
end

function ops.read()
    os.execute("cls")
    for key, value in pairs(tasks) do
        print(key.. "||".. value)
    end
end

function ops.update(pos)
    local task_no= pos
    io.write("input changes..")
    local up_task =io.read()
    ops.delete(task_no)
    table.insert(tasks, task_no, up_task )
    ops.read()
end

function ops.delete(del)
    local delet = tonumber(del)
    table.remove(tasks,delet)
    ops.read()
end

function ops.close()
    local file = io.open('data.tsk', "w")
        for _ , value in pairs(tasks) do
        file:write(value .. "\n")
        end
    file:close()
    os.exit()


end


return ops