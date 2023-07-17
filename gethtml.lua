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
  $("gethtml").click(function(){
    alert("hello");
});
});
</script>
</body>
</html>
]])
