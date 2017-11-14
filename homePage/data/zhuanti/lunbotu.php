<?php
header("Content-Type:application/json;charset=UTF-8");
require("../init.php");
$sql="SELECT  ztlbtitle,ztlbpic,ztlbhref FROM zhuanti_lunbo";
echo json_encode(sql_execute($sql,MYSQLI_ASSOC));
?>