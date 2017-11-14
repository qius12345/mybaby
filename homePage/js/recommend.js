(()=>{
  $(".bofang").click((e)=>{
    $(e.target).css("display","none");
  })
  var index=1;
  $(".mvlf").click(()=>{
	if(index>1){
	  index--;
	  
	}else{
	  index=5;
	}
	var fid="f5"+index;
    $(".fl5y").css("display","none");
	$("#"+fid).css("display","block");
  })
  $(".mvrg").click(()=>{
    if(index<5){
	  index++;
	}else{
	  index=1;
	}
	var fid="f5"+index;
    $(".fl5y").css("display","none");
	$("#"+fid).css("display","block");
  })
  var h=[250,800,1600,2400,3300,4100];
  window.addEventListener("scroll",function(){
    var bt=document.body.scrollTop;
	if(bt<250){
	  $(".nav").css("display","none");
	}else{
	  $(".nav").css("display","block");
	  if(bt>h[5])
		  var index=6;
	  else{
		  for(var i=0;i<h.length;i++){
			if(bt>h[i]&&bt<=h[i+1]){
			  var index=i+1;
			  break;
			}
	      }
	  }

	  $(".nav>ul>li>a").css("color","white");
	  $(".nav>ul>li:nth-child("+index+")>a").css("color","#fff500");
	}
  });
  var $root=$('html,body');
  $(".nav a").click(function(e){
    $root.animate({
		scrollTop:$($.attr(this,'href')).offset().top,},1000);
  })
})();