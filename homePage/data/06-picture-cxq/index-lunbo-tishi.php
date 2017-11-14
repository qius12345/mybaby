<?php
header("Content-Type:application/json;charset=UTF-8");
require("../init.php");
$sql="SELECT iltname,ilttitle,ilthref FROM index_lunbo_tishi";
echo json_encode(sql_execute($sql,MYSQLI_ASSOC));
?>