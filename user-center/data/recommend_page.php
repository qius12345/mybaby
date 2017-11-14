<?php
require("init.php");
@$pno=$_REQUEST['pno'];
if(!$pno){
	$pno=1;
}else{
	$pno=intval($pno);
}
$pageSize=5;

$output=["recodeCount"=>0,
		"pageCount"=>0,
		"pno"=>$pno,
		"data"=>null,
		"pageSize"=>$pageSize
];

$sql="select count(*) from rm";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_row($result);

$output["recodeCount"]=intval($row[0]);
$output["pageCount"]=ceil($output["recodeCount"]/$output["pageSize"]);

$start=($output["pno"]-1)*$output["pageSize"];
$count=$output["pageSize"];
$sql="select title,content,dtime,keyword,href1,href2 from rm  LIMIT $start,$count";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,1);
$output["data"]=$rows;
echo json_encode($output);

?>