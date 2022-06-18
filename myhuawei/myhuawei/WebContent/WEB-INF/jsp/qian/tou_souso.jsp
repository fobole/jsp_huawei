<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="m" uri="http://cn.gso.com/jsp/jstl/mytag" %>
<!DOCTYPE html>
<html>
<base href="${basePath}">
	<head>
		<meta charset="utf-8">
		<title>手机</title>
		<!-- rel 默认样式图标 -->
		<link rel="icon" type="image/x-ico" href="stylejs/q/img/华为1.png"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/shouji.css"/>
		<style type="text/css">
			
			.sp_img>a>img{
			width: 181px;
			height: 179px;
			margin-top: 20px;
			
		}
		#p1{
			height:50px;	
		}
		.pages{
		width: 1200px;
		height: 50px;
		text-align: center;
		color: #000000;	
		}
	.pages a{
		text-decoration: none;
		margin-left:5px;
		margin-top:15px;
		background-color: white;
		display:inline-block;
		width:25px;
		height:25px
		border:1px solid #d3d3d3;
		color: #000000;	
		line-height:25px;
		text-align: center;
	}
	.pages a.current{
		border:none;
		color:#D00D2F;
		margin-top: 10px;
		margin-bottom: 10px;
	}
	.aaa::after{
	    content: '\\';
	    color: #BABABC;
	    margin: 0px 8px;
	    font-size: 12px;
	}
	 #bbb{
	    font-size: 12px;
		line-height: 61px;
		color: #545556;
	 }
	 .jf span{
	 	border: 1px solid #D00D2F;
	 }
	 #bh{
	 	color: #D00D2F; 
	 }
	 .sp_img img{
	 		margin-top: 30px;
	 }
	 .spxx .name{
	 	color: black;
	 }
	 .splb1{
	 	float: left;
	 }
	 .sp-name{
	 	overflow:hidden;

text-overflow: ellipsis;

white-space:nowrap;
	 }
		</style>
	</head>

	<body>
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
		<!-- 中间开始 -->
		<div class="big-zj">
			<div class="zj-top1">
				<div class="top-left1">
					<a href="lunboservlet" class="aaa">首页</a>
				</div>
				<div class="top-right1">
						<span id="bbb">${sou }</span>
				</div>
			</div>
			<!-- 筛选开始 -->
			<div class="zj-fl">
			<div class="zj-fl1">
					<!-- <div class="zj-fl2">
						<span>大类:</span>
					</div> -->
					<%-- <div class="zj-fl3"> 
					
							<span>${btname }</span>
							<c:forEach items="${biglists } " var="b">
							
							<a>${b.btid}</a>
							</c:forEach> 
							<c:forTokens items="${biglists }" delims="," var="a">
								<a href="${a }">${a }</a>
							</c:forTokens>
					</div> --%>
				</div>
				<%-- <div class="zj-fl1">
					<div class="zj-fl2">
						<span>小类:</span>
					</div>
					<div class="zj-fl3">
						<span>${smname }</span>
					<c:forEach items="${smlist} " var="s">
						<span>${s }</span>
					
							</c:forEach>
						<!-- <span>仅看有货</span>
						<span class="jg">分期免息</span>
						<span class="jg">优惠商品</span> -->
					</div>
				</div> --%>
				<div class="zj-fl1">
					<div class="zj-fl2">
						<span>排行:</span>
					</div>
					<div class="zj-fl3">
						<span id="${sx==0?'bh':'' }">综合</span>
						<span class="jg" id="${sx==2?'bh':'' }">名称</span>
						<span class="jg" id="${sx==1?'bh':'' }">价格</span>
					</div>
				</div>
			</div>
			<!-- 筛选结束 -->
			<!-- 商品列表开始 -->
			<div class="zj-xq">
				<div class="xq1">
					<ul class="xqlb">
						<jsp:include page="souso_list.jsp"></jsp:include>
					</ul>
					<div style="clear:both"></div>
					<div class="pages" id="p1">
						<m:pages url="sousuo_servlet" page="${page}"/>
					</div>
				</div>
			</div>
			<!-- 商品列表结束 -->
			
		</div>
		<jsp:include page="hwtail.jsp"></jsp:include>
	</body>
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hwhead.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hwtail.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function(){
			$(".zj-fl3 span").click(function(){
				$(this).attr("id","bh").siblings("span").removeAttr("id");
				var sou=$("#bbb").html();
				var saixuan=$(this).html();
				// $("#home-five1-xian").load("sousuo_servlet?"+smid,function(data){});
				window.location.href="sousuo_servlet?sou="+sou+"&saixuan="+saixuan;
			});
		});
	
	</script>
		
			
	
	
	
	
	
	
	
	
</html>
