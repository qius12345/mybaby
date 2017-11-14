<?php
  header("Content-Type:application/json;charset=utf-8");
  require("../init.php");
  $sql="SELECT uname FROM gd_name";
  $result=mysqli_query($conn,$sql);
  $rows1=mysqli_fetch_all($result,MYSQLI_ASSOC);

  $sql="SELECT uname FROM gs_name";
  $result=mysqli_query($conn,$sql);
  $rows2=mysqli_fetch_all($result,MYSQLI_ASSOC);

  $sql="SELECT uname FROM bd_name";
  $result=mysqli_query($conn,$sql);
  $rows3=mysqli_fetch_all($result,MYSQLI_ASSOC);

  $sql="SELECT uname FROM bs_name";
  $result=mysqli_query($conn,$sql);
  $rows4=mysqli_fetch_all($result,MYSQLI_ASSOC);
  $output=[$rows1,$rows2,$rows3,$rows4];
  echo json_encode($output);
?>