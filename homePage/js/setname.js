 function modalShow(){
  reg = /^[\u4E00-\u9FA5]{1,2}$/;
  if(!$("#date").val() || !$("#xing").val() || !reg.test($("#xing").val()) ) {
    var x=$("#xing").val();
    $.ajax({
	  url:"data/effect/checkName.php",
      data:{xing:x},
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

 function getArrayItems(arr, num) {
    var temp_array = new Array();
    for (var index in arr) {
        temp_array.push(arr[index]);
    }
    var return_array = new Array();
    for (var i = 0; i<num; i++) {
        if (temp_array.length>0) {
            var arrIndex = Math.floor(Math.random()*temp_array.length);
            return_array[i] = temp_array[arrIndex];
            temp_array.splice(arrIndex, 1);
        } else {
            break;
        }
    }
    return return_array;
}

function page(data){
    var objs=getArrayItems(data,10);
    var n=$("#xing").val();
	var str=[];
	for(var i=0;i<10;i++){
	   str.push(objs[i]['uname']);
	}
  var html=`
		  <table id="tb2" border="1"> 
 		   <caption>取名结果</caption> 
 		   <tr> 
 		      <td>${n+str[0]}</td> 
 		      <td>${n+str[1]}</td> 
 		      <td>${n+str[2]}</td> 
 		      <td>${n+str[3]}</td> 
 		      <td>${n+str[4]}</td> 
 		   </tr> 
 		    <tr> 
 		      <td>${n+str[5]}</td> 
 		      <td>${n+str[6]}</td> 
 		      <td>${n+str[7]}</td> 
 		      <td>${n+str[8]}</td> 
 		      <td>${n+str[9]}</td> 
 		   </tr> 
 		</table> 
 		<div class="showBtn"> 
 	      <input id="btn2" type="button" value="重新取名"> 
 	      <input id="btn3" type="button" value="清除"> 
 	    </div> 
  `;
	$(".ToolCon-tb-showDiv").html(html);
}

function s(x,y){
	return $("#date").val() && reg.test($("#xing").val()) && $("#sel1").val()==x && $("#sel2").val()==y;
}

$(function(){
  $("#btn1").click(function(){
	$("#btn1").hide();
	modalShow();
    function resetP(){
	  $.ajax({
		type:"GET",
		url:"data/effect/setname.php",
		success:function(data){		  
		  if(s(1,1)){
				page(data[0]);
		  }else if( s(1,2) ){
				page(data[1]);
		  }else if( s(2,1) ){
				page(data[2])
		  }else if( s(2,2) ){
				page(data[3]);
		  }
		}
	  });
	}
	 resetP();
	 $(".ToolCon-tb-showDiv").on('click','#btn3',function(){
		window.location.reload();//页面刷新
	 });
	 $(".ToolCon-tb-showDiv").on('click','#btn2',function(){
	   resetP();
	   modalShow();
	   $("#btn1").hide();
	 });
 });
  
});


