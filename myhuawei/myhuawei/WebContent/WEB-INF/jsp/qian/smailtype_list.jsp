<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>小类别-竖列表菜单</title>
<link rel="stylesheet" type="text/css" href="stylejs/q/css/lunbotu.css"/>
</head>
<body>
	<c:forEach items="${smlist }" var="sm">
		
			<a href="sousuo_servlet?sou=${sm.smname }"><li>
			<img src="${sm.smtu }" >
				<p>${sm.smname }</p>
			</li>
			</a>
			<%-- <c:if test="">
			
			</c:if> --%>															
	</c:forEach>
</body>
<script src="stylejs/q/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
		/* $(function(){
			$(".caidan-li1").hover(function(){
				// 加载二级菜单 
				$(this).find("ul").show();
			},function(){
				$(this).find("ul").hide();
			});
		}  */

</script>
	


</html>