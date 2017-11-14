<?php
header("Access-Control-Allow-Origin:*");
require_once('init.php');
 @$uname=$_REQUEST['uname'];
 if($uname==null) $uname='lilei';
 @$upwd=$_REQUEST['upwd'];
 @$nickname=$_REQUEST['nickname'];
 @$gender=$_REQUEST['gender'];
 @$birth=$_REQUEST['birth'];
 @$residence=$_REQUEST['residence'];
 @$residence_city=$_REQUEST['residence_city'];
 @$hometown=$_REQUEST['hometown'];
 @$hometown_city=$_REQUEST['hometown_city'];
 @$industry=$_REQUEST['industry'];
 @$url=$_REQUEST['url'];
 @$email=$_REQUEST['email'];
 @$autograph=$_REQUEST['autograph'];
 @$hobby=$_REQUEST['hobby'];
 @$speciality=$_REQUEST['speciality'];
 @$parenting=$_REQUEST['parenting'];
 @$user_name=$_REQUEST['user_name'];
 @$qq_msn=$_REQUEST['qq_msn'];
 @$mailing_address=$_REQUEST['mailing_address'];
 @$postalcode=$_REQUEST['postalcode'];
 @$phone=$_REQUEST['phone'];
 @$education=$_REQUEST['education'];
 @$university=$_REQUEST['university'];
 @$high_school=$_REQUEST['high_school'];
 @$middle_school=$_REQUEST['middle_school'];
 if(count($hobby)>1)
 $hobby=implode(',',$hobby);
 else if(count($hobby)==1)
 $hobby=$hobby[0];
 if(count($speciality)>1)
 $speciality=implode(',',$speciality);
 else if(count($speciality)==1)
 $speciality=$speciality[0];
 if(count($university)>1) $university=implode(',',$university);
 else if(count($university)==1) $university=$university[0];
 if(count($high_school)>1) $high_school=implode(',',$high_school);
 else if(count($high_school)==1) $high_school=$high_school[0];
 if(count($middle_school)>1) $middle_school=implode(',',$middle_school);
 else if(count($middle_school)==1) $middle_school=$middle_school[0];
 if($gender!==null){
	 $sql="UPDATE  user_detail SET
	nickname='$nickname',
	gender='$gender',
	birth='$birth',
	residence='$residence',
	residence_city='$residence_city',
	hometown='$hometown',
	hometown_city='$hometown_city',
	industry='$industry',
	url='$url',
	email='$email',
	autograph='$autograph',
	hobby='$hobby',
	speciality='$speciality'
	 where uname='$uname'";
	 $result=mysqli_query($conn,$sql);
	if($result===true){
		echo 'true';
	}else echo 'false';
 }else if($parenting!==null){
	$sql="UPDATE user_detail SET parenting='$parenting' WHERE uname='$uname'";
	$result=mysqli_query($conn,$sql);
	if($result===true){
		echo 'true';
	}else echo 'false';
 }else if($user_name!==null){
	$sql="UPDATE user_detail SET 
	 user_name='$user_name',
	 qq_msn='$qq_msn',
	 mailing_address='$mailing_address',
	 postalcode='$postalcode',
	 phone='$phone'
	 WHERE uname='$uname'
		";
		$result=mysqli_query($conn,$sql);
		if($result===true){
			echo 'true';
		}else echo 'false';
 }else{
	$sql="UPDATE user_detail SET
		 education='$education',
		 university='$university',
		 high_school='$high_school',
		 middle_school='$middle_school'
		 WHERE uname='$uname'
		";
		$result=mysqli_query($conn,$sql);
		if($result===true){
			echo 'true';
		}else echo 'false';
 }