ngx.header["Content-Type"] = "text/html; charset=utf-8"

ngx.say(package.path)

ngx.say('---')

local ok, out = require "resty.shell".run([[echo ok]])
if not ok then
	ngx.say("cannot exe shell")
	return
end

ngx.say(out)


