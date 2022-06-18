<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>结算settlement</title>
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/settlement.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/input-style.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hover.css"/>
		<style type="text/css">
				/* .semoone-div2-p1{
					display: inline-block;
					color: #A4A4A4;
				}
				
				.semoone-div2-p2{
					display: inline-block;
				}
				.semoone-div2-p3{
					display: inline-block;
					margin-left: 52px;
				}
				.semoone-div2-p4{
					display: inline-block;
				} */
				.tianadd-one{
					margin-top: 170px;
				}
				
				
				/* 编辑 */
				/*  */
				.tianadd1{
					/* display: none; */
					width: 100%;
					height: 100%;
					background: rgba(0,0,0,0.1);
					position: fixed;
					top: 0px;
					left: 0px;
					z-index: 999;
				}
				.tianadd-one1{
					width: 780px;
					height: 420px;
					background: white;
					margin-top: 170px;
					position: relative;
				}
				.tianadd-one-div11{
					color: #444444;
					font-size: 18px;
					text-align: center;
					padding-top: 25px;
				}
				.tianadd-one-div21{
					height: 60px;
					margin-left: 30px;
				}
				.todd21{
					margin-top: 20px;
				}
				.tianadd-one-div21>input{
					display: inline-block;
					width: 598px;
					float: left;
					height: 40px;
					padding-left: 12px;
					font-size: 14px;
					border: 1px solid #DEDEDE;
				}
				.tianadd-one-div21>span{
					display: inline-block;
					line-height: 60px;
					width: 90px;
					font-size: 14px;
					color: #3A3A3A;
					text-align: right;
					float: left;
					line-height: 40px;
				}
				/* 多行文本框 */
				.tianadd-one-div31>textarea{
					width: 586px;
					height: 60px;
					margin-left: 120px;
					padding: 8px 12px;
					font-size: 14px;
					border: 1px solid #DEDEDE;
				}
				.tianadd-one-div41>span{
					display: inline-block;
					width: 172px;
					height: 40px;
					text-align: center;
					font-size: 18px;
					line-height: 40px;
					
				}
				.tianadd-one-div41{
					text-align: center;
				}
				.tianone-s11{
					border: 1px solid #DEDEDE;
					color: #3A3A3A;
					margin-right: 20px;
					margin-top: 11px;
					cursor: pointer;
				}
				.tianone-s21{
					border: 1px solid #CA141D;
					background: #CA141D;
					color: white;
					cursor: pointer;
				}
				/* cha */
				#add-cha1{
					width: 20px;
					height: 20px;
					position: absolute;
					top: 14px;
					right: 14px;
				}
				
				.not-arrow1{
					border: 1px solid #DEDEDE;
					display: inline-block;
					height: 38px;
					margin-right: 10px;
					width: 194px;
				}
				.province1{
					margin-left: 0px;
					padding-left: 10px;
				}
				.city1{
					padding-left: 10px;
				}
				.district1{
					padding-left: 10px;
				}	
				
				
				
				/* 地址为空 */
				#add-kong{
					width: 760px;
					height: 78px;
					/* border: 1px solid #EAEAEA; */
					margin-left: 40px;
					margin-top: 10px;
				}
				#add-kong .settle-addone-p2{
					width: 758px;
					height: 76px;
					border: 1px solid #EAEAEA;
					line-height: 76px;
				}			
		</style>
	</head>
	<body>
		<!-- 头部kaishi -->
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
		<div class="settlement-big">
			<div class="settle-add">
				<div class="settle-add-one">
					<p class="settle-addone-p1">收货地址</p>
					<c:if test="${mrdzlist.size()!=0 or dzlist.size()!=0 }">
						<p class="settle-addone-p2"><img src="stylejs/q/img/301加.png" > 新增收货地址</p>
					</c:if>
				</div>
				<div class="settle-add-two">
					<!-- 地址为空 -->
					<c:if test="${mrdzlist.size()==0 and dzlist.size()==0 }">
					<div id="add-kong">
						<p class="settle-addone-p2"><img src="stylejs/q/img/301加.png" > 新增收货地址</p>
					</div>
					</c:if>
					<!-- 显示地址 -->
					<ul>
						<c:forEach items="${mrdzlist }" var="d">
							<li id="settle-addtwo-li1" value="${d.addid }">
								<div>
									<p class="settle-addtwo-p1">
									<span class="settle-addtwo-span1">${d.addname }</span> 
									<span class="settle-addtwo-span2">${d.addphone }</span>
									<span class="settle-addtwo-span3">&nbsp;默认地址&nbsp;</span> </p>   
									<p class="settle-addtwo-p2"><span>${d.addsheng }</span> <span>${d.addshi }</span> <span>${d.addqu }</span> <span>${d.adds }</span></p>
								</div>
								<p class="settle-addtwo-p3">
									<span class="sap-xf-span2">编辑</span>
									<span class="sap-xf-span3">删除</span>
								</p>
							</li>
						</c:forEach>
						<c:forEach items="${dzlist }" var="d">
								<li value="${d.addid }" >
									<div>
										<p class="settle-addtwo-p1">
											<span class="settle-addtwo-span1">${d.addname }</span> 
											<span class="settle-addtwo-span2">${d.addphone }</span>
										</p>   
										<p class="settle-addtwo-p2"><span>${d.addsheng }</span> <span>${d.addshi }</span> <span>${d.addqu }</span> <span>${d.adds }</span></p>
									</div>
									<p class="settle-addtwo-p3">
										<span class="sap-xf-span1">设为默认</span> 
										<span class="sap-xf-span2">编辑</span>
										<span class="sap-xf-span3">删除</span>
									</p>
								</li>
						</c:forEach>
					</ul>
				</div>
				<c:if test="${mrdzlist.size()!=0 or dzlist.size()!=0 }">
				<div class="settle-add-three">
					<p>查看所有地址</p>
				</div>
				</c:if>
			</div>
			<div class="settle-shop">
				<div class="settle-shop-one">
					<!-- 商品列表 -->
					<div class="settle-oder-list">
						<ul>
							<c:forEach items="${list }" var='l'>
								<li>
									<span class="set-carid" style="display:none;">${l.carid }</span>
									<span class="set-conid" style="display:none;">${l.conidcar }</span>
									<img src="${l.cimg }" >
									<p class="settle-oder-listp1">
										${l.gname } ${l.conname }（${l.cname }）
									</p>
									<p class="settle-oder-listp2">${l.carcount==0?shu:l.carcount }</p>
									<p class="settle-oder-listp3">
										￥<fmt:formatNumber value="${l.conjia }" pattern="#.00"/>
									</p>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="settle-oder-tatal">
						<div class="">
							<p class="sot-p1">商品由<span id="sot-s1">
								华为商城
							</span> 选择合作快递 </p>
							
							<p class="sot-p2"><span id="sot-s2">
								<span id="sot-s3">
									
								</span>
							</span> <span id="sot-s4">
								标准配送
							</span></p>
							
						</div>
					</div>
					<div class="settle-shop-fapiao">
						<p class="seshfp-p1"><span class="seshfp-s1"> 发票信息注：</span><span class="seshfp-s2">
							如果商品由第三方卖家销售，发票内容由其卖家决定，发票由卖家开具并寄出
						</span>
						</p>
						<p class="seshfp-p2">
							<span class="seshfp-s3">电子普通发票</span>
							<span class="seshfp-s3">个人</span>
							<span class="seshfp-s4">修改</span>  
						</p>
					</div>
					<div class="settle-shop-money">
						<p>
							<span class="ssmoney-s1"></span>
							<span class="ssmoney-s2"></span>
						</p>
						<p>
							<span class="ssmoney-s1">商品总金额：</span>
							<span class="ssmoney-s2">¥<fmt:formatNumber value="${goodsAmount }" pattern="#.00"/></span>
						</p>	
						<p>
							<span class="ssmoney-s1">运费：</span>
							<span class="ssmoney-s2">- ¥ 0.00</span>
						</p>	
						<p>
							<span class="ssmoney-s1">积分：</span>
							<span class="ssmoney-s2">- ¥ 0.00</span>
						</p>	
						<p>
							<span class="ssmoney-s4">结算金额：</span>
							<span class="ssmoney-s3">¥<span><fmt:formatNumber value="${goodsAmount }" pattern="#.00"/></span></span>
						</p>	
					</div>
				</div>
				<div class="settle-vip">
					
				</div>
			</div>
			<div class="settle-money">
				<div class="settle-money-one">
					<div class="semo-one-div1">
						<p class="semoone-p2">¥<span><fmt:formatNumber value="${goodsAmount }" pattern="#.00"/></span></p>
						<p class="semoone-p1">应付金额：</p>
					</div>
					<div class="semo-one-div2">
						配送至：
						<span>${address }</span>
						<span>${name }</span>
						<span>${phone }</span>
					</div>
					<a><div class="semo-one-div3 hvr-radial-out">
						提交订单
					</div></a>
				</div>
			</div>
		</div>
		
		<!-- 添加地址 -->
		<div class="jiadizhi">
			
		</div>
		
		
		<!-- 编辑地址 -->
		<div class="bianji">
		
		</div>
		
		<!-- 尾部 -->
		<jsp:include page="hwtail.jsp"></jsp:include>
		<!-- 底部结束 -->
		
		
		<span class="shul" style="display: none;">${shu }</span>
		<span class="conl" style="display: none;">${conid }</span>
	</body>
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/settlement.js" type="text/javascript" charset="utf-8"></script>
	
	<!-- 地址插件 -->
	<!-- <script src="stylejs/q/js/area.js"></script>
	<script type="text/javascript">
	  // 注意：功能兼容ie，样式完美兼容到ie11 
	  // 1.select原生下箭头样式兼容到ie10，需要在ie9及以下设置判断，区分样式
	  // 2.ie有页面刷新select框缓存的问题，缓存后不能直接选取城市，js设置的placeholder也会有影响
	  // 3.select框不能设置最大最小宽度
	  // 4.ie不兼容input placeholder 颜色，但是我们的select是js控制的，如果跟表单一同写，会有差异
	
	  var select = new SelectAddress('province', 'city', 'district', provinceList)
	  select.init()
	
	  var unSelected = "#999";
	  var selected = "#333";
	  $("select").css("color", unSelected);
	  // $("option").css("color", selected);
	  $("#province").change(function () {
	    select.handleProvinceClick.apply(select)
	    var selItem = $(this).val();
	    if (selItem == $(this).find('option:first').val()) {
	      $(this).css("color", unSelected);
	    } else {
	      $(this).css("color", selected);
	    }
	    $("#city").css("color", unSelected);
	    $("#district").css("color", unSelected);
	  });
	  $("#city").change(function () {
	    select.handleCityClick.apply(select)
	    var selItem = $(this).val();
	    if (selItem == $(this).find('option:first').val()) {
	      $(this).css("color", unSelected);
	    } else {
	      $(this).css("color", selected);
	    }
	    $("#district").css("color", unSelected);
	  });
	  $("#district").change(function () {
	    select.handleDistrictClick.apply(select)
	    var selItem = $(this).val();
	    if (selItem == $(this).find('option:first').val()) {
	      $(this).css("color", unSelected);
	    } else {
	      $(this).css("color", selected);
	    }
	  });
	</script> -->
	<script src="stylejs/q/js/settlement.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		if($('.settle-add-two ul li').length==0){
			$(".semo-one-div2 span:eq(1)").html('');
			$(".semo-one-div2 span:eq(2)").html('');
			$(".semo-one-div2 span:eq(0)").html("");
		}
		 console.log($("#settle-addtwo-li1").text());
		if( $("#settle-addtwo-li1")=="undefined" || $("#settle-addtwo-li1").text()=="" || $("#settle-addtwo-li1")==null ){
			 console.log("bianhong");
			$('.settle-add-two ul li:eq(0)').attr('id','settle-addtwo-li1');
		} 
		
		/* 此页面隐藏购物车 */
		$(".sxgwc").hide();
		
		
		// 选择地址
		$('.settle-add-two ul li div').click(function(){
			//console.log($(this));
			$(this).parent().attr("id","settle-addtwo-li1").siblings("li").removeAttr("id");
			/* console.log(,);
			console.log(,);
			console.log(); */
			$(".semo-one-div2 span:eq(1)").html($(this).find(".settle-addtwo-span1").html());
			$(".semo-one-div2 span:eq(2)").html($(this).find(".settle-addtwo-span2").html());
			$(".semo-one-div2 span:eq(0)").html($(this).find(".settle-addtwo-p2>span:eq(0)").html()+" "+$(this).find(".settle-addtwo-p2>span:eq(1)").html()+" "+$(this).find(".settle-addtwo-p2>span:eq(2)").html()+" "+$(this).find(".settle-addtwo-p2>span:eq(3)").html());
		});
		// 设置默认地址
		$(".sap-xf-span1").click(function(){
			//console.log($(this));
			var addid=$(this).parent().parent().val();
			var shu=$(".shul").html();
			var conid=$(".conl").html();
			$.ajax({
				url:"set_mr_dizhi_servlet?addid="+addid,//访问路径
				type:"post",//请求类型
				async:true,//是否同步请求
				error:function(){
					//访问错误会执行这个方法
					//404，500，405
				},
				success:function(data){
					if(data==0){
						 layer.msg('设置默认地址成功', {time: 300, icon:6},function(){
							 location="settlement?conid="+conid+"&shu="+shu;
						 });
						
					}
				}
			});
		});
		// 编辑地址
		$(".sap-xf-span2").click(function(){
			//id
			//console.log($(this).parent().parent().val());
			var addid=$(this).parent().parent().val();
			$(".bianji").load("settlement_add_servlet?addid="+addid,function(data){});
			/* //姓名
			//console.log($(this).parent().parent().find(".settle-addtwo-span1").html());
			$(".effect-9:eq(0)").val($(this).parent().parent().find(".settle-addtwo-span1").html());
			//电话
			//console.log($(this).parent().parent().find(".settle-addtwo-span2").html());
			$(".effect-9:eq(1)").val($(this).parent().parent().find(".settle-addtwo-span2").html())
			//省
			console.log($(this).parent().parent().find(".settle-addtwo-p2>span:eq(0)").html());
			$("#province")
			//市
			console.log($(this).parent().parent().find(".settle-addtwo-p2>span:eq(1)").html());
			$("#city")
			//区
			console.log($(this).parent().parent().find(".settle-addtwo-p2>span:eq(2)").html());
			$("#district")
			//详细地址
			console.log($(this).parent().parent().find(".settle-addtwo-p2>span:eq(3)").html());
			$(".tianadd-one-div3 textarea")
			$(".tianadd").show(); */
			
		});
		//添加地址
		$(".settle-addone-p2").click(function(){
			$(".bianji").load("jia_dizhi_servlet",function(data){});
		});
		// 删除地址
		$(".sap-xf-span3").click(function(){
			var shu=$(".shul").html();
			var conid=$(".conl").html();
			var addid=$(this).parent().parent().val();
			console.log($('settle-add-two ul li').length);
			//询问框
			layer.confirm('你确定要删除本条地址？？？', {
				title: '删除地址',
			  btn: ['确定','取消'] //按钮
			}, function(){
				//console.log($(this));
				$(this).parent().parent().remove();
				
				$.ajax({
					url:"set_shan_dizhi_servlet?addid="+addid,//访问路径
					type:"post",//请求类型
					async:true,//是否同步请求
					error:function(){
						//访问错误会执行这个方法
						//404，500，405
					},
					success:function(data){
						 if(data==0){
							 layer.msg('删除成功', {time: 500, icon:6},function(){
								 location="settlement?conid="+conid+"&shu="+shu;
							 });
						} 
						
					}
				});
			}, function(){
			  /* layer.msg('也可以这样', {
			    time: 20000, //20s后自动关闭
			    btn: ['明白了', '知道了']
			  }); */
			});
			
		});
	});

</script>
	
	
	<script type="text/javascript">
			$(function(){
				var hui=$(".settle-oder-list>ul").height();
				$(".settle-oder-tatal").css("height",hui+"px");
				$(".settle-add-two>ul>li:gt(0)").hide();
				//点击展开
				$(".settle-add-three>p").click(function(){
					//console.log("===")
					$(".settle-add-two>ul>li:gt(0)").toggle();
					//$("#settle-addtwo-li1").show();
					if($('.settle-add-two ul li').length==1){
						layer.msg('只有一条地址', {time: 1000, icon:6});
					}
				});
				
				
				/* 加载用户地址 */
				//$(".settle-add-two>ul").load("settlement_add_servlet",function(data){});
				
				
				// 生成形成订单
				$(".semo-one-div3").click(function(){
					//立即购买
					var shu=$(".shul").html();
					var conid=$(".conl").html();
					
					var dz=$(".semo-one-div2 span:eq(1)").html();
					if(dz=="undefined" || dz=="" || dz==null){
						 layer.msg('请添加地址', {time: 1500, icon:6});
						 return;
					}
					//订单id
					var ono=randomNum(1000,99999999999);
					//订单时间
					var otime=new Date().Format("yyyy-MM-dd hh:mm:ss"); 
					//订单总金额
					var ozongjia=$(".semoone-p2 span").html();
					//收货人
					var oname=$(".semo-one-div2 span:eq(1)").html();
					
					//收获地址
					var oaddress=$(".semo-one-div2 span:eq(0)").html();
					//联系方式
					var ophone=$(".semo-one-div2 span:eq(2)").html();
					
					console.log(ono,otime,ozongjia,oname,oaddress,ophone);
					$.ajax({
						url:"settlement?ono="+ono+"&ozongjia="+ozongjia
								+"&otime="+otime
								+"&oname="+oname+"&oaddress="+oaddress+"&ophone="+ophone+"&conid="+conid+"&shu="+shu,//访问路径
						type:"post",//请求类型
						async:true,//是否同步请求
						error:function(){
							//访问错误会执行这个方法
							//404，500，405
						},
						success:function(data){
							 if(data==1){
								//console.log(ono);
								// var json = eval(data);
								//console.log(json.ono+"---");
								location.href="checkstandservlet?ono="+ono+"&oaddress="+oaddress+"&oname="+oname+"&ophone="+ophone;
							}  
						}
					}); 
				});
			});	
		

				//生成从date+minNum到maxNum的随机数
				function randomNum(minNum,maxNum){ 
							var today = new Date();    
							var day   = today.getDate(); //获取当前日(1-31)      
							var month = today.getMonth() + 1; //显示月份比实际月份小1,所以要加1  
							var year  = today.getYear();  //获取完整的年份(4位,1970-????)  getFullYear()
							var years=today.getFullYear();
							years= years<99?"20"+years:years;
							month    = month<10?"0"+month:month;  //数字<10，实际显示为，如5，要改成05  
							day   = day<10?"0"+day:day;  
							var hh=today.getHours();
							hh   = hh<10?"0"+hh:hh;  
							var ii=today.getMinutes();
							ii   = ii<10?"0"+ii:ii;  
							var ss= today.getSeconds();
							ss   = ss<10?"0"+ss:ss;  
							var dada = years+month+day+hh+ii+ss;//时间不能直接相加，要这样相加！！！14位
							  
							    switch(arguments.length){ 
							        case 1: 
							            return dada+parseInt(Math.random()*minNum+1,10); 
							        break; 
							        case 2: 
							            return dada+parseInt(Math.random()*(maxNum-minNum+1)+minNum,10); 
							        break; 
							            default: 
							                return 0; 
							            break; 
							    } 
							} 

							//对Date的扩展，将 Date 转化为指定格式的String
							//月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符， 
							//年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字) 
							//例子： 
							//(new Date()).Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423 
							//(new Date()).Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18 
							Date.prototype.Format = function (fmt) { //author: meizz 
							 var o = {
							     "M+": this.getMonth() + 1, //月份 
							     "d+": this.getDate(), //日 
							     "h+": this.getHours(), //小时 
							     "m+": this.getMinutes(), //分 
							     "s+": this.getSeconds(), //秒 
							     "q+": Math.floor((this.getMonth() + 3)/3), 
							     "S": this.getMilliseconds() //毫秒 
							 };
							 if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
							 for (var k in o)
							 if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
							 return fmt;
							}
	</script>
	
</html>
