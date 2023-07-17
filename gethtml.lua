ngx.header["Access-Control-Allow-Origin"] ="*"
ngx.header["Access-Control-Allow-Headers"] ="DNT,X-CustomHeader,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type,Content-Range,Range, userid, agent, brandid, language, token"
if ngx.var.request_method =="OPTIONS"then
  ngx.header["Access-Control-Max-Age"] ="1728000"
  ngx.header["Access-Control-Allow-Methods"] ="GET, POST, OPTIONS, PUT, DELETE"
  ngx.header["Content-Length"] ="0"
  ngx.header["Content-Type"] ="text/plain, charset=utf-8"
end

ngx.header["Content-Type"] = "text/html; charset=utf-8"
ngx.say([[
<!DOCTYPE html>
<html>
<head>
  <title>GET HTML</title>
  <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-sm">
  <div class="d-flex align-items-center">
    <div class="flex-grow-1 p-2"><input type="text" class="form-control" id="url" placeholder="URL"></div>
    <div class="p-2"><button type="button" class="btn btn-primary" id="gethtml"> GET </button></div>
    <div class="p-2"><button type="button" class="btn btn-primary" id="copyhtml"> COPY </button></div>
  </div>
  <div class="p-2">
    <textarea class="form-control"></textarea>
  </div>
</div>
<script>
$(document).ready(function(){
  $("#gethtml").click(function(){
    alert("hello");
    var url = $("#url").val();
    $.ajax({
      url: url,
      method: "GET",
      success: function(response) {
        console.log(response);
      },
      error: function(error) {
        console.log("Error: ", error);
      }
    });
  });
});
</script>
</body>
</html>
]])
