      var result=true;
//	验证码
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
//验证验证码
        var $spanCode=$("#code-msg"); 
        function validateCode(){
            var inputCode = document.getElementById("inputCode").value;
            if (inputCode.length <= 0){
                $spanCode.html("<img src='img/err.png'>请输入验证码!");
				  result=false;
            }
            else if (inputCode.toUpperCase()!= code.toUpperCase()) 
            {
                $spanCode.html("<img src='img/err.png'>验证码输入有误!");
				  result=false;
                createCode();
            }else{
			    $spanCode.html("<img src='img/ok.png'>");
				result=true;
			}
        }   

      //验证现有密码是否正确
	     var $oldpwd=$("#oldpwd")
		 $oldpwd.blur(e=>{  
		   //2:获取用户输入密码
		    var $txt=$(e.target),
				$span=$txt.next();
			var u=$("#uname").text();
			//console.log(u);
            if($txt.val()==""){
				$span.text("不能为空");
			    result=false;
			}else{
			  $.get("data/updatepwd.php",{
			  uname:u,upwd:$txt.val()}).then(data=>{
			  if(data.code>0){
			    $span.html("<img src='img/ok.png'>")
                  result=true;			  
 				}else{
				 $span.html("<img src='img/err.png'>密码输入错误")
				 result=false;
				 }
			  })
			}
		 })




		//验证新密码是否符合要求
       var $upwd=$("#newpass"),
           $spanPwd=$("#upwd-msg")      
	   $upwd.blur(function(){
	     var $upwd=$(this);
		 var val=$upwd.val();
		 if(val.length>=6&&val.length<=16){
			 $spanPwd.html("<img src='img/ok.png'>");
             result=true;
		 }
		 else{
             $spanPwd.html("<img src='img/err.png'>密码需介于6~16位!");
		      result=false;
		 }
	   }) 
	   



 //验证两次密码是否一致
  function checkPwd(){
    var $upwd=$("#newpass"),
        $upwd2=$("#qrnewpass"),
        $span=$("#qrupwd-msg");
	    val=$upwd2.val()
    if($upwd.val()!=$upwd2.val()){
      $span.html("<img src='img/err.png'>输入密码不一致!");
      result=false;
    }else if(val.length<6||val.length>=16){
	   $span.html("<img src='img/err.png'>输入密码不一致!");
       result=false;
	}else{
       $span.html("<img src='img/ok.png'>");
      result=true;
    }
  }
  $("#qrnewpass").blur(checkPwd);


//提交表单
$("#form1").submit(e=>{
	e.preventDefault();
   var $upwd=$("#newpass"),
	 u=$("#uname").text();
   if(result){
     $.post("data/submitPwd.php",{
			  uname:u,upwd:$upwd.val()}).then(data=>{ 
				 // console.log(data);
			  if(data){ 
			     alert("修改成功")			  
 				}else{
				 alert("修改失败")}
				
   })
   }
   })


