ngx.header["Content-Type"] = "text/plain; charset=utf-8"

local ok, out = require "resty.shell".run([[wget -O /tmp/qms-020.html https://www.gmpsop.com/gmp_documents/qms-020/]])
if not ok then
    ngx.say("wget error:" .. "<br />")
    return
end

local ok, content = require "resty.shell".run([[cat /tmp/qms-020.html]])
if not content then
    ngx.say("cat error:" .. content .. "<br />")
    return
end

ngx.say(content)
