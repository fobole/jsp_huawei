<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购物车数量</title>
</head>
<body>
	<li id="hw-gwc-li1"><img  class="hw-sy-img2"  src="${tg>0?'stylejs/q/img/购物车满.png':'stylejs/q/img/购物车空.png' }" > 购物车(${tg==null?0:tg })</li>
</body>
</html>