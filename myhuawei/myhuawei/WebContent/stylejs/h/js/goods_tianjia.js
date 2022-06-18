$(function(){
	$(".label2-ke").click(function(){
		var jiajia=$('<div class="color-con-big"></div>');
		var colorbig=$('<div class="color-con-bigdiv"></div>');
		var xiangdiv=$('<div class="color-con-bigdiv1"></div>');
		var cha=$('<img class="cha-one1" src="stylejs/h/img/close.png" />');
		var codiv=$('<div class="cc-div1"></div>');
		var condiv=$('<div class="cc-div2"></div>');
		var cname=$('<div class="cc-div1-d1"></div>');
		var cimg=$('<div class="cc-div1-d2"></div>');
		var label=$('<label class="cc-label1"></label>');
		var input=$('<input type="text" class="form-control cc-input1" />');
		var label1=$('<label class="cc-label1"></label>');
		var input1=$('<input type="file" class="form-control cc-input1" />');
		//配置
		var condiv1=$('<div class="cc-div2-d1"></div>');
		var condiv2=$('<div class="cc-div2-d2"></div>');
		var condiv3=$('<div class="cc-div2-d3"></div>');
		//
		var label3=$('<label class="cc-label1"></label>');
		var input3=$('<input type="text" class="form-control cc-input2" />');
		var label4=$('<label class="cc-label1"></label>');
		var input4=$('<input type="text" class="form-control cc-input2" />');
		var label5=$('<label class="cc-label1"></label>');
		var input5=$('<input type="text" class="form-control cc-input2" />');
		var fuzhi=$('<span class="cc-div2-jia1">复制</span>')
		//
		// 
		$('.jia_jia').append(jiajia.append(colorbig.append(codiv.append(cname.append(label
		.html("颜色名称:")).append(input)).append(cimg.append(label1
		.html("颜色图片:")).append(input1))).append(condiv
		.append(condiv1.append(label3
		.html("颜色图片:")).append(input3)).append(condiv2.append(label4
		.html("颜色图片:")).append(input4)).append(condiv3.append(label5
		.html("颜色图片:")).append(input5)).append(fuzhi)))
		.append(xiangdiv).append(cha));
		
		$('.cha-one1').click(function(){
			$(this).parent().remove();
		});
		/*  */
		$(".cc-div2-jia1").click(function(){
			var div=$('<div class="cc-div2"></div>');
			var div1=$('<div class="cc-div2-d1"></div>')
			var label=$("<label class='cc-label1'></label>");
			var input=$("<input type='text' class='form-control cc-input2'  placeholder='请输入版本价格' />");
			var cha=$('<img class="cha-one" src="stylejs/h/img/close.png" />');
			//
			var jia=$('<div class="cc-div2-d2"><label class="cc-label1">版本价格:</label><input type="text" class="form-control cc-input2" placeholder="请输入版本价格" /></div>');
			var kucun=$('<div class="cc-div2-d2"><label class="cc-label1">版本价格:</label><input type="text" class="form-control cc-input2" placeholder="请输入版本库存" /></div>');
			//复制版本
			$(this).parent().parent().append(div.append(div1.append(label.html("版本配置:"))
			.append(input)).append(cha).append(jia).append(kucun));
			
			$(".cha-one").click(function(){
				$(this).parent().remove();
			});
		});
	});
	
	
	$(".cc-div2-jia").click(function(){
				var div=$('<div class="cc-div2"></div>');
				var div1=$('<div class="cc-div2-d1"></div>')
				var label=$("<label class='cc-label1'></label>");
				var input=$("<input type='text' class='form-control cc-input2'  placeholder='请输入版本价格' />");
				var cha=$('<img class="cha-one" src="stylejs/h/img/close.png" />');
				//
				var jia=$('<div class="cc-div2-d2"><label class="cc-label1">版本价格:</label><input type="text" class="form-control cc-input2" placeholder="请输入版本价格" /></div>');
				var kucun=$('<div class="cc-div2-d2"><label class="cc-label1">版本价格:</label><input type="text" class="form-control cc-input2" placeholder="请输入版本库存" /></div>');
				//复制版本
				$(this).parent().parent().append(div.append(div1.append(label.html("版本配置:"))
				.append(input)).append(cha).append(jia).append(kucun));
				
				$(".cha-one").click(function(){
					$(this).parent().remove();
				});
			});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//<img id="cha-one" src="img/close.png" >
	//
	// $(".label2").click(function(){
	// 	var color=$('<div class="color-con-bigdiv"></div>');
	// 	var color1=$('<div class="color-con-bigdiv1"></div>');
	// 	var ccc=$('<div class="cc-div1"><div class="cc-div1-d1"><label class="cc-label1">颜色名称:</label><input type="text" class="form-control cc-input1" placeholder="请输入商品名称" /></div><div class="cc-div1-d2"><label class="cc-label1">颜色图片:</label><input type="file" class="form-control cc-input1" placeholder="请输入商品名称" /></div></div><div class="cc-div2"><div class="cc-div2-d1"><label class="cc-label1">版本配置:</label><input type="text" class="form-control cc-input2" placeholder="请输入商品名称" /></div><div class="cc-div2-d2"><label class="cc-label1">版本价格:</label><input type="text" class="form-control cc-input2" placeholder="请输入商品名称" /></div><div class="cc-div2-d3"><label class="cc-label1">版本库存:</label><input type="text" class="form-control cc-input2" placeholder="请输入商品名称" /></div><span class="cc-div2-jia">复制</span></div>')
	// 	$('.color-con-big').append(color.append(ccc)).append(color1);
	// 	$(".cc-div2-jia").click(function(){
	// 		var div=$('<div class="cc-div2"></div>');
	// 		var div1=$('<div class="cc-div2-d1"></div>')
	// 		var label=$("<label class='cc-label1'></label>");
	// 		var input=$("<input type='text' class='form-control cc-input2'  placeholder='请输入版本价格' />");
	// 		var cha=$('<img class="cha-one" src="img/close.png" />');
	// 		//
	// 		var jia=$('<div class="cc-div2-d2"><label class="cc-label1">版本价格:</label><input type="text" class="form-control cc-input2" placeholder="请输入版本价格" /></div>');
	// 		var kucun=$('<div class="cc-div2-d2"><label class="cc-label1">版本价格:</label><input type="text" class="form-control cc-input2" placeholder="请输入版本库存" /></div>');
	// 		//复制版本
	// 		$(".color-con-bigdiv").append(div.append(div1.append(label.html("版本配置:"))
	// 		.append(input)).append(cha).append(jia).append(kucun));
			
	// 		$(".cha-one").click(function(){
	// 			console.log($(this));
	// 		});
	// 	});
	// });
	
	
})