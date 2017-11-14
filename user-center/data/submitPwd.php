<?php
  //10:42--10:48
  //1:修改响应头格式;连接数据库;修改编码
  require("init.php");
  //2:获取参数
  @$uname = $_REQUEST["uname"];
  @$upwd = $_REQUEST["upwd"];
  //3:创建SQL语句并且发送SQL语句
  $sql = "UPDATE user SET upwd='$upwd' WHERE uname='$uname'";
  $result = mysqli_query($conn,$sql);
  //4:判断返回结果输出json
  if($result===true){
     echo "true";
  }else{
     echo "false";
  }
?>