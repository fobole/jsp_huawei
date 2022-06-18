<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>个人中心personal</title>
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/personal.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/likes.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
	</head>
	<body>
		<!-- 头部开始 -->
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
		<!-- 中部内容 -->
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
									<a href="personalservlet"><li>我的订单</li></a>
									<!-- <a href="personal_tui.html"><li>我的退换货</li></a> -->
									<!-- <a href="personal_tuiqianservlet"><li>我的退款</li></a> -->
									<a href="Personal_pinglunservlet"><li>商品评价/追加</li></a>
								</ul>
							</li>
							<li class="perleft-li2">
								<h3>我的喜欢</h3>
								<ul>
									<a href="personal_likesservlet"><li id="bianhong">我的收藏</li></a>
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
					<div class="likes">
						<div class="likes-one">
							喜欢的商品
						</div>
						<c:if test="${likelist==null or likelist.size()==0 }">
							<div>你没有收藏任何商品</div>
						</c:if>
						<div class="likes-two">
							<ul>
								<c:forEach items="${likelist }" var="l">
									<li>
									<img src="${l.gtu }" >
									
									<p class="likes-two-p1">
										${l.gname}
									</p>
									<p class="likes-two-p2">
									 
									<%-- <a href="lcy_shanchu_servlet?lid=${l.lid }"> --%>
										<span class="likes-two-span1"  onclick="black(${l.lid })">删  除</span>
									<!-- </a>href="hwdetailsservlet?gid=" -->
										<span class="likes-two-span2" onclick="chakan(${l.gid })">查看商品</span>
									</p>
								</li>
								</c:forEach>
								
							
							</ul>
						</div>
					</div>
					
					
					
				</div>
			</div>
		</div>
		
		<!-- 底部开始 -->
		<jsp:include page="hwtail.jsp"></jsp:include>
		<!-- 底部结束 -->
	</body>
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/personal.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/layer/layer.js" type="text/javascript" charset="utf-8"></script>
	
	<script src="stylejs/q/js/likes.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function (){
			 
		})
		
		
		function chakan(gid) {
			location.href="hwdetailsservlet?gid="+gid;
		}
		
		function black(lid){
				 layer.confirm('确定删除这个商品吗？？？', {
					  btn: ['确定','取消'], //按钮
					  title: ['移除商品', 'font-size:16px;']
					 }, function(){
						$.ajax({
							url:"lcy_shanchu?",//访问路径
							data:{
								lid:lid,
							},
							type:"post",//请求类型
							async:true,//是否同步请求
							error:function(){
								//访问错误会执行这个方法
								//404，500，405
							},
							success:function(data){
								
								if(data==0){
									 layer.msg('删除成功', {time: 1000, icon:6},function(){
										 location.href="personal_likesservlet";
									 });
									
								}
							}
						});
					   
					 });
	          }
	</script>