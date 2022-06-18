$(function(){
	var hui=$(".settle-oder-list>ul").height();
	$(".settle-oder-tatal").css("height",hui+"px");
	
	// 悬浮
	$(".settle-add-two>ul>li").hover(function(){
		//console.log("+++")
		$(this).find(".settle-addtwo-p3").show();
		
	},function(){
		//console.log("---")
		$(this).find(".settle-addtwo-p3").hide();
	});
	
	
	
	
});