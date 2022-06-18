<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>头部下拉菜单</title>
</head>
<body>
	<c:forEach var="i" begin="0" end="${toubtlist.size()-1 }" step="1">
      							<c:if test="${i<6 }" var="j">
      								<li value="${toubtlist.get(i).getBtid() }">
      									<span><c:out value="${toubtlist.get(i).getBtname()}" /></span>
      									<!-- 下拉菜单 -->
      									<div class="hwhead-xiaolai" id="hwhead-xiaolai-id1">
											<ul>
												
											</ul>
										</div>
      								</li>
      							</c:if>
      							
    </c:forEach>
	
</body>

<script src="stylejs/q/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hwhead.js" type="text/javascript" charset="utf-8"></script>
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