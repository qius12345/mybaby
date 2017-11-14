<?php
  require("init.php");
  $kw=$_REQUEST["kw"];
  $sql="SELECT title FROM rm WHERE title LIKE '%".$kw."%' ORDER BY uid DESC LIMIT 10";
  echo json_encode(sql_execute($sql));
?>