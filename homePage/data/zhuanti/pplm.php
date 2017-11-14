<?php
header("Content-Type:application/json;charset=UTF-8");
require("../init.php");
$sql="SELECT  ztpptt,ztpphref FROM zhuanti_pplm";
echo json_encode(sql_execute($sql,MYSQLI_ASSOC));
?>