<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>                   

<!-- ========================================---------------------------s -->
<html>
	<head>
		<meta charset="utf-8">
		<title>华为详情页details</title>
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwdetails.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/xuanfu.css"/>
		<!-- <link rel="stylesheet" type="text/css" href="css/shipp.css"/> -->
		<style>
/*  加入购物车 */
		.jiagwc-bj{
	display: none;
	position: fixed;
	top: 0px;
	left: 0px;
	z-index: 9999;
	width: 100%;
	height: 100%;
	background: rgba(0,0,0,0.2);
}
.jiagwc{
	/* border: 1px solid red; */
	width: 458px;
	/* height: 158px; */
	margin: 300px auto;
	background: white;
}
.jiagwc-img1{
	display: block;
	position: relative;
	left: 209px;
	top: 10px;
	/* border: 1px solid red; */
}
.jiagwc-div1{
	width: 100%;
	overflow: hidden;
}
.jiagwc-div1 img{
	display: block;
	float: left;
	margin: 15px 5px 0px 40px;
	 width: 27px; 
	 height: 27px; 
}
.jiagwc-div1 p{
	/* border: 1px solid red; */
	/* display: block; */
	float: left;
	width: 348px;
	font-size: 18px;
	line-height: 25px;
	margin-top: 15px;
}
.jiagwc-div2{
	padding-top: 10px;
}
.jiagwc-div2-a1{
	display: inline-block;
	font-size: 18px;
	width: 170px;
	height: 46px;
	border: 1px solid #DDDDDD;
	line-height: 46px;
	text-align: center;
	color: #3A3A3A;
	margin-left: 50px;
	margin-right: 10px;
	margin-bottom: 20px;
}
.jiagwc-div2-a2{
	display: inline-block;
	font-size: 18px;
	width: 170px;
	height: 46px;
	border: 1px solid #CA141D;
	background: #CA141D;
	line-height: 46px;
	text-align: center;
	color: white;
	
}
				  /* 放大镜 */
				 .hwdetails-middle-left{
				 	height: 540px;
				 	width: 450px;
				 	/* border: 1px solid red; */
				 }
				 #magnifier {
				     position: relative;
				     width: 450px;
				     /* margin: 54px 0 0 70px; */
				 }
				 
				 .small-box {
				     position: relative;
				     width: 450px;
				     height: 450px;
				     margin-bottom: 30px;
				     /* border: 1px solid #eee; */
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
					 /* border: 1px solid red; */
				 }
				 
				 .thumbnail-box .btn-prev {
				     left: 0;
				     /* background: url(images/btn_prev.png) no-repeat; */
				 }
				 
				 .thumbnail-box .btn-prev.btn_prev_disabled {
				     /* background: url(images/btn_prev_disabled.png) no-repeat; */
				     cursor: not-allowed;
				 }
				 
				 .thumbnail-box .btn-next {
				     right: 0;
				     /* background: url(images/btn_next.png) no-repeat; */
				 }
				 
				 .thumbnail-box .btn-next.btn_next_disabled {
				     /* background: url(images/btn_next_disabled.png) no-repeat; */
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
				 }
				
				/* 粘性导航 */
				.topbox {
				    
				    /* background-color: #313131; */
				}
				
				.section-content {
				    border-bottom: 5px solid white;
				    min-height: 500px;
				    background: #eee;
				    width: 1200px;
				    margin: auto;
				    /* line-height: 500px; */
				    /* text-align: center; */
				}
				
				.nav-height {
				    position: relative;
				    height: 50px;
				}
				
				.nav-wrap {
				    width: 100%;
				    height: 50px;
				    background: #fff;
				}
				
				.nav-wrap.navFix {
				    position: fixed;
				    top: 0;
				    left: 0;
				    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
				    border-bottom: 1px solid #e3e3e3\9;
				    z-index: 99999;
				}
				
				.nav-wrap ul {
				    padding: 0;
				    margin: 0 auto;
				    width: 1200px;
				    display: block;
				    /* border-bottom: 2px solid #eee; */
				}
				
				.nav-wrap.navFix ul {
				    border-bottom: 0;
				}
				.nav-wrap{
					height: 52px;
				}
				.nav-wrap li {
					/* margin-top: 5px; */
				    display: inline-block;
				    text-align: left;
				    height: 50px;
				    line-height: 50px;
				    float: left;
					/* border: 1px solid red; */
					margin-left: 135px;
				}
				
				.nav-wrap li a {
				    display: block;
				    padding: 0 20px;
				    font-size: 20px;
				    color: #333;
				    text-decoration: none;
				}
				
				.nav-wrap li a:hover {
				    color: #CA151D;
				}
				
				.nav-wrap li a.active {
				    border-bottom: 2px solid #CA151D;
				    color: #CA151D;
				}
				
				.nav-mobile {
				    display: none;
				    font-weight: bold;
				    width: 100%;
				}
				
				.click-me {
				    width: 150px;
				    height: 30px;
				    background: #4680d1;
				    color: white;
				    text-align: center;
				    line-height: 30px;
				}
				
				.click-me a {
				    display: block;
				    color: white;
				}
				.hwdmr-div2-s1copy{
					margin-top: 3px;
				}
				
				
				/* 商品详情 */
				.hwdetails-bottom-one{
					
				}
				.hwdetails-bottom-one div img{
					display: block;
					width: 1200px;
				}
				/*  已选商品行高  */
				#yixuan{
					line-height: 25px;
				}                          
				/* 收藏 */
				.xihuan-a{
					margin-left: 20px;
				}
				#xihuan{
					margin-left: 0px;
				}
				
				/* #section1,#section2,#section3, */#section4{
					background: white;
				}
		</style>
	</head>
	<body>
	
		<!-- 头部开始 -->
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
		<!-- 中部开始 -->
		
		<div class="hwdetails-big">
			<div class="hwdetails-top">
				<a href="lunboservlet" class="per-top111">首页</a>
				<a href="#?btid=${goods.getBtid() }" class="per-top111">${goods.getBtname() }</a>
				<a href="#?smid=${goods.getSmid() }" class="per-top111">${goods.getSmname() }</a>
				<a href="#!">${goods.getGname() }  <span id="banben0"></span> (<span id="yanse0"></span>)</a>  
			</div>
			<div class="hwdetails-middle">
				<div class="hwdetails-middle-left">
					<!-- 放大镜 -->
					
					
				</div>
				<div class="hwdetails-middle-right">
					<h1 class="hwdmr-h1"><span id="gname1">${goods.getGname() }</span> <span id="banben1"></span> (<span id="yanse1"></span>)</h1>
					<div class="hwdmr-div1">
						<div class="hwdmr-div1-one">
							<span class="hwdmr-div1-s1">价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格</span>
							<span class="hwdmr-div1-s2" id="conjia1">
								
							</span>
						</div>
						<div class="hwdmr-div1-two">
							<span class="hwdmr-div1-s3">促&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</span>
							<span class="hwdmr-div1-s4">&nbsp;赠送积分&nbsp;</span><span class="hwdmr-div1-s5">购买即赠商城积分，积分可抵现~</span>
						</div>
					</div>
					<div class="hwdmr-div2">
						<div class="hwdmr-div2-one">
							<span class="hwdmr-div2-s1">服务说明</span> 
							<img class="hwdmr-div2-img1" src="stylejs/q/img/√.png" ><span class="hwdmr-div2-s2">已满48元包邮</span>
							<img class="hwdmr-div2-img1"   src="stylejs/q/img/√.png" ><span class="hwdmr-div2-s3">由华为终端提供商品、发货开票及售后服务</span> <a class="hwdmr-div2-s5" href="#!">查看详情</a>
						</div>
						<div class="hwdmr-div2-two">
							<span class="hwdmr-div2-s1">商品编码</span><span class="hwdmr-div2-s4">${goods.getGid() }</span>
						</div>
					
					</div>
					<div class="hwdmr-div3">
						<div class="hwdmr-div3-one">
							<span class="hwdmr-div2-s1 hwdeo-s1">选择颜色</span>
							<ul class="hwdmr-div3-ul1">
								<c:forEach items="${colorlist }" var="c">
									<c:if test="${colorlist.indexOf(c)==0 }" var="index">
										<a href="#!">
										<li id="xuanhong" value="${c.getCid() }">
											<div class="color_2">
												<img src="${c.getCimg() }" >
												<span class="color_zi">${c.getCname() }</span>
											</div>
										</li>
										</a>
									</c:if>
									<c:if test="${colorlist.indexOf(c)!=0 }">
										<a href="#!">
										<li  value="${c.getCid() }">
											<div class="color_2">
												<img src="${c.getCimg() }" >
												<span class="color_zi">${c.getCname() }</span>
											</div>
										</li>
										</a>
									</c:if>
								</c:forEach>
								<!-- 
								
								<a href="#!"><li>
									<div class="color_2">
										<img src="stylejs/q/img/color1.png" >
										<span class="color_zi">
											亮黑色
										</span>
									</div>
								</li></a>
								<a href="#!"><li>
									<div class="color_2">
										<img src="stylejs/q/img/color1.png" >
										<span class="color_zi">
											亮黑色
										</span>
									</div>
								</li></a>
								<a href="#!"><li>
									<div class="color_2">
										<img src="stylejs/q/img/color1.png" >
										<span class="color_zi">
											亮黑色
										</span>
									</div>
								</li></a> -->
							</ul>
						</div>
						<div class="hwdmr-div3-one">
							<span class="hwdmr-div2-s11">选择版本</span>
							<ul class="hwdmr-div3-ul2">
								
							
								<!-- <a href="#!"><li id="xuanhong1"><span>4G全网通 8GB+256GB</span></li></a>
								<a href="#!"><li><span>4G全网通 8GB+128GB</span></li></a> -->
							</ul>
						</div>
						<div class="hwdmr-div3-one">
							<span class="hwdmr-div2-s11">选择套餐</span>
							<ul class="hwdmr-div3-ul3">
								<a href="#!"><li id="xuanhong2"><span>官方标配</span></li></a>
								<!-- <a href="#!"><li></li></a> -->
							</ul>
						</div>
						<div class="hwdmr-div3-one">
							<span class="hwdmr-div2-s1" id="yixuan">已选择商品:</span>
							<span id="hwdmr-div2-s1-hong"><span id="yanse2"></span> / <span id="banben2"></span> / 官方标配</span>
						</div>
						<div class="hwdmr-div3-two">
							<div class="shipp_s">
								<ul class="btn-numbox">
								            <li>
								                <ul class="count">
								                    <li><span id="num-jian" class="num-jian">-</span></li>
								                    <li><input type="text" class="input-num" id="input-num" value="1" readonly ="readonly"/></li>
								                    <li><span id="num-jia" class="num-jia">+</span></li>
								                </ul>
								            </li>
								　　　  </ul>
							</div>
							<div class="shipp_an">
								<input type="button" value="加入购物车" class="shipp_gw" />
								<input type="button" value="立即下单" class="shipp_xd1"/>
								<a class="xihuan-a">
									<c:if test="${users==null }">
								
											<span style="display:none;">-1</span>
											<img id="xihuan" src="stylejs/q/img/213喜欢-线性.png" >

									</c:if>
									<c:if test="${users!=null }">
										<c:if test="${like==null }">
											<span style="display:none;">0</span>
											<img id="xihuan" src="stylejs/q/img/213喜欢-线性.png" >
										</c:if>
										<c:if test="${like!=null }">
											<span style="display:none;">${like.getLid() }</span>
											<img id="xihuan" src="stylejs/q/img/喜爱1.png" >
										</c:if>
									</c:if>
								</a>
							</div>
							
							
						</div>
					</div>
				</div>
			</div>
			<div class="hwdetails-bottom">
				
			</div>
		</div>
		<!-- 中部结束 -->
		<div class="nav-height" id="navHeight">
		    <nav class="nav-wrap" id="nav-wrap">
		        <div class="nav-mobile">Click</div>
		        <ul class="clearfix">
		            <li><a class="active" href="#section1">商品详情</a></li>
		            <li><a class="" href="#section2">规格参数</a></li>
		            <li><a class="" href="#section3">包装与售后</a></li>
		            <li><a class="" href="#section4">用户评价</a></li>
		        </ul>
		    </nav>
		</div>
		<div id="section1" class="section-content">
		    <div class="hwdetails-bottom-one">
		    	<c:forEach items="${xiangtulist }" var="x">
		    			<div class="">
  							<img src="${x.getPname() }" >
  						</div>
		    	</c:forEach>	
		    </div>
		</div>
		<div id="section2" class="section-content">
		    <div class="hwdetails-bottom-one">
		    	<c:forEach items="${gglist }" var="x">
		    			<div class="">
  							<img src="${x.getPname() }" >
  						</div>
		    	</c:forEach>	
		    </div>
		</div>
		<div id="section3" class="section-content">
		    <div class="hwdetails-bottom-one">
		    	<c:forEach items="${bzlist }" var="x">
		    			<div class="">
  							<img src="${x.getPname() }" >
  						</div>
		    	</c:forEach>	
		    </div>
		</div>
		<div id="section4" class="section-content">
		    <div class="xiaoxi1">
		    						
		    					</div>
		    					<!-- 评论开始 -->
		    					<c:forEach items="${hwde }" var="h">
		    					<div class="shipp_pl">
		    						<ul>
		    							<li>
		    								<div class="shipp_pl1">
		    									<p><img src="${h.getUimg() }" ></p>
		    									<p><span>${h.getUname()}</span></p>
		    								</div>
		    								<div class="shipp_pl2">
		    									<div class="shipp_pl_1">
		    										<div class="h">
		    											<div class="h1">
		    												<span class="h2"></span>
		    											</div>
		    											<div class="h3">
		    											</div>
		    											<div class="h4">
		    												<div class="sj">
		    													${h.getCmtime() }
		    												</div>
		    												<a class="zan1"><img src="stylejs/q/img/点赞.png" ><span>0</span></a>
		    											</div>
		    										</div>
		    										<div class="yhpl">
		    											${h.getCmnr() }
		    										</div>
		    										<div class="yhpl1">
		    											${h.getGname()} ${h.getConname()} ${h.getCname()}
		    										</div>
		    									</div>
		    								</div>
		    							</li>
		    						</ul>
		    					</div>
		    					</c:forEach>
		    					<!-- 评论结束 -->
		</div>
		
		<!-- 尾部开始 -->
		<jsp:include page="hwtail.jsp"></jsp:include>
		<!-- 尾部结束 -->
		<!-- <div class="xuanfu">
			<div class="xuanfu1">
				<ul>
					<li>
						<a href="#">
							<img src="stylejs/q/img/切换城市.png" width="40px" height="40px">
							<span>以旧换新</span>
						</a>
					</li>
					<li>
						<a href="#">
							<img src="stylejs/q/img/3.1%20二维码.png" width="40px" height="40px">
							<span>二维码</span>
						</a>
					</li>
				</ul>
			</div>
			<div class="xuanfu2">
				<a href="#">
					<img src="stylejs/q/img/购物车.png" >
					<span>购物车</span>
				</a>
				<a href="#">
					<img src="stylejs/q/img/客服.png" >
					<span>在线客服</span>
				</a>
				<a href="#">
					<img src="stylejs/q/img/服务_o.png" >
					<span>自助服务</span>
				</a>
				<a href="#">
					<img src="stylejs/q/img/回到顶部.png" >
					<span>回到顶部</span>
				</a>
			</div>
		</div> -->
		<div class="jiagwc-bj">
			<div class="jiagwc">
				<img class="jiagwc-img1"  src="stylejs/q/img/叉叉3.png" >
				<div class="jiagwc-div1">
					<img src="stylejs/q/img/勾-实.png" >
					<p><span id="jia-gwc-shop1"></span> 成功加入购物车!</p>
				</div>
				<div class="jiagwc-div2">
					<a href="#!" class="jiagwc-div2-a1">在逛逛</a>
					<a class="jiagwc-div2-a2">去结算</a>
				</div>
			</div>
		</div>
			
		<%-- <c:forEach items="${dalist }" var="b">
				<img class="daimg" alt="" src="${b.getPname() }">
	    		
	    </c:forEach>
		<c:forEach items="${xiaolist }" var="x">
				<img alt="xiaimg" src="${x.getPname() }">
				
		</c:forEach> --%>
		<!-- 获取图片 -->
	</body>
	<!-- <script src="js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script> -->
	<script src="stylejs/q/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/shipp.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hwdetails.js" type="text/javascript" charset="utf-8"></script>
	<!-- 粘性导航 -->
	<script src="stylejs/q/js/nav.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/layer/layer.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
	
		$(function(){
			//点击结算
			$(".jiagwc-div2-a2").click(function(){
				//console.log($(this))
				window.location.href="hw_shop_carservlet";
			});
			// 点击喜欢
			$(".xihuan-a").click(function(){
				var xihuan=$(this).find("span").html();
				var gid=$(".hwdmr-div2-s4").html();
				console.log(gid);
				if(xihuan!=-1){
					if(xihuan!=0){
						//console.log($(this).find("span").html());
						var lid=$(this).find("span").html();
						console.log(gid,lid);
						$.ajax({
							url:"quxiao_like_servlet?lid="+lid,//访问路径
							type:"post",//请求类型
							async:true,//是否同步请求
							error:function(){
								//访问错误会执行这个方法
								//404，500，405
							},
							success:function(data){
								if(data==0){
									layer.msg('已取消收藏', {time: 500, icon:2},function(){
										window.location.href="hwdetailsservlet?gid="+gid;
									});
									
								}
							}
						});
					}else{
						
						$.ajax({
							url:"like_servlet?gid="+gid,//访问路径
							type:"post",//请求类型
							async:true,//是否同步请求
							error:function(){
								//访问错误会执行这个方法
								//404，500，405
							},
							success:function(data){
								if(data==0){
									layer.msg('已加入收藏哟', {time: 500, icon:1},function(){
										window.location.href="hwdetailsservlet?gid="+gid;
									});
								}
							}
						});
					}
				}else{
					layer.msg('登录可以加入收藏哟！！！', {time: 2000, icon:3});
				}
			});
			
			
			//加入购物车
			$(".shipp_gw").click(function(){//$(".users-tou>span").is(":empty")
					var gname=$("#gname1").html();
					var conname=$("#banben1").html();
					var cname=$("#yanse1").html();
					$("#jia-gwc-shop1").html(gname+conname+cname);
					var carcount=$("#input-num").val();
					var conid=$("#xuanhong1").val();
					console.log(carcount,conid);
					$.ajax({
						url:"qian_jia_gwc_servlet?carcount="+carcount+"&conid="+conid,//访问路径
						type:"post",//请求方式
						dataType:"html",//响应数据类型
						async:true,//同步
						error:function(){
							//访问错误
							alert("访问错误！");
						},
						success:function(data){
							if(data=="0"){
								$('.jiagwc-bj').show();
								/* 加载购物车数量 */
								$(".sxgwc").load("tou_gouwuche_josn_servlet",function(data){});
							}else{
								window.location.href="qian_longin";
							}
						}
					});
			});
			
			//隐藏
			$(".jiagwc-div2-a1").click(function(){
				$('.jiagwc-bj').hide();
			});
			//隐藏
			$(".jiagwc-img1").click(function(){
				$('.jiagwc-bj').hide();
			});
			// 颜色
			var cname=$("#xuanhong").find("span").text();
			//console.log(cname)
			$("#yanse0").text(cname);
			$("#yanse1").text(cname);
			$("#yanse2").text(cname);
			$(".hwdmr-div3-ul1 li").click(function(){
				$(this).attr("id","xuanhong").parent().siblings().find("li").removeAttr("id");
				//console.log($(this).val())
				var cid=$(this).val();
				$(".hwdmr-div3-ul2").load("configuration_josn_servlet?cid="+cid,function(data){});
				var cname=$("#xuanhong").find("span").text();
				//console.log(cname)
				$("#yanse0").text(cname);
				$("#yanse1").text(cname);
				$("#yanse2").text(cname);
				$(".hwdetails-middle-left").load("detail_huantu_josn_servlet?cid="+cid,function(data){});
			});
			// 加载图片
			var cid=$("#xuanhong").val();
			$(".hwdetails-middle-left").load("detail_huantu_josn_servlet?cid="+cid,function(data){});
			//加载第一个版本
			var cid=$("#xuanhong").val();
			$(".hwdmr-div3-ul2").load("configuration_josn_servlet?cid="+cid,function(data){});
			
			// 粘性导航
			//内容信息导航吸顶
			$(document).ready(function() {
			    var navHeight = $("#navHeight").offset().top;
			    var navFix = $("#nav-wrap");
			    $(window).scroll(function() {
			        if ($(this).scrollTop() > navHeight) {
			            navFix.addClass("navFix");
			        } else {
			            navFix.removeClass("navFix");
			        }
			    })
			})
			//内容信息导航锚点
			$('.nav-wrap').navScroll({
			    mobileDropdown: true,
			    mobileBreakpoint: 768,
			    scrollSpy: true
			});
						
			$('.click-me').navScroll({
			    navHeight: 0
			});
						
			$('.nav-wrap').on('click', '.nav-mobile', function(e) {
			    e.preventDefault();
			    $('.nav-wrap ul').slideToggle('fast');
			});
			
			
			
			
			
			

			// 立即下单
			$(".shipp_xd1").click(function(){
				var shu=$("#input-num").val();
				var conid=$("#xuanhong1").val();
				console.log(shu,conid);
				window.location.href="settlement?conid="+conid+"&shu="+shu;
			});
			
			
			
			
			
			
			
			
		});
		
	</script>

</html>