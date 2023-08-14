local status = "working fine\n"
 local file = io.open("main.lua", "r")

 file:read()
 print(file)
 file:close()