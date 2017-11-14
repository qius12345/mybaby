<?php
  header("Content-Type:application/json;charset=utf-8");
  @$fname=$_REQUEST['fname'] or die('{"msg":"请输入宝宝的姓氏"}');
  @$lname=$_REQUEST['lname'] or die('{"msg":"请输入宝宝的名字"}');
  (preg_match("/^[\x7f-\xff]+$/",$fname)) or die('{"msg":"抱歉，目前只可以取中文名哦！"}');
  (preg_match("/^[\x7f-\xff]+$/",$lname)) or die('{"msg":"抱歉，目前只可以取中文名哦！"}');
  require("../init.php");
  $sql="SELECT score,evaluate FROM testres";
  $result=mysqli_query($conn,$sql);
  $rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
  $i=array_rand($rows);
  $obj=$rows[$i];
  $score=$obj['score'];
  $evaluate=$obj['evaluate'];
  $sql="SELECT * FROM renames WHERE fname='$fname' AND lname='$lname'";
  $result = mysqli_query($conn,$sql);
  $row = mysqli_fetch_assoc($result);
  if(!$row){
    mysqli_query($conn,"INSERT INTO renames VALUES(null,'$fname','$lname',$score,'$evaluate')");
  }
  $result = mysqli_query($conn,$sql);
  $row = mysqli_fetch_assoc($result);
  echo json_encode($row);
?>