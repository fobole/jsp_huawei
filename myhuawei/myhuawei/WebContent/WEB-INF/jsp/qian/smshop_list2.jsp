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
				<img src="${sm.gtu }" >
				<div class="hofo-div1">
					<p class="hofo-p1">
						<c:if test="${sm.gnew==0 }">
							<span id="home-xinping">&nbsp;新品上市&nbsp;</span>&nbsp;
						</c:if>
							${sm.gname }
					</p>
					<p class="hofo-p2">赠送积分</p>
					<p class="hofo-p3">
						<fmt:formatNumber value="${sm.gjiage }" type="currency" pattern="￥.00"/>
					</p>
				</div>
			</li>
		</a>
	</c:forEach>
</body>
<script src="stylejs/q/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
		/* 默认高度1 */
		var mrgao0=$("#home-four-xian").height();
		$(".home-four-shop1").css("height",mrgao0+"px");
</script>
</html>