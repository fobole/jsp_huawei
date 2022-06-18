<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>换图jsp</title>
<style type="text/css">
	/* #magnifier {
				     position: relative;
				     width: 450px;
				     
				 }
				 
				 .small-box {
				     position: relative;
				     width: 450px;
				     height: 450px;
				     margin-bottom: 30px;
				     
				 }
				 
				 .small-box table td {
				     width: 450px;
				     height: 450px;
				 }
				 
				 .small-box img {
				     width: auto;
				     height: auto;
				     max-height: 450px;
				     max-width: 450px;
				 }
				 
				 .small-box .hover {
				     display: none;
				     position: absolute;
				     left: 0;
				     top: 0;
				     width: 200px;
				     height: 200px;
				     border: 1px solid #aaa;
				     background: rgba(255, 255, 255, .6);
				     opacity: .5;
				     filter: alpha(opacity: 50);
				     cursor: move;
				 }
				 
				 .thumbnail-box {
				     position: relative;
				     width: 100%;
				 }
				 
				 .thumbnail-box .btn {
				     position: absolute;
				     top: 50%;
				     width: 22px;
				     height: 32px;
				     margin-top: -16px;
					 
				 }
				 
				 .thumbnail-box .btn-prev {
				     left: 0;
				    
				 }
				 
				 .thumbnail-box .btn-prev.btn_prev_disabled {
				     
				     cursor: not-allowed;
				 }
				 
				 .thumbnail-box .btn-next {
				     right: 0;
				     
				 }
				 
				 .thumbnail-box .btn-next.btn_next_disabled {
				    
				     cursor: not-allowed;
				 }
				 
				 .thumbnail-box .list {
				     overflow: hidden;
				     width: 390px;
				     margin: 0 auto;
				 }
				 
				 .thumbnail-box .wrapper {
				     width: 100000px;
				 }
				 
				 .thumbnail-box .list .item {
				     float: left;
				     margin: 0 10px;
				 }
				 
				 .thumbnail-box .list .item-cur {}
				 
				 .thumbnail-box .list .item img {
				     border: 1px solid white;
				     width: 52px;
				     height: 52px;
					 padding: 3px;
				 }
				 
				 .thumbnail-box .list .item-cur img {
				     border: 1px solid #CF0A2C;
				 }
				 
				 .big-box {
				     display: none;
				     overflow: hidden;
				     position: absolute;
				     left: 480px;
				     top: 0;
				     width: 540px;
				     height: 540px;
				     border: 1px solid #e4e4e4;
					 background-color: white;
					 z-index: 99;
				 }
				 
				 .big-box img {
				     display: block;
				 } */
</style>
</head>
<body>
	<div id="magnifier">
	
	    <div class="small-box">
	        <table cellspacing="0" cellpadding="0">
	            <tr>
	                <td>
	                    <div class="small-box">
	                        <img src="${pname }" alt="#">
	                        <span class="hover"></span>
	                        <span class="hover"></span>
	                    </div>
	                </td>
	            </tr>
	        </table>
	
	    </div>
	    <div class="thumbnail-box">
	        <a href="javascript:;" class="btn btn-prev btn_prev_disabled"><img src="stylejs/q/img/按钮_箭头向左_o.png" ></a>
	        <a href="javascript:;" class="btn btn-next"><img src="stylejs/q/img/按钮-箭头向右_o.png" ></a>
	        <div class="list">
	            <ul class="wrapper">
	            		
	            	<c:forEach items="${imglist }" var="img">
	            		<c:if test="${imglist.indexOf(img)==0}">
	            			<li class="item item-cur" data-src="${img.pname }"><img src="${img.pname }" alt="#"></li>
	            		</c:if>
	            		<c:if test="${imglist.indexOf(img)!=0}">
	            			<li class="item" data-src="${img.pname }"><img src="${img.pname }" alt="#"></li>
	            		</c:if>
	          		</c:forEach>
	
	            </ul>
	        </div>
	    </div>
	    <div class="big-box">
	        <img src="${pname }" alt="#">
	    </div>
	</div>
</body>
<script src="js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<!-- 放大镜 -->
<script src="stylejs/q/js/magnifier.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
		$(function(){
			// 放大镜
			$("#magnifier").magnifier();
		});
</script>
</html>