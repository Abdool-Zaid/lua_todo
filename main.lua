local status = "working fine\n"
 local file = io.open("main.lua", "r")

local content=  file:read("*line")

 print(content)
 file:close()