$(".control a").hover(function(e){
  e.preventDefault();
  var index=$(this).index();
  if(!$(this).hasClass("control_1")){
    $(this).addClass("control_1").siblings("a").removeClass("control_1");
  }else{
    $(this).siblings("a").removeClass("current");
  }
  if(index==1){
    $(".slideAll").animate({left:"-284px"},200);
  }else{
    $(".slideAll").animate({left:0},200);
  }
});
$(".control a").click(function(e){
  e.preventDefault();
});