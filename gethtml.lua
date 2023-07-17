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
  <div class="d-flex p-2">
    <label for="url" class="form-label">URL</label>
    <input type="text" class="form-control" id="url" placeholder="URL">
    <button type="button" class="btn btn-primary" id="gethtml"> GET HTML </button>
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
