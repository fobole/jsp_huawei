<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:forEach items="${conlist }" var="c">
		<c:if test="${conlist.indexOf(c)==0 }" var="con">
			<a href="#!">
				<li id="xuanhong1" value="${c.getConid() }">
				<span class="spanbb1">${c.getConname() }</span>
				<span  class="spanbb2" style="display:none;"><fmt:formatNumber value="${c.getConjia() }" type="currency" pattern="￥.00"/></span>
				</li>
			</a>
		</c:if>
		<c:if test="${not con }">
			<a href="#!">
				<li value="${c.getConid() }">
				<span class="spanbb1" >${c.getConname() }</span>
				<span class="spanbb2" style="display:none;"><fmt:formatNumber value="${c.getConjia() }" type="currency" pattern="￥.00"/></span>
				</li>
			</a>
		</c:if>
		
	</c:forEach>
	
</body>
<script src="stylejs/q/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		// 加载版本
		var conname=$("#xuanhong1").find(".spanbb1").html();
		//console.log(cname)
		$("#banben0").html(conname);
		$("#banben1").html(conname);
		$("#banben2").html(conname);
		$(".hwdmr-div3-ul2 li").click(function(){
			//console.log($(this))
			$(this).attr("id","xuanhong1").parent().siblings().find("li").removeAttr("id");
			var conname=$("#xuanhong1").find(".spanbb1").html();
			//console.log(cname)
			$("#banben0").html(conname);
			$("#banben1").html(conname);
			$("#banben2").html(conname);
			var conjia=$("#xuanhong1").find(".spanbb2").html();
			console.log(conjia)
			$("#conjia1").html(conjia);
		});
		
		/* 获取多少钱 */
		var conjia=$("#xuanhong1").find(".spanbb2").html();
		console.log(conjia)
		$("#conjia1").html(conjia);
		
		
		
	});
</script>
</html>