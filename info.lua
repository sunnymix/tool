ngx.header["Content-Type"] = "text/html; charset=utf-8"

ngx.say(package.path)

ngx.say('---')

local proc = assert(ngx.pipe.spawn{"sh", "-c", "echo hello"})
local data, err = proc:stdout_read_all()
if not data then
    ngx.say("failed to read: ", err)
    return
end

local ok, err = proc:wait()
if not ok then
    ngx.say("failed to wait: ", err)
    return
end

ngx.say(data)
