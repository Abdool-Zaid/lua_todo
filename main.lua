 local file = io.open("data.tsk", "r")
local content=  file:read("*all")
file:close()
--  print(content)
function input_command()
    io.write("commandlist: \nd:display tasks\nu:update tasks\nn:new task\nr:remove task\nselected: ")
    return io.read()
end
local res = input_command()
if res == "d" then

elseif res == "u" then
    
elseif res == "n" then

elseif res == "r" then   

else
-- failure state
end    
