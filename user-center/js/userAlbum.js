$(function(){
   //1:阻止浏览器默认行为
     $(document).on({
         //拖动离开 //拖动放   //拖动进入 //拖动悬停
         dragleave:function(e){e.preventDefault();},
         drop:function(e){e.preventDefault();},
         dragenter:function(e){e.preventDefault();},
         dragover:function(e){e.preventDefault();}
     });

     //2:获取"拖拽区域" 绑定drop
	     var area = document.getElementById("area");
         area.addEventListener("drop",function(e){
         //3:阻止默认行为14:44-14:46
         e.preventDefault();
         //4:获取文件对象信息
         var fileList = e.dataTransfer.files;
         //5:判断文件大小 判断文件类型
         var size = fileList[0].size;
         var type = fileList[0].type;
         var name = fileList[0].name;
         if(size>2*1024*1024){
             alert("上传文件不能超过2MB");
             return;
         }
         if(type.indexOf("image")===-1){
             alert("您拖拽不是图片");
             return;
         }
         //6:实现预览功能
         var img = window.webkitURL.createObjectURL(fileList[0]);
         var str = `<img src="${img}" />`
         //图片名称:${name}图片大小:${size}`;
         $("#area").html(str);
         //7:AJAX上传 15:20-15:25
         var xhr = new XMLHttpRequest();
         xhr.open("post","upload.php",true);
         xhr.setRequestHeader("X-Requested-With",
                 "XMLHttpRequest");
         var fd = new FormData();
         fd.append("mypic",fileList[0]);
         xhr.send(fd);
         console.log(fileList[0]);
   });
  
  function loading(){
    $.ajax({
     url:"data/uploadAlb.php",
	 success:function(data){
      var html="";
	  for(var i=0;i<data.length;i++){
		var obj=data[i];
	    html+=`<img src="${obj.img}">`;
	  }
	  $("#myAlbum").html(html);
	 }
   });
  }
 $("#upload").click(function(e){
   e.preventDefault();
   loading();
   $("#area").html("将图片拖拽到此区域");
 });
 loading();
});