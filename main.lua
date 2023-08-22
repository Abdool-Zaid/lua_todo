 local ops = require("ops")

function input_command()
    -- os.execute("cls")
    io.write("commandlist: \nd:display tasks\nu:update tasks\nn:new task\nr:remove task\ne:exit\nselected: ")
    return io.read()
end

function loop_func()
local res = input_command()

    if res == "d" then
        ops.read()

    elseif res == "u" then
        io.write("update task no...")
        ops.update(io.read())
   

    elseif res == "n" then
        io.write("new task>>>")
        ops.create(io.read())

    elseif res == "e" then
        ops.close()

    elseif res == "r" then
        io.write("delete task no...")
        ops.delete(io.read())
    else
    -- failure state
    end
end
local iter=false
while true do
    if iter==true then
    print("\n")
    end
        loop_func()
        iter=true
end