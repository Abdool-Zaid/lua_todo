 local ops = require("ops")
  

function input_command()
    io.write("commandlist: \nd:display tasks\nu:update tasks\nn:new task\nr:remove task\nselected: ")
    return io.read()
end

function loop_func()
local res = input_command()
 
    if res == "d" then
        ops.read()
    
    elseif res == "u" then
        ops.update()
    
    elseif res == "n" then
        io.write("new task>>>")
        ops.create(io.read())
    
    elseif res == "r" then   
        ops.delete()
    
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