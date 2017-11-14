//登录注册的代码
//var loginUname=null;	
/*******************************/
$(".reg-login").click(e=>{
	e.preventDefault();
		var $form=$($(e.target).attr("href"));
		console.log($form);
	if($form.is(":hidden")){
		$form.show().siblings().hide();
	}
	
});
/**************验证码部分***************************/
var coder;
var color;
     function createCode() {
        coder = "";
	var codeLength = 6; //验证码的长度
	var checkCode = document.getElementById("checkCode");
	 var ranColor = '#' + ('00000' + (Math.random() * 0x1000000 << 0).toString(16)).slice(-6);
            checkCode.style.background = ranColor;
	var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
	'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
	'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
	for (var i = 0; i < codeLength; i++) 
	{
		var charNum = Math.floor(Math.random() * 52);
		coder += codeChars[charNum];
	}
	if (checkCode) 
	{
		checkCode.className = "code";
		 checkCode.innerHTML = coder;
	}
}
/*******************手机密码验证**********************************/
$("#form1_button").click(function(){
	var uname=$("#uname").val();
	var upwd=$("#upwd").val();
	$.ajax({
		type:"POST",
		url:"data/login/user.php",
		data:{uname:uname,upwd:upwd},
		success:function(data){
			console.log(data,data.code);
			if(data.code>0){
				sessionStorage.setItem("uname",uname);
 //               loginUname=sessionStorage["uname"];
				alert("登录成功！即将跳转到在主页面");
                console.log(1);
				location.href="index_logined.html";
			}else{
				alert("用户名或密码不正确");
			}
		},
		error:function(data){
		  alert("网络故障");
		}
	});
})

/**********密码格式的验证**********************/
$("#phone").blur(e=>{ 
    var $phone =$(e.target).val();
    if((/^1[34578]\d{9}$/.test($phone))){
		$(e.target).next().html(""); 
		return true}else{
        $(e.target).next().html("请输入正确的手机号格式"); 
		$(e.target).next().css("color","#ff4444");
    } 
});
$("#upwd").blur(e=>{
	var $upwd=$(e.target).val();
	if((/^[a-zA-Z0-9]{6,18}$/.test($upwd))){
		$(e.target).next().html(""); 
		return true;
	}else{
		$(e.target).next().html("请输入包含6~18位数字"); 
		$(e.target).next().css("color","#ff4444");
	}
});
