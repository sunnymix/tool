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
  <form class="row g-3">
    <div class="col-auto">
      <label for="staticEmail2">URL</label>
    </div>
    <div class="col-auto">
      <input type="text" class="form-control" id="url" placeholder="URL">
    </div>
    <div class="col-auto">
      <button type="button" class="btn btn-primary mb-3"> GET HTML< /button>
    </div>
  </form>
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
