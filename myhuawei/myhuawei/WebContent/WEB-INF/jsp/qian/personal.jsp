<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="m" uri="http://cn.gso.com/jsp/jstl/mytag" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>订单中心personal</title>
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/personal.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/h/public/index.css"/>
	</head>
	<style type="text/css">
		#p1{
			height:50px;	
		}
		.pages{
		width: 1200px;
		text-align: center;
		color: #000000;	
	}
	.pages a{
		text-decoration: none;
		margin-left:5px;
		margin-top:15px;
		border:1px solid #d3d3d3;
		color: #000000;
		background-color: white;
		display:inline-block;
		width:25px;
		height:25px
		line-height:25px;
		text-align: center;
	}
	.pages a.current{
		border:none;
		color:red;
	}
	.dan{
	height:440px;
	overflow-y: scroll;
	-ms-overflow-style: none; 
	overflow: -moz-scrollbars-none;
	}
	.dan::-webkit-scrollbar{
		width: 0 !important; 
	}
	.perright-dingdan>div{
	position: absolute;
	width: 960px;
}
.perright-three-li2{
		    width: 98px;
}

/* 回复弹出层 */
						.huifu-di{
							overflow: hidden;
							margin-top: 20px;
						}
						.huifu-di label{
							display: inline-block;
							width: 80px;
							float: left;
							margin-left: 50px;
						}
						.huifu-di textarea{
							display: block;
							float: left;
							width: 300px;
							border: 1px solid #DCDCDC;
							padding: 5px;
							outline: none;
							margin-bottom: 5px;
						}
						.ggao-huifu{
							display: block;
							margin: 30px auto 0px;
							
						}
						.gname{
						width: 313px;
						height: 30px;
						outline: none;
						border: 1px solid #DCDCDC;
						}
						.prompa{
							border: none;
							display: inline-block;
							width: 120px;
							height: 35px;
							background: #CA141D;
							color: white;
							margin-left: 180px;
							margin-top: 30px;
							float: left;
							text-align: center;
							line-height: 30px;
							font-size: 16px;
						}
						#cupload{
								position: relative;
								/* border: 1px solid red; */
								float: left;
								/* margin-bottom: 10px; */
							}
							#aimg{
							display: none;
						}
							.imgLog2{
								font-size: 6px;
							}
							.imgLog2 input{
								display: inline-block;
								height: 55px;
								
							}
							.demo-class .layui-layer-title{background:#CA141D; color:#fff; border: none;}
							.per-bottom-left{
								margin-bottom: 20px;
							}
	</style>
	<body>
		<!-- 头部kaishi -->
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
		<div class="personal-big">
			<div class="per-top">
				<ul>
					<li class="per-top111">首页</li>
					<li class="per-top111">我的商城</li>
					<li>我的订单</li>
				</ul>
			</div>
			<div class="per-bottom">
				<div class="per-bottom-left">
					<div class="perbot-left-one">
						<ul>
							<li class="perleft-li1">
								我的商城
							</li>
							<li class="perleft-li2">
								<h3>订单中心</h3>
								<ul>
									<a href="personalservlet"><li id="bianhong">我的订单</li></a>
									<!-- <a href="personal_tui.html"><li>我的退换货</li></a> -->
									<!-- <a href="personal_tuiqianservlet"><li>我的退款</li></a> -->
									<a href="Personal_pinglunservlet"><li>商品评价/追加</li></a>
								</ul>
							</li>
							<li class="perleft-li2">
								<h3>我的喜欢</h3>
								<ul>
									<a href="personal_likesservlet"><li>我的收藏</li></a>
								</ul>
							</li>
							
							<li class="perleft-li2">
								<h3>个人中心</h3>
								<ul>
									<a href="management_servlet"><li>个人信息</li></a>
									
								</ul>
							</li>
							<li class="perleft-li2">
								<h3>购买支持</h3>
								<ul>
									<a href="personal_addressservlet"><li>收货地址管理</li></a>
									<!-- <li>到货通知</li> -->
								</ul>
							</li>
							<li class="perleft-li3">
								隐式设置
							</li>
							<li class="perleft-li3">
								帮助中心
							</li>
						</ul>
					</div>
				</div>
				<div class="per-bottom-right">
					<div class="perright-one">
						我的订单
					</div>
					<div class="perright-two">
						<ul>
							<li id="perright-two-li1">全部有效订单</li>
							<li>已退货</li>
							<li>已退款</li>
							<li>待付款</li>
							<li>待发货</li>
							<li>待收货</li>
							<li>待评价</li>
							<li>已取消</li>
						</ul>
					</div>
					
					<script type="text/javascript">
						$(function(){
							$(".perright-two ul li").click(function() {
								var st=$(this).text();
								//根据订单同状态，查询不同的数据
								$(".dan").load("xhd_dindanservlet?st="+st,function(date){});
								$(this).addClass("perright-two-li1").siblings().removeClass("perright-two-li1");
							});
						});
					</script>
					<div class="perright-three">
						<ul>
							<li class="perright-three-li1">商品</li>
							<li class="perright-three-li2">单价/元</li>
							<li class="perright-three-li3">数量</li>
							<li class="perright-three-li4">状态</li>
							<li class="perright-three-li5">实付款/元</li>
							<li class="perright-three-li6" id="perleft-none">订单状态及操作</li>
						</ul>
					</div>
					<div class="perright-dingdan">
					
					<div class="dan"><jsp:include page="orders.jsp"></jsp:include></div>
						
					</div>
				</div>
				
			</div>
		</div>
		<!-- 尾部 -->
		<jsp:include page="hwtail.jsp"></jsp:include>
		<!-- 尾部结束 -->
		
	</body>
	
	
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/personal.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hwhead.js" type="text/javascript" charset="utf-8"></script>
</html>
