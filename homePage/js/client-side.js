window.onload= function () {
    //���������͸����Ŀ�ߺ�windowһ��
    var clientH=window.innerHeight;
    $(".main").css("height",clientH);
    $(".panel").each(function(){
        $(this).css("height",clientH);
    })

    //����СԲ�㶯̬�����ʽ
    $(".inds").on("click",'a',function(e){
        e.preventDefault();
        $(this).addClass("hover").parent().siblings().children().removeClass("hover");
        var i=$(".inds>li").has("a.hover").index();
        $(".main").css("transform","translateY("+(-i*100)+"%)");
        $(".main>.panel").eq(i).addClass("checked").siblings().removeClass("checked");
    })
    $(".jt").click(function(){
        var i=$(".inds>li").has("a.hover").index()+1;
        $(".inds>li").eq(i).addClass('hover');
        $(".main").css("transform","translateY("+(-i)+"%)");
        $(".main>.panel").eq(i).addClass("checked").siblings().removeClass("checked");
    })

    /*�����ǹ���������*/

    //����������¼���������
    var wheel= function (event) {
        var delta=0;
        if(!event)//for ie
            event=window.event;
        if(event.wheelDelta){//ie,opera
            delta=event.wheelDelta/120;
        }else if(event.detail){
            delta=-event.detail/3;
        }
        //�ҵ���ǰ��ѡ�еĵ���СԲ��
        var inds=$(".inds>li").has("a.hover").index();
        if(delta){
            handle(delta,inds);
        }
        if(event.preventDefault)
            event.preventDefault();
        event.returnValue=false;
    };
    if(window.addEventListener){
        window.addEventListener('DOMMouseScroll',wheel,false);
    }
    window.onmousewheel=wheel;
    //���ô�����
}
    function handle(delta,inds) {
        if(delta>0 && inds>0){//���Ϲ���
            inds--;
        }else if(delta<0 && inds<4){//���¹���
            inds++;
        }
        $(".inds a").eq(inds).addClass("hover").parent().siblings().children().removeClass("hover");
        $(".main").css("transform","translateY("+(-inds*100)+"%)");
        $(".main>.panel").eq(inds).addClass("checked").siblings().removeClass("checked");
    }
