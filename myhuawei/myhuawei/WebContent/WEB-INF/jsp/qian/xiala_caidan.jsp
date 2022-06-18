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
<link rel="stylesheet" type="text/css" href="stylejs/q/css/animate.min.css"/>
</head>
<body>
	<%-- <%! int sj=0; %> --%>
		<c:forEach  items="${toulist1 }" var="tou"  >
				<a href="hwdetailsservlet?gid=${tou.gid }">
			<li>
				<img src="${tou.gtu }" >
					<div class="">	
						${tou.gname }
					</div>
					<p>
						
						<fmt:formatNumber value="${tou.gjiage }" type="currency" pattern="￥.00"/>
					</p>
			</li>
			</a>
			
	</c:forEach>

	
	<%-- <% sj=0; %> --%>
	
</body>
<script src="stylejs/q/js/wow.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	var wow = new WOW(
		  {
		    boxClass:     'wow',      // animated element css class (default is wow)
		    animateClass: 'animated', // animation css class (default is animated)
		    offset:       0,          // distance to the element when triggering the animation (default is 0)
		    mobile:       true,       // trigger animations on mobile devices (default is true)
		    live:         true,       // act on asynchronously loaded content (default is true)
		    callback:     function(box) {
		      // the callback is fired every time an animation is started
		      // the argument that is passed in is the DOM node being animated
		    },
		    scrollContainer: null,    // optional scroll container selector, otherwise use window,
		    resetAnimation: true,     // reset animation on end (default is true)
		  }
		);
		wow.init();
</script>
</html>
