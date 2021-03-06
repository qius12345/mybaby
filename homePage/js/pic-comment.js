$(()=>{
function loadData(pno){
    $.ajax({
			type:"GET",
			url:"data/pic-comment/image.php",
			data:{pno:pno},
			success:(data)=>{
				var pno=parseInt(data.pno);	
				var pageCount=parseInt(data.pageCount);
				var html="";
				for(var i=0;i<data.data.length;i++){
					html+=`
						<li>
							<a href="${data.data[i].href}">
							<img src="${data.data[i].src}" title="${data.data[i].title}">
							<p>${data.data[i].title}</p>
							</a>
						</li>	
					`
				}
				$("#pic").html(html);
				//分页，如果小于5页全部显示
				if(pno==1){
					$("#prev").hide();
				}else{
					$("#prev").show();
				}
				if(pno==pageCount){
					$("#next").hide();
				}else{
					$("#next").show();
				}
				if(pageCount<=5){
					html="";
					html+=`<li><a href="#" id="prev">前一页</a></li>`;
					for(var i=1;i<=pageCount;i++){
						html+=`<li><a href="${i}">${i}</a></li>`
					}
					html+=`<li><a href="#" id="next">下一页</a></li>`;
					$('#pages').html(html);
				}
				if(pageCount>5){
					if(pno<5){    //当前页小于5
						$("#more2").show();
						$("#more1").hide();
						$("#one").html(1).attr("href",1);
						$("#two").html(2).attr("href",2);
						$("#three").html(3).attr("href",3);
						$("#four").html(4).attr("href",4);
						$("#last").html(pageCount).attr("href",pageCount);
					}else if(pno<pageCount-2){
						$("#more2").show();
						$("#more1").show();
						$("#two").html(pno-1).attr("href",pno-1);
						$("#three").html(pno).attr("href",pno);
						$("#four").html(pno+1).attr("href",pno+1);
					}else{
						$("#more2").hide();
						$("#more1").show();
						$("#two").html(pageCount-3).attr("href",pageCount-3);
						$("#three").html(pageCount-2).attr("href",pageCount-2);
						$("#four").html(pageCount-1).attr("href",pageCount-1);			
					}
				}
				$("#pages a:contains("+pno+")").addClass("hover").parents().siblings().children().removeClass("hover");
			}
				
			
		})
};
	
loadData();
//点击各页分别加载
$("#pages").on('click','a',function(e){
	e.preventDefault();
	var pno=$(this).attr("href");
	loadData(pno);
})
//点击前一也后一页加载
$("#prev").click(function(){
	LoadPN(true);
})
$("#next").click(function(){
	LoadPN(false);
})
function LoadPN(isPrev){
	var pno=parseInt($('#pages li').find(".hover").attr("href")); 
	var pageCount=parseInt($('#last').attr("href"));
	if(isPrev&&pno>1){
		pno--;
		loadData(pno);
	}else if(!isPrev&&pno<pageCount){
		pno++;
		loadData(pno);
	}
	
	
}



})