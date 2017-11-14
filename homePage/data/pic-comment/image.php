<?php
	header("Content-type:application/json;charset=utf-8");
	@$pno=$_REQUEST['pno'];
	if(!$pno){
		$pno=1;
	}
	$pageSize=20;
	$output=[
		'recordCount'=>0,
		'pageCount'=>0,
		'pno'=>$pno,
		'data'=>null
	];
	require_once('../init.php');
	//获取总的记录数
	$result=mysqli_query($conn,"SELECT count(*) FROM image_show");
	$output['recordCount']=mysqli_fetch_row($result)[0];
	$output['pageCount']=ceil($output['recordCount']/$pageSize);
	//获取当前页的数据
	$start = ($pno-1)*$pageSize;
	$result = mysqli_query($conn,"SELECT * FROM image_show LIMIT $start,$pageSize");
	$output['data']=mysqli_fetch_all($result,MYSQLI_ASSOC);
	echo json_encode($output);
?>