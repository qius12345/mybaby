<?php
header('Access-Control-Allow-Origin:*');
require_once('init.php');
@$uname=$_REQUEST[uname];
@$upwd=$_REQUEST[upwd];
 if($uname==null){
	$uname="lilei";
	}
$sql="SELECT * FROM user_detail where uname='$uname' ";
$result=MYSQLI_QUERY($conn,$sql);
$list=MYSQLI_FETCH_ASSOC($result);
echo json_encode($list); 


