$(function(){
		
	
	
		var t = null;
		var liw=$("#big>ul>li:first").width();
//		console.log(liw)
		t=setInterval(function(){
			play();
		},2000);
		
		function play(){
			//$("#big>ul").animate({"left":-liw},function(){
				//$(this).css('left',"0px").find("li:first").appendTo(this)
			//})
		}
		
		$("#big").hover(function(){
			clearInterval(t)
		},function(){
			t=setInterval(function(){
				play()
			},2000);
		})
		
		$(".right").click(function(){
			play();
		})
		
		$(".left").click(function(){
			$("#big>ul").css("left",-liw).find("li:last").prependTo($("#big>ul"))
			$("#big>ul").animate({"left":"0px"})
		});
		
		/* 隐藏菜单 */
		$(".caidan-li1").hover(function(){
			// 加载二级菜单 
			var btid=$(this).val();
			//console.log(btid)
			$(this).find("ul>li>ul").load("smailtype_json?btid="+btid,function(data){});
			$(this).find("ul").show();
			$(this).css({"background":"#FEF4F2","color":"#000000"});
		},function(){
			$(this).find("ul").hide();
			$(this).css({"background":"white","color":"#9E9796"});
		});
		
		
});