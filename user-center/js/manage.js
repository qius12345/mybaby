$(function(){
  $(".twotab .toc").click(function(e){
	 e.preventDefault();
     var index=$(this).index();
	 $(".sliderwrap>div").eq(index).addClass("active").siblings("div").removeClass("active");
  });

  $(".showmore").click(function(){
    $(".content2 .newinfo").show();
    $(".showmore").hide();
  });
});