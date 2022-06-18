<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>头部大类</title>
</head>
<body>
	<c:forEach items="${toubtlist }" var="i">
					<li value="${i.btid }">
						<a class="tou_bianhei_a1" href="sousuo_servlet?sou=${i.btname}"><span><c:out value="${i.btname}" /></span></a>
						<!-- 下拉菜单 -->
						<div class="hwhead-xiaolai" id="hwhead-xiaolai-id1">
			<ul>
			
			</ul>
		</div>
					</li>
				
	</c:forEach>
</body>
<script src="stylejs/q/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
		$(function(){
			$(".hwhead-bo-div2>ul>li").hover(function(){
				//console.log($(this).index())
				$(this).find(".hwhead-xiaolai").show();
				// 链接数据库
				var btid=$(this).val();
				$("#hwhead-xiaolai-id1>ul").load("tou_caidan?btid="+btid,function(data){});
			},function(){
				$(this).find(".hwhead-xiaolai").hide();
			});
		});
</script>
</html>