/**************************用户名的验证*****************************/
var $uname=$("#uname")
		 $uname.blur(e=>{  
		   //2:获取用户输入密码
		    var $txt=$(e.target),
				$span=$txt.next();
			var u=$("#uname").val();
			//console.log(u);
            if($txt.val()==""){
				$span.text("不能为空");
			    result=false;
			}else{
			  $.get("data/login/testUname.php",{
			  uname:u}).then(data=>{
			  //console.log(data.code);
			  if(data.code>0){
			    $span.html("<img src='img/login/ok.png'>");
                 result=true;
							  
 				}else{
				
				  $span.html("<img src='img/login/err.png'>用户名已存在");
				 result=false;
				}
			  })
			}
		 })

/**************************手机号的验证*****************************/
$("#tel").blur(e=>{ 
    var $phone =$(e.target).val();
    if((/^1[34578]\d{9}$/.test($phone))){ 
		 $(e.target).next().html(""); 
		return true;
			}else{
        $(e.target).next().html("请输入正确的手机号格式"); 
    } 
});
/**********************************密码的验证*******************************/
$("#upwd1").blur(e=>{
	var $upwd1=$(e.target).val();
	if((/^[a-zA-Z0-9]{6,18}$/.test($upwd1))){
		$(e.target).next().html("");
		return true;
	}else{
		$(e.target).next().html("请输入包含6~18位数字"); 
	}
})
/**************************密码是否相同的验证*********************************/
$("#upwd2").blur(e=>{
	var $upwd2=$(e.target).val();
	var $upwd1=$("#upwd1").val();
	if($upwd2===$upwd1){
		$(e.target).next().html("");
		return true;
	}else{
		$(e.target).next().html("两次密码不一致请重输");
	}
})
/***********************验证码*********************************/
var code;
        function createCode() {
            code = "";
            var codeLength = 6; //验证码的长度
            var checkCode = document.getElementById("checkCode");
            var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
            'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
            for (var i = 0; i < codeLength; i++) 
            {
                var charNum = Math.floor(Math.random() * 52);
                code += codeChars[charNum];
            }
            if (checkCode) 
            {
                checkCode.className = "code";
                checkCode.innerHTML = code;
            }
        }
/***********************验证码验证*********************************/
var $spanCode=$("#code-msg"); 
        function validateCode(){
            var inputCode = document.getElementById("inputCode").value;
            if (inputCode.length <= 0){
                $spanCode.html("<img src='img/login/err.png'>请输入验证码!");
				  result=false;
            }
            else if (inputCode.toUpperCase()!= code.toUpperCase()) 
            {
                $spanCode.html("<img src='img/login/err.png'>验证码输入有误!");
				  result=false;
                createCode();
            }else{
			    $spanCode.html("<img src='img/login/ok.png'>");
				result=true;
			}
        }

/***********************更新数据库************************************/
//$("#submit_btn").click(function(){
//	var phone=$("#tel").val();
//	var upwd=$("#upwd1").val();
//	$.ajax({
//		type:"POST",
//		url:"./data/register_index.php",
//		data:{phone:phone,upwd:upwd},
//		success:function(data){
//			if(data.code==1){
//				alert("登录成功！即将跳转到在主页面");
//				location.href="login_index.html"
//			}else{
//				alert("该用户名已注册 请登录");
//			}
//		},
//		error:function(){
//			alert("您的网络异常，请检查");
//		}
//	});
//})
//$("#form").submit(e=>{
//	e.preventDefault();
//    $.post("data/submitPwd.php",{
//		uname:u,upwd:$upwd.val()}).then(data=>{ 
//		// console.log(data);
//		if(data){ 
//			alert("修改成功");		  
// 		}else{
//			alert("修改失败")};
//				
//    })
   
//})
$("#submit_btn").click(function(e){
  e.preventDefault();
  var uname=$("#uname").val()
  var phone=$("#tel").val();
  var upwd=$("#upwd1").val();
  $.ajax({
    type:"POST",
	url:"data/login/register_index.php",
	data:{uname:uname,phone:phone,upwd:upwd},
	success:function(page){
	  if(page.code>0){
	    alert("注册成功，点击确定跳转登录页面");
		location.href="login.html"
	  }
	},
	error:function(){
	  alert("您的网络异常，请检查");
	}
  });

});
