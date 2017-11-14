<?php
  require_once("../init.php");
  @$uname=$_REQUEST["uname"] or die("uname required");
  @$phone=$_REQUEST["phone"] or die("phone required");
  @$upwd=$_REQUEST["upwd"]  or die("upwd required");
  $sql="INSERT INTO user VALUES(NULL,'$uname','$upwd','','$phone')";
  $result=mysqli_query($conn,$sql);
  if($result){
	echo '{"code":1,"msg":"注册成功"}';
  }else{
    echo '{"code":-1,"msg":"注册失败"}';
  }



?>