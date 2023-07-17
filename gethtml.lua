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
<div class="container-md">
  <label for="gethtml" class="form-label">URL</label>
  <div class="input-group mb-3">
    <input type="text" class="form-control" placeholder="URL">
    <button class="btn btn-primary" type="button" id="gethtml">GET</button>
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
