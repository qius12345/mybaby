<?php
  header("Content-Type:application/json;charset=utf-8");
  @$faheight=$_REQUEST['faheight'] or die('{"msg":"请输入宝宝父亲的身高"}');
  @$moheight=$_REQUEST['moheight'] or die('{"msg":"请输入宝宝母亲的身高"}');
  require("../init.php");
?>