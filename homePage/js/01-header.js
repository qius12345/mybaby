function $(selector){
	var elems = document.querySelectorAll(selector);
	if(elems.length==1) elems=elems[0];
	return elems;
}
var lis=$("#nav>.nav").children;
lis[lis.length-1].className="spread";
lis[lis.length-1].firstElementChild.style.color="red";
for(var i=0;i<lis.length;i++){
	lis[i].addEventListener("mouseover",function(){
		var li=this;
		if(!li.hasAttribute("class=spread"))
		var spread=li.parentNode.getElementsByClassName("spread")[0];
		spread.className="";
		spread.firstElementChild.style.color="#333333";
		li.className="spread";
		li.firstElementChild.style.color="red";
	})
}