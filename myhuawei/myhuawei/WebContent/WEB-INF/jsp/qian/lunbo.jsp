<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>首页</title>
		<!-- rel 默认样式图标 -->
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hint.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/lunbotu.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/jquery.easy_slides.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/animate.min.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hover.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/xuanfu.css"/>
		<style type="text/css">
			#native{
			  background: white;
			  width: 100%;
			}
					 
			.box {
			  position: fixed;
			  top: 0;
			  left: 0;
			  z-index: 99999999;
					/* box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 12px; */
				box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 3px 0px, rgba(0, 0, 0, 0.06) 0px 1px 2px 0px;
			}
			/* 轮播图 */
			.content {
				/* 给定容器宽高度 */
				width: 1522.4px;
				overflow: hidden;
				height: 550px;
				position: relative;
				margin: auto;
				background-color: #ccc;
				/* top: -100px; */
			}
			.content>a>img{
				display: block;
				position: relative;
			}
			
			.content a img{
				
			}
			
			.points {
			    position: absolute;
			    z-index: 5;
			    list-style: none;
			    width: 30%;
			    display: flex;
			    justify-content: center;
			    align-items: center;
			    /* background-color: hsla(0,0%,0%,0.2); */
			    bottom: 5px;
			    left: 40%;
			    height: 20px;
			    border-radius: 25px;
			    right: 40%;
			}
			
			.points li {
				cursor: pointer;
				display: inline-block;
				width: 10px;
				height: 10px;
				margin: 0px auto 30px;
				border-radius: 15px;
				background-color: hsla(0,0%,0%,0.2);
			}
			
			.active {
			    background-color: hsla(0,0%,100%,1.00) !important; 
			}
			
			.prev {
				left: 400px;
				border-radius: 30px;
				/* font-size:20px; */
			}
			
			.next,
			.prev {
			    appearance: menu;
			    margin: 0 auto;
			    width: 40px;
			    display: block;
			    float: left;
			    height: 40px;
			    position: absolute;
				line-height: 40px;
				text-align: center;
				font-family: "宋体";
				color: aliceblue;
			    z-index: 999;
			    background-color: hsla(0,0%,0%,0.1);
			    top: 45%;
			    -webkit-appearance: button;
			    cursor: pointer;
			}
			
			.next {
				right: 200px;
				border-radius: 30px;
			}
			.prev:hover{background-color: hsla(0,0%,0%,0.5);}
			.next:hover{background-color: hsla(0,0%,0%,0.5);}
			
			#lunbo-caidan-a1>a{
				color: #9E9796;
			}
			#lunbo-caidan-a1:hover>a{
				color: black;
			}
			
			.dalei{
				display: inline-block;
				width: 160px;
				
			}
		</style>
	</head>
	<body>
		<!-- 头部最大盒子
		 wow fadeInRight
		可以加入 data-wow-duration（动画持续时间）和 data-wow-delay（动画延迟时间）属性
		-->
		<!-- 头部kaishi -->
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
		
		<!-- 中部内容 -->
		<div class="lunbo-big">
							        <div class="content">
							        	<c:forEach items="${gglist }" var="gg">
							      			<a href="hwdetailsservlet?gid=${gg.gid }">
												<img src="${gg.pname }" >
											</a>
							       	 	</c:forEach>
							       	</div>
							  			        
							       
							        <!-- <div class="nav_indicators"></div> -->
					<!-- 一级菜单 -->
					<div class="lunbo-caidan">
						<ul>
							<c:forEach items="${btlist }" var="bt">
								<li class="caidan-li1" id="lunbo-caidan-a1" value="${bt.btid }"><a class="dalei" href="sousuo_servlet?sou=${bt.btname }">${bt.btname } <img class="caidan-img1" src="stylejs/q/img/进入箭头2小.png" ></a>
									<ul>
										<!-- 菜单列数 -->
										<li>
											<!-- 二级菜单 -->
											<ul>
								
											</ul>
										</li>
									</ul>
								</li>
							</c:forEach>
						</ul>
					</div>
					
					
				
				<!-- <div class="dian">
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div> -->
				
				
					
			
			
		</div>
		<div class="home-big">
			<div class="home-one">
				<ul>
									<li class="wow fadeInUp" data-wow-delay="0.1s" data-wow-duration="0.2s">
										<p><img src="https://res.vmallres.com/uomcdn/CN/cms/202108/B703F74BAA24212C4824E024EBA75A75.png.webp"></p>
										<span>企业购</span>
									</li>
									<li class="wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="0.2s">
										<p><img src="https://res.vmallres.com/uomcdn/CN/cms/202112/6FEF8D4A5DDC158B149E8AC32A749B32.png.webp"></p>
										<span>影音娱乐</span>
									</li>
									<li class="wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="0.2s">
										<p><img src="https://res.vmallres.com/uomcdn/CN/cms/202112/F4578330009F8604EF6A48B0020408F1.png.webp"></p>
										<span>车载出行</span>
									</li>
									<li class="wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="0.2s">
										<p><img src="https://res.vmallres.com/uomcdn/CN/cms/202108/96D51B483F18498112E94114B4AC7C7A.png.webp"></p>
										<span>超新计划</span>
									</li>
									<li class="wow fadeInUp" data-wow-delay="0.5s" data-wow-duration="0.2s">
										<p><img src="https://res.vmallres.com/uomcdn/CN/cms/202104/9B354D128BBE68DFA79995FD6AC73D00.webp"></p>
										<span>以旧换新</span>
									</li>
									<li class="wow fadeInUp" data-wow-delay="0.6s" data-wow-duration="0.2s">
										<p><img src="https://res.vmallres.com/uomcdn/CN/cms/202104/D772246BE15940855B040BF640B87809.webp"></p>
										<span>会员频道</span>
									</li>
									<li class="wow fadeInUp" data-wow-delay="0.7s" data-wow-duration="0.2s">
										<p><img src="https://res.vmallres.com/uomcdn/CN/cms/202111/68F797B1D1B2C2ACD0CFB959BE9D9798.png.webp"></p>
										<span>限时秒杀</span>
									</li>
								</ul>
			</div>
			<div class="home-two">
				<ul>
					<li><img src="https://res.vmallres.com/uomcdn/CN/cms/202203/C1AC66CC351A9A59197610E6F01BEBCF.jpg.webp"></li>
					<li><img src="https://res.vmallres.com/uomcdn/CN/cms/202112/6B8E9D5AE0CB2BB3083EE4AB0B1EBD64.jpg.webp"></li>
					<li><img src="https://res.vmallres.com/uomcdn/CN/cms/202112/5B500883FDC05AB22EEFD49855CD641E.jpg.webp"></li>
					<li id="home-two-li1"><img src="https://res.vmallres.com/uomcdn/CN/cms/202111/F58CA96B71BB84A6D0F620CB5C5841EB.jpg.webp"></li>
				</ul>
			</div>
			<div class="home-three">
				<div class="home-three-title">
					<p class="htt-p1">限时购</p>
					
						<!-- 倒计时 -->
						<div class="djs-ys1">
							距结束
						</div>
						<div class="container timeBar ys3 djs-ys" data="${sj==null?6000:sj }" ></div>
					
					<p class="htt-p2">
						限时秒杀
					</p>
				</div>
				<div class="home-three-shop1">
					<ul>
						<c:forEach items="${fivelist }" var="f">
							<a  href="hwdetailsservlet?gid=${f.gid }">
							<li>
								<img src="${f.gtu }">
								<div class="home-tsdiv1">
								<p class="home-tsdiv1-p1">
									${f.gname }
								</p>
								<p class="home-tsdiv1-p2">
									限时省200
								</p>
								<p class="home-tsdiv1-p3">
									<fmt:formatNumber value="${f.gjiage }" type="currency" pattern="￥.00"/>
								</p>
								</div>
							</li>
							</a>
						</c:forEach>
					</ul>
				</div>
			</div>
			<!-- 一行四个选项卡1 -->
			<div class="home-five1">
				<div class="home-five1-title">
					<ul>
						<c:forEach var="sm1" begin="0" end="${smlist1.size()-1 }" step="1" varStatus="i"> 
         					 <c:if test="${sm1==0 }" var="j" >
         					 	<li id="home-five1-li1" value="${smlist1.get(sm1).getSmid() }">${smlist1.get(sm1).getSmname() }</li>
         					 </c:if>
         					 <c:if test="${!j }">
         					 	<li value="${smlist1.get(sm1).getSmid() }">${smlist1.get(sm1).getSmname() }</li>
         					 </c:if>
						</c:forEach>
					</ul>
					<a href="sousuo_servlet?sou=${one }">
					<p id="home-gengduo">
						<span>更多</span><img src="stylejs/q/img/箭头_列表向右_o1.png" >
					</p>
					</a>
				</div>
				<div class="home-five1-shop1">
					<ul id="home-five1-xian">
						
					</ul>
					<!-- <ul>	
					
					</ul>
					<ul>
						
					</ul>
					<ul>
						
					</ul>
					<ul>
						
					</ul> -->
				</div>
			</div>
			
			<!-- 选项卡1 -->
			<div class="home-four">
				<div class="home-four-title">
					<ul>
						<c:forEach var="sm2" begin="0" end="${smlist2.size()-1 }" step="1" varStatus="i"> 
         					 <c:if test="${sm2==0 }" var="j" >
         					 	<li id="home-four-li1" value="${smlist2.get(sm2).getSmid() }">${smlist2.get(sm2).getSmname() }</li>
         					 </c:if>
         					 <c:if test="${!j }">
         					 	<li value="${smlist2.get(sm2).getSmid() }">${smlist2.get(sm2).getSmname() }</li>
         					 </c:if>
						</c:forEach>
					</ul>
					<a href="sousuo_servlet?sou=${two }"><p id="home-gengduo">
						<span>更多</span><img src="stylejs/q/img/箭头_列表向右_o1.png" >
					</p></a>
				</div>
				<div class="home-four-shop1">
					<ul id="home-four-xian">
						
					</ul>
					<ul>
						
					
					
					</ul>
					<ul>
						
						
					</ul>
					<ul>
						
					</ul>
					<ul>
						
					</ul>
				</div>
			</div>
			
			<!-- 选项卡2 -->
			<div class="home-four1">
				<div class="home-four1-title">
					<ul>
						<c:forEach var="sm3" begin="0" end="${smlist3.size()-1 }" step="1" varStatus="i"> 
         					 <c:if test="${sm3==0 }" var="j" >
         					 	<li id="home-four1-li1" value="${smlist3.get(sm3).getSmid() }">${smlist3.get(sm3).getSmname() }</li>
         					 </c:if>
         					 <c:if test="${!j }">
         					 	<li value="${smlist3.get(sm3).getSmid() }">${smlist3.get(sm3).getSmname() }</li>
         					 </c:if>
						</c:forEach>
					</ul>
					<a href="sousuo_servlet?sou=${three }"><p id="home-gengduo">
						<span>更多</span><img src="stylejs/q/img/箭头_列表向右_o1.png" >
					</p></a>
				</div>
				<div class="home-four1-shop1">
					<ul id="home-four1-xian">
						
					</ul>
					
				</div>
			</div>
			
			
		
		</div>
		<!-- 尾部 -->
		<jsp:include page="hwtail.jsp"></jsp:include>
		<!-- 尾部结束 -->
		
	</body>
	<!-- <script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script> -->
	<script src="stylejs/q/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/lunbotu.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hwhead.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/jquery.easy_slides.js" type="text/javascript" charset="utf-8"></script>
	<!-- <script src="stylejs/q/js/main.js" type="text/javascript" charset="utf-8"></script> -->
	<script src="stylejs/q/js/wow.min.js" type="text/javascript" charset="utf-8"></script>
	<!-- 轮播图js -->
	<script src="stylejs/q/js/LoopSlider.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/countdown1.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			            
			        
					//
					//引入id标签;
					    var navtive = $("#native");
					    //设置监听事件;
					    $(window).scroll(function () {
					      var scrollHeight = $(document).scrollTop();
					      console.log(scrollHeight)
					      if (scrollHeight > 100) {
					//添加类名样式
					        navtive.addClass("box");
					      } else if (scrollHeight == 0) {
					//删除类名样式
					        navtive.removeClass("box");
					      }
					//scrollHeight > 100 ? navtive.addClass("box") : navtive.removeClass("box");
					    }); 
							
		
		
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
		
		// 倒计时
		$(".timeBar").each(function () {
			$(this).countdownsync({
				dayTag: "",
				hourTag: "<label class='tt hh dib vam hdbz'>00</label><span class='hdbz1'> : </span>",
				minTag: "<label class='tt mm dib vam hdbz'>00</label><span class='hdbz1'> : </span>",
				secTag: "<label class='tt ss dib vam hdbz'>00</label>",
				dayClass: ".dd",
				hourClass: ".hh",
				minClass: ".mm",
				secClass: ".ss",
				isDefault: false,
				showTemp:1
		
			}, function () {
				location.reload();
			});
		});
		
		/* 切换四个选项卡 */
		$(".home-five1-title ul li").click(function(){
			$(this).attr("id","home-five1-li1").siblings("li").removeAttr("id");
			var qie=$(this).index();
			//$(".home-five1-shop1>ul:eq("+qie+")").attr("id","home-five1-xian").siblings("ul").removeAttr("id");
			var smid=$(this).val();
			//点击查询对应商品
			console.log(smid);
			$("#home-five1-xian").load("smshop_json?smid="+smid,function(data){});
			var mrgao=$("#home-five1-xian").height();
			$(".home-five1-shop1").css("height",mrgao+"px");
		});
		
		
		/* 切换选项卡1 */
		$(".home-four-title>ul>li").click(function(){
			//console.log($(this).index());
			
			$(this).attr("id","home-four-li1").siblings("li").removeAttr("id");
			var qies=$(this).index();
			//$(".home-four-shop1>ul:eq("+qies+")").attr("id","home-four-xian").siblings("ul").removeAttr("id");
			var smid3=$(this).val();
			//点击查询对应商品
			//console.log(smid);
			$("#home-four-xian").load("smshop_json2?smid2="+smid3,function(data){});
			
			var mrgaos=$("#home-four-xian").height();
			$(".home-four-shop1").css("height",mrgaos+"px");
		});
		/* 切换选项卡2 */
		$(".home-four1-title>ul>li").click(function(){
			//console.log($(this).index());
			$(this).attr("id","home-four1-li1").siblings("li").removeAttr("id");
			var qiess=$(this).index();
			//$(".home-four1-shop1>ul:eq("+qiess+")").attr("id","home-four1-xian").siblings("ul").removeAttr("id");
			var smid4=$(this).val();
			//console.log(smid4);
			$("#home-four1-xian").load("smshop_json3?smid3="+smid4,function(data){});
			var mrgaoss=$("#home-four1-xian").height();
			$(".home-four1-shop1").css("height",mrgaoss+"px");
		});
		
		
		//一开始加载数据库内容
		var smid2=$("#home-five1-li1").val();
		$("#home-five1-xian").load("smshop_json?smid="+smid2,function(data){});
		
		//一开始加载数据库内容-五个的选项卡-1
		var smid3=$("#home-four-li1").val();
		//console.log(smid3);
		$("#home-four-xian").load("smshop_json2?smid2="+smid3,function(data){});
		
		
		//一开始加载数据库内容-五个的选项卡-1
		var smid4=$("#home-four1-li1").val();
		//console.log(smid4);
		$("#home-four1-xian").load("smshop_json3?smid3="+smid4,function(data){});
		
		
		
		});
					
					
		//轮播图js			
		LoopSlider.init({
			el: ".content", //选择器
			navigator: {
				//前进后退按钮
				prevEl: ".prev",
				nextEl: ".next"
			},
			easing: "ease", //动画效果cubic-bezier(0.985, -0.060, 0.000, 1.320)
			duration: 500, //过渡时间，默认为3000ms,
			autoplay: 2000, //boolean 和 number 设置为true 默认延时为3s,如果设置为1000，延时为1s
		})							  
						  
						  
			
	</script>
	<!-- $(' #幻灯片').slideshow ({

randomize: true， //随机播放幻灯片的顺序。

slideDuration: 6000， //每张幻灯片的持续时间。

fadeDuration: 1000， //衰落过渡持续时间。应该比slideDuration短。

animate: true， //打开或关闭css动画。

Pause ontabblur: true， //当标签失去焦点时暂停幻灯片。这防止了setTimeout()的故障。

enableLog: false， //启用日志消息到控制台。用于调试。

slideElementClass: 'slide'， //这也是在CSS中定义的!

//这也是在CSS中定义的!

})； -->


	
</html>
