<?php

require_once("../init.php");
$uname=$_REQUEST["uname"];
$upwd=$_REQUEST["upwd"];
$sql="select * from user where uname='$uname' and upwd='$upwd'";
$result=mysqli_query($conn,$sql);
//echo $result; 
$row=mysqli_fetch_assoc($result);
if($row==null){
		$output=["code"=>-1,"msg"=>"用户名密码不正确"];
		echo json_encode($output);
}else{	
	 $output=["code"=>1,"msg"=>"登录成功"];
	 echo json_encode($output);
}

?>