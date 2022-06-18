<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>收银台checkstand</title>
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/checkstand.css"/>
		<style type="text/css">
				.chon-div2-s44{
					color: #DA3232;
				}
				.pays{
					display: none;
				}
				.pay{
					display: none;
				}
				.ch-zfym{
					margin-top: 150px;
				}
		</style>
	</head>
	<body>
		<div class="checkstand-big">
			<div class="checkstand-top">
				<a href="lunboservlet"><img src="stylejs/q/img/下载.png" ></a>
				<span>收银台</span>
			</div>
			<div class="checkstand-middle">
				<div class="chmiddle-one">
					<div class="chmiddle-one-div1">
						<img src="stylejs/q/img/勾-实.png" >
					</div>
					<div class="chmiddle-one-div2">
						
						<p>
							<span class="chon-div2-s1">订单提交成功，只差付款了~</span>  
							<span class="chon-div2-s6"> 订单号：</span>  <span class="chon-div2-s7">${order.ono }</span>   
							<span class="chon-div2-s3">¥<fmt:formatNumber value="${order.ozongjia }" pattern="#.00"/></span>
							<span class="chon-div2-s2">订单金额：</span>
							
						</p>
						<p>
							<span class="chon-div2-s4">
								请您在  <span class="chon-div2-s44"></span> 秒内完成支付，否则订单将自动取消。
							</span>
							<span class="chon-div2-s5">订单详情</span>
						</p>
						
						
					</div>
					
				</div>
				<!-- 隐藏块  style="display: none;"-->
				<div class="chmiddle-yck"  style="display: none;">
					<p>
						
						收货信息： ${order.oname }   ${order.ophone } <br>
						收货地址：${order.oaddress }<br>
						购买时间：<fmt:formatDate pattern="yyyy/MM/dd HH:mm:ss" value="${order.ocreatetime }"/>
					</p>
				</div>
				
				<!-- <h1>选择支付方式</h1> -->
				<!-- 支付方式 -->
				<div class="chmiddle-two">
					<ul>
						<li id="zffs-xuan">
							<img class="zffs-img2"  src="https://res.vmallres.com/ips/pc/20211115/images/serverIcon/2x/WXPAY.png?v=20211115" >
							<img  id="zffs-xuan-img1" src="stylejs/q/img/203右下角勾选.png" >
							<!-- 弹出支付页面 -->
							<div class="ch-zfym-big">
								<div class="ch-zfym">
									<h5>微信支付
										<span class="h5-cha-yc"><img src="stylejs/q/img///叉叉2.png" ></span>
									</h5>
									<div class="ch-zfym-one">
										<div class="ch-zfym-one1">
											<img src="stylejs/q/img/91300474913617400319.png" >
											<p>
												<img src="stylejs/q/img/扫一扫.png" >
												<p>
													<span>请使用</span>
													<span class="bianlu-weixin">微信</span>
													<span>扫一扫</span>
													<span>扫描二维码支付</span>
												</p>
											</p>
										</div>
										<div class="ch-zfym-one2">
											<img src="stylejs/q/img/Mobile%20phone.png" >
										</div>
									</div>
									<div class="ch-zfym-two">
										<ul>
											<li class="ch-zfym-two-li1">更换支付方式</li>
											<li class="ch-zfym-two-li2">
												已完成支付
												<span class="pays">微信支付</span>
												<span class="pay">${order.ono }</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li>
							<img class="zffs-img1" src="https://res.vmallres.com/ips/pc/20211115/images/serverIcon/2x/ALIPAY.png?v=20211115" >
							<!-- 弹出支付页面 -->
							<div class="ch-zfym-big">
								<div class="ch-zfym">
									<h5>支付宝支付
									<span class="h5-cha-yc"><img src="stylejs/q/img//叉叉2.png" ></span>
									</h5>
									<div class="ch-zfym-one">
										<div class="ch-zfym-one1">
											<img src="stylejs/q/img/91300474913617400319.png" >
											<p>
												<img src="stylejs/q/img/扫一扫.png" >
												<p>
													<span>请使用</span>
													<span class="bianlu-weixin">支付宝</span>
													<span>扫一扫</span>
													<span>扫描二维码支付</span>
												</p>
											</p>
										</div>
										<div class="ch-zfym-one2">
											<img src="stylejs/q/img/3d8df1bd4c6921909b775196b1aa1aa4.jpeg" style="height: 200px">
										</div>
									</div>
									<div class="ch-zfym-two">
										<ul>
											<li class="ch-zfym-two-li1">更换支付方式</li>
											<li class="ch-zfym-two-li2">
												已完成支付
												<span class="pays">支付宝支付</span>
												<span class="pay">${order.ono }</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<img class="zffs-img3"  src="https://res.vmallres.com/ips/pc/20211115/images/serverIcon/2x/HUAWEIPAY.png?v=20211115" >
							<!-- 弹出支付页面 -->
							<div class="ch-zfym-big">
								<div class="ch-zfym">
									<h5>银联支付
										<span class="h5-cha-yc"><img src="stylejs/q/img/叉叉2.png" ></span>
									</h5>
									<div class="ch-zfym-one">
										<div class="ch-zfym-one1">
											<img src="stylejs/q/img/91300474913617400319.png" >
											<p>
												<img src="stylejs/q/img/扫一扫.png" >
												<p>
													<span>请使用</span>
													<span class="bianlu-weixin">银联</span>
													<span>扫一扫</span>
													<span>扫描二维码支付</span>
												</p>
											</p>
										</div>
										<div class="ch-zfym-one2">
											<img src="stylejs/q/img/Z@T(05V6H9S7%5B%25P4Q0ZEIWO.png" style="height: 180px">
										</div>
									</div>
									<div class="ch-zfym-two">
										<ul>
											<li class="ch-zfym-two-li1">更换支付方式</li>
											<li class="ch-zfym-two-li2">
												已完成支付
												<span class="pays">银联支付</span>
												<span class="pay">${order.ono }</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						
					</ul>
				</div>
				<div class="chmiddle-three">
					<p>确认支付</p>
				</div>
			</div>
			<div class="checkstand-bottom">
				<div class="">
					<img src="stylejs/q/img/50938736813613783905.png" >
					<span>
						隐私声明 服务协议Copyright © 2012-2021 华为终端有限公司 粤ICP备19015064号-4 版权所有 保留一切权利
					</span>
					
				</div>
				
			</div>
		</div>
		
		
	</body>
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/checkstand.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/layer/layer.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
	var t = 30;//设定跳转的时间
	var timer =setInterval("refer()", 1000); //启动1秒定时
	function refer() {
		if (t == 0) {
			clearInterval(timer);
			var ono=$(".chon-div2-s7").html();
			console.log(ono);
			$.ajax({
				url:"quxiao_dingdan_servlet",//访问路径
				data:{
					ono:ono,
				},
				type:"post",//请求类型
				async:true,//是否同步请求
				error:function(){
					//访问错误会执行这个方法
					//404，500，405
				},
				success:function(data){
					if(data==1){
						layer.msg('订单已取消', {time: 1000, icon:1},function(){
							location = "personalservlet"; //#设定跳转的链接地址
						});
					}
				}
			});
			
		}
		$('.chon-div2-s44').html(t); // 显示倒计时
		t--;
	}
	</script>
	<script type="text/javascript">
		$(function () {
			$(".ch-zfym-two-li2").click(function(){
				var ono=$(".chon-div2-s7").html();
				var pays=$(this).parent().find('.pays').html();
				//var pay=$(this).parent().find('.pay').html();
				console.log(ono,pays);
				$.ajax({
					url:"checkstandservlet",//访问路径
					data:{
						ono:ono,
						pays:pays,
					},
					type:"post",//请求类型
					async:true,//是否同步请求
					error:function(){
						//访问错误会执行这个方法
						//404，500，405
					},
					success:function(data){
						if(data==1){
							layer.msg('已付款', {time: 1000, icon:1},function(){
								location.href="personalservlet";
							});
							
						}
					}
				});

			});
		});
	</script>
</html>
