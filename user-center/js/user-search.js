
function loadProductByPage(pno){	
	var kw=sessionStorage.getItem("kw");
	$.ajax({
		type:"POST",
		url:"data/user-search.php",
		data:{pno:pno,kw:kw},
		success:function(pager){
			/*console.log("获取服务器返回数据");
			console.log(pager);*/
			var html='';
			for(var p of pager.data){
				html+=`
				<div class='interset'>
					<div class='inttTit'>
						<span>
							<i>
								<a href="/userintelligentRecommend.jsp?type=0/">[孕前]</a>
							</i>
							<b>
								<a href="${p.href1}" target='_blank'>${p.title}</a>	
							</b>
						</span>
						${p.dtime}
					</div>
					<p class='intCon'>
						${p.content}
						<a href="http://huaiyun.pcbaby.com.cn/357/357558.html" target="_blank">[详细]</a>
					</p>
					<div class="intKey">
						<b class=''>关键字:</b>
						<a href="${p.href2}" target='_blank'>${p.keyword}</a>
					</div>
				</div>`;
			}
			$(".friendCon").html(html);

			
			var html=`<ol>`;
			if(pager.pno>1){
				html+=`<li><a href="${pager.pno-1}" class='pre'>上一页</a></li>`;
			}
			if(pager.pno-2>0){
              html += `<li><a href="${pager.pno-2}">${pager.pno-2}</a></li>`;
			}
			//判断是否显示上一页
			if(pager.pno-1>0){
				html += `<li><a href="${pager.pno-1}">${pager.pno-1}</a></li>`;
			}
			html += `<li class="active"><a href="${pager.pno}">${pager.pno}</a></li>`;
			//判断是否显示下一页
			if(pager.pno+1<=pager.pageCount){
              html += `<li><a href="${pager.pno+1}">${pager.pno+1}</a></li>`;
			}

			//判断是否显示下下一页
			if(pager.pno+2<=pager.pageCount){
              html += `<li><a href="${pager.pno+2}">${pager.pno+2}</a></li>`;
			}
			if(pager.pno<pager.pageCount){
				
				html+=`<li><a href="${++pager.pno}" class='next'>下一页</a></li>`;
				
				
			}
			html+=`</ol>`
			/*console.log(pager.pageCount);*/
			$(".page").html(html);
		
		}
		/*error:function(){
		  console.log("网络异常");
		}*/ 
	});
    

}

loadProductByPage(1);

$(".page").on("click","li a",function(e){
//console.log(2);//事件绑定对象
    //a:阻止事件默认行为 a
    e.preventDefault();
    //b:获取当前页码
    var pno = $(this).attr("href");
    //c:调用函数
	$(this).addClass("active");
    loadProductByPage(pno);
	/*console.log(pno);*/
	
});

$.ajax({
	type:"POST",
	url:"data/recommend_page.php",
	data:{pno:1},
	success:function(pager){
		$('.page').on('click',".pre",function(e){
			e.preventDefault();
			var pno=$(this).attr("href");
			console.log(pno);
			if(pno>1){	
				/*console.log(1);*/
				
				loadProductByPage(pno);
					//console.log(pno);
			}
		})
		
		$('.page').on('click',".next",function(e){
			e.preventDefault();
			var pno=$(this).attr("href");
			console.log(pno);
			//console.log(pager.pageCount);
			//if(pno<=pager.pageCount){	
				/*console.log(1);*/
				
				loadProductByPage(pno);
				
					//console.log(pno);
			//}
			
		})
	}
})



			
			/*if(pager.pno>1){
				$('.page').on('click',"#pre",function(e){
					
					e.preventDefault();
					console.log(1);
					pager.pno--;
					loadProductByPage(pager.pno);
				})
			}
			if(pager.pno<pager.pageCount){
				$('.page').on('click',"#next",function(e){
					console.log(1);
					console.log(pager.pageCount);
					e.preventDefault();
					pager.pno++;
					loadProductByPage(pager.pno);
				})
			}
		}
});*/






