$(function(){
	var megd1=$("#tuihuo-three-xian").height();
	$(".tuihuo-three").css("height",megd1+"px");
	$(".tuihuo-two>ul>li").click(function(){
		console.log($(this).index());
		$(this).attr("id","tuihuo-cha").siblings("li").removeAttr("id");
		var qie=$(this).index();
		$(".tuihuo-three>div:eq("+qie+")").attr("id","tuihuo-three-xian").siblings("div").removeAttr("id");
		var megd1=$("#tuihuo-three-xian").height();
		$(".tuihuo-three").css("height",megd1+"px");
	});
});