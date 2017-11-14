<?php 
  header("Content-Type:application/json;charset=utf-8");
  @$xing=$_REQUEST['xing'] or die('{"msg":"请输入宝宝的姓氏"}');
  (preg_match("/^[\x7f-\xff]+$/",$xing)) or die('{"msg":"抱歉，目前只可以取中文名哦！"}');
  @$date=$_REQUEST['date'] or die('{"msg":"请输入宝宝的出生日期"}');
  require("../init.php");
?>

