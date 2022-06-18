<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>点击小类别下的商品</title>
</head>
<body>
	<c:forEach items="${smlist }" var="sm">
		<a  href="hwdetailsservlet?gid=${sm.gid }">
		<li>
			<%-- ${sm }  --%>
			<img src="${sm.gtu }" >
							<div class="hfs-div1">
								<p class="hfs-div1-p1">
									<c:if test="${sm.gnew==0 }">
										<span id="home-xinping">&nbsp;新品上市&nbsp;</span>&nbsp;
									</c:if>
									${sm.gname }
								</p>
								<p class="hfs-div1-p2">
									限时省200		
								</p>
								<p class="hfs-div1-p3">
									<fmt:formatNumber value="${sm.gjiage }" type="currency" pattern="￥.00"/>
								</p>
								<div class="hfs-div1-p4">
									<span id="shou1c-4a">&nbsp;赠送积分&nbsp;</span>
								</div>
							</div>
			</li></a>
	</c:forEach>
</body>
<script src="stylejs/q/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	var mrgao2=$("#home-five1-xian").height();
	$(".home-five1-shop1").css("height",mrgao2+"px");
</script>
</html>