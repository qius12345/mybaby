<?php
header("Content-Type:application/json;charset=UTF-8");
require("../init.php");
$sql="SELECT ilppic,ilptip,ilpspe,ilphref,ilpzhanwei FROM index_lunbo_pic";
echo json_encode(sql_execute($sql,MYSQLI_ASSOC));
?>