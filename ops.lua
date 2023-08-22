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

function ops.create()
    print("create")
end

function ops.read()
    print("read")
end

function ops.update()
    print("update")
end

function ops.delete()
    print("delete")
end

function ops.close()
    print("close")
    -- os.exit()

end


return ops