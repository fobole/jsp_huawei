<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="m" uri="http://cn.gso.com/jsp/jstl/mytag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>搜索列表</title>
</head>
<body>
	<c:forEach items="${page.rows}" var="g">
					<a href="hwdetailsservlet?gid=${g.gid }"><li class="splb1">
							<div class="sp_img">
								<img src="${g.gtu }" width="181px" height="179px" >
							</div>
							<div class="spxx">
								<div class="sp-name">
								<c:if test="${g.gnew==0 }">
									<span class="namexp">&nbsp;新品上市&nbsp;</span>
								</c:if>
									<span class="name">${g.gname }</span>
								</div>
								<div class="gn">
									<span>折叠万象</span>
								</div>
								<div class="qian">
									<span>￥${g.gjiage }</span>
								</div>
								<div class="jf">
									<span>&nbsp;赠送积分&nbsp;</span>
								</div>
								<div class="pl">
									<span>641评价</span>
									<span>98%好评</span>
								</div>
							</div>
						</li>
						</a>
						
					</c:forEach>
</body>
</html>