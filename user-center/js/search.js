window.onclick=function(e){
   var shelper=
      $("#shelper")[0],txtSearch=$("#txtSearch")[0];
   if(e.target.id!="shelper"&&e.target.id!="txtSearch"){
      shelper.style.display="none";
   }
}
$("#txtSearch").keyup(function(){
  var kw=$("#txtSearch").val();
  $.ajax({
    type:"POST",
    url:"data/search.php",
    data:{kw:kw},
    success:function(data){
      //console.log(data);
	  if(data.length>0){
	    var html="";
		for(var obj of data){
		  html+=`
		    <li title="${obj.title}">
               <div class="search-item">${obj.title.slice(0,15)+"... ..."}</div>
             </li>
		  `;
		}
		$("#shelper").html(html);
		$("#shelper").show();
	  }else{
	    $("#shelper").hide();
	  }
    },
    error:function(){
      alert("请检查网络");
    }
  });
});
$("#shelper").click(function(e){
  if($(e.target).hasClass("search-item")){
    $("#txtSearch").val($(e.target).parent().attr("title"));
  }
});
$("[data-trigger=search]").click(function(e){
  e.preventDefault();
  if($("#txtSearch").val()!=""){
	sessionStorage.setItem("kw",$("#txtSearch").val());
	location="user-search.html";
  }
});


