$(function(){
	$(".chon-div2-s5").click(function(){
		$(".chmiddle-yck").toggle();
	});
	/* 切换支付方式 */
	$(".chmiddle-two>ul>li").click(function(){
		// console.log("------");
		$(this).attr("id","zffs-xuan").siblings("li").removeAttr("id");
		$("#zffs-xuan").prepend($("#zffs-xuan-img1"));
	});
	
	/* 点击支付显示弹出陈 */
	$(".chmiddle-three>p").click(function(){
		$("#zffs-xuan").find(".ch-zfym-big").show();
	});
	$(".h5-cha-yc").click(function(){
		// console.log("++");
		$("#zffs-xuan").find(".ch-zfym-big").hide();
	});
	
	$(".ch-zfym-two-li1").click(function(){
		// console.log("++");
		$("#zffs-xuan").find(".ch-zfym-big").hide();
	});
	
	
	
});