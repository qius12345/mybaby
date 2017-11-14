<?php
  header("Content-Type:application/json;charset=utf-8");
  $conn = mysqli_connect("127.0.0.1","root","","project",3306);
  mysqli_query($conn,"SET NAMES UTF8");
  $sql="SELECT img FROM album";
  $result=mysqli_query($conn,$sql);
  $row=mysqli_fetch_all($result,MYSQLI_ASSOC);
  echo json_encode($row);
?>