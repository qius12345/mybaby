<?php
  //10:42--10:48
  //1:�޸���Ӧͷ��ʽ;�������ݿ�;�޸ı���
  require("init.php");
  //2:��ȡ����
  @$uname = $_REQUEST["uname"];
  @$upwd = $_REQUEST["upwd"];
  //3:����SQL��䲢�ҷ���SQL���
  $sql = "UPDATE user SET upwd='$upwd' WHERE uname='$uname'";
  $result = mysqli_query($conn,$sql);
  //4:�жϷ��ؽ�����json
  if($result===true){
     echo "true";
  }else{
     echo "false";
  }
?>