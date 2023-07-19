ngx.header["Content-Type"] = "text/html; charset=utf-8"

local args = ngx.req.get_uri_args()
local url = args["url"]

if not url then
    ngx.say("url is invalid")
    return
end

local ok, out = require "resty.shell".run([[wget -O /tmp/tmp.html ]] .. url)
if not ok then
    ngx.say("wget error:" .. "<br />")
    return
end

local ok, content = require "resty.shell".run([[cat /tmp/tmp.html]])
if not content then
    ngx.say("cat error:" .. content .. "<br />")
    return
end

ngx.say(content)
