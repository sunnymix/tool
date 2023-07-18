ngx.header["Content-Type"] = "text/html; charset=utf-8"

local http = require "resty.http"

local httpc = http.new()

local res, err = httpc:request_uri("https://www.gmpsop.com/gmp_documents/qms-020/", {
    method = "GET"
})

if not res then
    ngx.say("请求失败: ", err)
    return
end

ngx.say("响应状态码: ", res.status)

ngx.say("响应内容: ", res.body)

httpc:close()
