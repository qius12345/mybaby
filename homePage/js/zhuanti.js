(()=>{
  $.get("data/zhuanti/lunbotu.php",data=>{
    var html="";
	for(var i=0;i<data.length;i++){
	   var t=data[i];
       html+=`<a href="${t.ztlbhref}" title="${t.ztlbtitle}">
					<img src="${t.ztlbpic}">
			  </a>
		 `;
   }
   html+=`<a href="${data[0].ztlbhref}" title="${data[0].ztlbtitle}">
			<img src="${data[0].ztlbpic}">
		  </a>`
   $("#lunbopic").html(html);
  })
  .then(()=>{
    var len=$("[data-load=lunbo]").children().length;
	var htmlstr="<li></li>".repeat(len-1);
    $("[data-load=lunboli]").html(htmlstr);
	var bannerstu=$("[data-load=lunbo]")[0];
	var bannerind=$("[data-load=lunboli]")[0];
	var TRAN=300,INTERVAL=2000,LIDWIDTH=995;
	bannerstu.style.width=LIDWIDTH*len+"px";
	bannerind.children[0].className="hover";
	var n=0;
	function moveOnce(){
	  n++;
	  var left=LIDWIDTH*n;
      bannerstu.style.left=-left+"px";
	  bannerind.children[n-1].className="";
	  if(n==len-1){
		setTimeout(()=>{
		  bannerstu.style.transition="unset";
		  bannerstu.style.left=0;
		  bannerind.children[0].className="hover";
		  n=0;
		  setTimeout(()=>{
		    bannerstu.style.transition="all ."+TRAN/100+"s linear";
		  },100)
		},TRAN);
        
	  }else{
	    bannerind.children[n].className="hover";
	  }
	}
	var timer=setInterval(moveOnce,TRAN+INTERVAL);
	bannerstu.onmouseover=function(){
	  clearInterval(timer);
	  timer=null;
	};
	bannerstu.onmouseout=function(){
	  timer=setInterval(moveOnce,TRAN+INTERVAL);
	};
	for(let i=0;i<bannerind.children.length;i++){
	  bannerind.children[i].onclick=function(){
	    n=i;
		bannerstu.style.left=-LIDWIDTH*n+"px";
		$("[data-load=lunboli]").children().removeClass("hover");
		this.className="hover";
		clearInterval(timer);
		timer=setInterval(moveOnce,TRAN+INTERVAL);
	  }
	}
    $("[data-move=left]").click(function(){
	  if(n>0){
	    n--;
        bannerstu.style.left=-LIDWIDTH*n+"px";
        bannerind.children[n].className="hover";
		bannerind.children[n+1].className="";
	  }else{
        bannerstu.style.transition="unset";
	    n=len-1;
        bannerstu.style.left=-LIDWIDTH*n+"px";
		setTimeout(function(){
	      bannerstu.style.transition="all ."+TRAN/100+"s linear";
		  n--;
          bannerstu.style.left=-LIDWIDTH*n+"px";
		  bannerind.children[0].className="";
          bannerind.children[n].className="hover";
		},100);
	  }
	  clearInterval(timer);
	  timer=setInterval(moveOnce,TRAN+INTERVAL);
	});
    $("[data-move=right]").click(function(){
	  if(n<len-2){
	    n++;
        bannerstu.style.left=-LIDWIDTH*n+"px";
        bannerind.children[n].className="hover";
		bannerind.children[n-1].className="";
	  }else{
		n=len-1;
		bannerstu.style.left=-LIDWIDTH*n+"px";
		bannerind.children[len-2].className="";
        bannerind.children[0].className="hover";
		setTimeout(function(){
		  bannerstu.style.transition="unset";
	      n=0;
		  bannerstu.style.left=-LIDWIDTH*n+"px";
		  setTimeout(function(){
	        bannerstu.style.transition="all ."+TRAN/100+"s linear";		  
		  },100);

		},TRAN);
	  }
	  clearInterval(timer);
	  timer=setInterval(moveOnce,TRAN+INTERVAL);
	});
  })
  .then(()=>{
    $.get("data/zhuanti/pplm.php",data=>{
	  var html="";
	  for(var i=0;i<data.length;i++){
	    html+=`
		 <li><a href="${data[i].ztpphref}">${data[i].ztpptt}</a></li>	
		`;
	  }
	  $("#pplmlb").html(html);
	})
  })
  .then(()=>{
	$.get("data/zhuanti/zhuantilc.php",data=>{
	  var html="";
	  var htmldh="<ul>";
	  for(var i=0;i<data.length;i++){
        if(i%3==0){
		  var f=i/3;
		  var fid="fl"+f;
		  var dhid="tz"+f;
		  html+=`
			<div class="floor" id=${fid}>
				<p>${data[i].ztlclb}</p>	
			    <div class="chakan">
					<a href="#">
						<p>查看更多</p>
						<i class="ftb"></i>
				    </a>
				</div>
				<div style="clear:both"></div>
				<div class="floorzhu">	  
		  `
		  htmldh+=`
			  <li>
				<a href="#" id="${dhid}">${data[i].ztlclb}</a>
			  </li>
		  
		  `
		}		
		html+=`
			<div>
				<a href="${data[i].ztlchref}">
				  <img src="${data[i].ztlcpic}">
                  <p>${data[i].ztlctt}</p>
				</a>
				<p>
				  ${data[i].ztlcjj}
				</p>
			</div>
		 ` 
		if((i+1)%3==0){
		  html+=`
		    </div>
				<div style="clear:both"></div>
			</div>	  
		  ` 
		}
    }
	htmldh+="</ul>";
	$("#floor").html(html);
	var len=$("#floor>.floor").length;
	$("#lctz").html(htmldh);
	var flh=[];
	for(var i=0;i<len;i++){
	  var flid="fl"+i;
	  flh[i]=$("#"+flid)[0].offsetTop;
	}
	$("#lctz").on("click","a",e=>{
		e.preventDefault();
		var dhid=e.target.id;
		var x=dhid.slice(2);
		var tzjl=flh[x]-document.documentElement.scrollTop;
		var k=0;
		var timer=setInterval(()=>{
		  if(k<20){
			window.scrollBy(0,tzjl/20);
			k++;
		  }else{
			clearInterval(timer);
			timer=null;
		  }
		},10);
    })  
    var fhei=$("#floor>.floor")[0].clientHeight;
	console.log(fhei);
	console.log(flh);
    window.addEventListener("scroll",function(){
      var bt=document.documentElement.scrollTop;
	  var index=0;
	  for(var i=0;i<len;i++){
	    if(bt>flh[i]-fhei/2&&bt<flh[i]+fhei){
		  $("#lctz>ul>li>a").removeClass("hover");
		  $("#tz"+i).addClass("hover");
		  index=1;
		}
	  }
	  if(index==0){
	    $("#lctz>ul>li>a").removeClass("hover");
	  }
    }) 
  }) 
  
 })
})();