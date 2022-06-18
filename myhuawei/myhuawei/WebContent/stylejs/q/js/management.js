$(function(){
	$(".mana-left>ul>li").click(function(){
		/* 点击切换 */
		console.log($(this).index());
		$(this).attr("id","mana-li1").siblings("li").removeAttr("id");
		var qie=$(this).index();
		$(".mana-right>div:eq("+qie+")").attr("id","mana-xinxi").siblings("div").removeAttr("id");
		//var mrgao=$("#home-four-xian").height();
		//$(".home-four-shop1").css("height",mrgao+"px");
		// 自适应高度
		var megd1=$("#mana-xinxi").height();
		$(".mana-right").css("height",megd1+"px");
	});
});