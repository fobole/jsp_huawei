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
<title>大类下拉</title>
</head>
<body>
	<option value="0">请选择</option>
<c:forEach items="${btlist }" var="l">
	<option value="${l.getBtid() }">${l.getBtname() }</option>
</c:forEach>
	
	
</body>
</html>