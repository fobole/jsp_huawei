$(function(){
	//数字加减框
		 $("body").on("click",".num-jian",function (m) {
			   var obj = $(this).closest("ul").find(".input-num");
			   if (obj.val() <= 1) {
					obj.val(1);
			   } else {
					obj.val(parseInt(obj.val()) - 1);
			   }
			   obj.change();
		 });
		 $("body").on("click",".num-jia",function (m) {
			   var obj = $(this).closest("ul").find(".input-num");
			   obj.val(parseInt(obj.val()) + 1);
			   obj.change();
		 });
		 
		 $(".shipp_bottem_hearden>li").click(function(){
		 	$(this).attr("id","current").siblings("li").removeAttr("id");
		 	$(this).find("div").show();
		 	$(this).siblings("li").find("div").hide();
		 });
		 
		 
		
		 $(".shipp_bottem_hearden>li").click(function(){
			 console.log("--------")
		 });
		 
		 
		 
});