<?php
header("Content-Type:application/json;charset=UTF-8");
require("../init.php");
$sql="SELECT  ztlctt,ztlcjj,ztlcpic,ztlchref,ztlclb FROM zhuanti_lc";
echo json_encode(sql_execute($sql,MYSQLI_ASSOC));
?>