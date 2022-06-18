$(function(){
	var megd=$("#perright-dingdan-xian").height();
	$(".perright-dingdan").css("height",megd+"px");
	/* 我的订单切换 */
	$(".perright-two>ul>li").click(function(){
		console.log($(this).index());
		$(this).attr("id","perright-two-li1").siblings("li").removeAttr("id");
		//var qie=$(this).index();
		//$(".perright-dingdan>div:eq("+qie+")").attr("id","perright-dingdan-xian").siblings("div").removeAttr("id");
		//var mrgao=$("#home-four-xian").height();
		//$(".home-four-shop1").css("height",mrgao+"px");
		//var megd1=$("#perright-dingdan-xian").height();
		//$(".perright-dingdan").css("height",megd1+"px");
	});
	
});