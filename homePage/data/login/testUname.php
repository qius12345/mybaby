<?php
 //1:加载公共php程序
 require("../init.php");
 //2:获取参数upwd
 @$uname = $_REQUEST["uname"];
 if($uname===null){
  die('uname required');
 }
 //3:创建sql语句并且发送sql语句
 $sql = "SELECT * from user where uname='$uname'";
 $result = mysqli_query($conn,$sql);
 //4:获取返回结果(不是true/false)并且抓取结果(一行)
 $row = mysqli_fetch_assoc($result); 
 //5:判断输出
 if($row==null){
   echo '{"code":1,"msg":"注册成功"}';
 }else{
   echo '{"code":-1,"msg":"用户名已存在"}';
 }
?>