ngx.header["Content-Type"] = "text/html; charset=utf-8"

ngx.say(package.path .. "<br />")

ngx.say("---" .. "<br />")

local ok, out = require "resty.shell".run([[wget -P /tmp/qms-020 https://www.gmpsop.com/gmp_documents/qms-020/]])
if not ok then
	ngx.say("cannot exe shell" .. "<br />")
	return
end

ngx.say(out .. "<br />")


