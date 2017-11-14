function modalShow(){
  reg = /^[\u4E00-\u9FA5]{1,2}$/;
  if(!$("#fname").val() || !$("#lname").val() || !reg.test($("#fname").val()) || !reg.test($("#lname").val())){
    var f=$("#fname").val(),l=$("#lname").val();
    $.ajax({
	  url:"data/effect/nameTest.php",
      data:{fname:f,lname:l},
	  success:function(data){
	    var html=`
		<div class="modal">
		  <div class="warn">
	        <h1>提示信息</h1>
	        <p>${data.msg}</p>
	        <button id="sure" type="button">确定</button>
	      </div>	
		</div>
		`;
		$(".modalBox").html(html);
	  }
	});
	$("#btn1").show();
   } 
  $(".modalBox").on('click','#sure',function(){
	$(".modal").css("display","none");
  });
}
$(function(){
   $("#btn1").click(function(){
     $("#btn1").hide();
	 modalShow();
  function nameRetest(){
   if(reg.test($("#fname").val()) && reg.test($("#lname").val())){
	 var f=$("#fname").val(),l=$("#lname").val();
	 function nameTest(){
	   $.ajax({
       type:"GET",
	   url:"data/effect/nameTest.php",
	   data:{fname:f,lname:l},
	   success:function(data){   
		   var html=`
		   	 <h3>总评</h3>
			 <ul> 
				<li>分数：<span>${data.score}</span>分</li>
				<li>总评：<span>${data.evaluate}</span>
				</li> 
			 </ul> 
			 <div class="showBtn">   
			   <input id="btn2" type="button" value="重新测名">   
			   <input id="btn3" type="button" value="清除">  
			</div>
			 `;
			$(".ToolCon-tb-showDiv").html(html);
		 }
	   });
	 }
	 nameTest();
   }
  }
  nameRetest();
	$(".ToolCon-tb-showDiv").on('click','#btn2',function(){
		modalShow();
	    nameRetest();
	    $("#btn1").hide();
	});
	$(".ToolCon-tb-showDiv").on('click','#btn3',function(){
		window.location.reload();
	 });
  });

});