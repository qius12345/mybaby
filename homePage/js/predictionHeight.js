function modalShow(){
  if(!$("#faheight").val() || !$("moheight").val()){
    var f=$("#faheight").val(),m=$("#moheight").val();
    $.ajax({
	  url:"data/effect/predictionHeight.php",
      data:{faheight:f,moheight:m},
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
	modalShow();
	function resetP(){
	  if($("#faheight").val() && $("#moheight").val()){
        $("#btn1").hide();
		var bhei=(Number($("#moheight").val())*1.08+Number($("#faheight").val()))/2;
		var ghei=(Number($("#faheight").val())*0.923+Number($("#moheight").val()))/2;
		if($("#sel1").val()==1){
	      var height=Math.round(bhei);
        }else{
	     height=Math.round(ghei);
        }
		var minheight=height-3,maxheight=height+3;
	    var html=`
	     <h3>测试结果</h3>
		 <p style="display:block">您的宝贝身高可能会在<span>${minheight}</span>CM~<span>${maxheight}</span>CM之间哦。</p>
         <div class="showBtn"> 
 	       <input id="btn2" type="button" value="重新计算"> 
 	       <input id="btn3" type="button" value="清除"> 
 	     </div>	
	    `;
		 $(".ToolCon-tb-showDiv").html(html);
	  }
	}
	resetP();
	$(".ToolCon-tb-showDiv").on('click','#btn2',function(){
	    resetP();
	    modalShow();
	    $("#btn1").hide();
	});
	$(".ToolCon-tb-showDiv").on('click','#btn3',function(){
		window.location.reload();
	 });
  });
});