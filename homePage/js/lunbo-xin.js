(()=>{
 $.get("data/06-picture-cxq/index-lunbo-tishi.php",data=>{
   var html="";
   for(var i=0;i<data.length;i++){
	 var t=data[i];
	 if(i<data.length-1)
       html+=`<li title="${t.ilttitle}"><a href="${t.ilthref}">${t.iltname}</a><span></span></li>`;
	 else
	   html+=`<li title="${t.ilttitle}"><a href="${t.ilthref}">${t.iltname}</a></li>`;
   }
   $("#lunbo-cxq>div>.lie-cxq").html(html);
 })

 $.get("data/06-picture-cxq/lunbo-pic.php",data=>{
	var ht1="";
    var n=0;
	var html="";
	html+="<div><div>";
	for(var p of data){  
	  if(n!=0&&n%10==0){
	    html+="</div></div><div><div>";
	  }else if(n!=0&&n%5==0){
	    html+="</div><div>"
	  }
	  n+=parseInt(p.ilpzhanwei);
	  if(p.ilpspe==1){
		  html+=`
			  <div class="teshu-cxq">
			    <img src="${p.ilppic}">
				<div>${p.ilptip}</div>
			  </div>`
	  }else{
	     if(p.ilpzhanwei==1){
			 html+=
			  `
		    	<div class="cg-cxq">
				  <img src="${p.ilppic}">
				  <div class="hs-cxq"><a href="${p.ilphref}">${p.ilptip}</a></div>
				</div>  
			  `
		 }else{
	    	var zw=parseInt(p.ilpzhanwei);
			var Wid=zw*(185)+10*(zw-1);
			var wid=Wid-20;
			html+=
			   `
				<div class="cg-cxq" style="width:${Wid}px">
				  <img src="${p.ilppic}">
				  <div class="hs-cxq" style="width:${wid}px"><a href="${p.ilphref}">${p.ilptip}</a></div>
				</div>  
			   `
		  }
	  }
	  if(n==10){
	    ht1+=html;
		ht1+="</div></div>";
	  }
	}
	html+="</div></div>"+ht1;	
	$("#lunbo-cxq>.tu-cxq>div>div").html(html);
 })
 .then(()=>{
	var len=$("[data-load=lunbo-cxq]").children().length;
	var htmlstr="<li></li>".repeat(len-1);
    $("[data-load=lunboqian-cxq]").html(htmlstr);
	$(".cg-cxq>img").hover(e=>{
		$(e.target).next().toggleClass("show");
	});	
	var bannerstu=$("[data-load=lunbo-cxq]")[0];
	var bannerind=$("[data-load=lunboqian-cxq]")[0];
	var TRAN=300,INTERVAL=2000,LIDWIDTH=966;
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
		$("[data-load=lunboqian-cxq]").children().removeClass("hover");
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
})();