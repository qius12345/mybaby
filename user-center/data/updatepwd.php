<?php
 //1:加载公共php程序
 require("init.php");
 //2:获取参数upwd
 @$uname = $_REQUEST["uname"];
 @$upwd = $_REQUEST["upwd"];
 if($uname===null){
  die('uname required');
 }
 if($upwd===null){
  die('upwd required');
 }
 //3:创建sql语句并且发送sql语句
 $sql = "SELECT * from user where uname='$uname'AND upwd='$upwd'";
 $result = mysqli_query($conn,$sql);
 //4:获取返回结果(不是true/false)并且抓取结果(一行)
 $row = mysqli_fetch_assoc($result); 
 //5:判断输出
 if($row==null){
   echo '{"code":-1,"msg":"输入密码不正确"}';
 }else{
  $uid = $row["uid"];
  echo '{"code":1,"msg":"true","uid":'.$uid.'}';
 }
?>