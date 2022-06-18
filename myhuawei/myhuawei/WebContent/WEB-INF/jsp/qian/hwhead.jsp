<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>头部</title>
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<style type="text/css">
		
		/* 头像 */
#users-tou{
	border: none;
	/* overflow: hidden; */
	position: relative;
	/* border: 1px solid red; */
	height: 36px;
	margin: 0px;
}
#users-tou:hover{
	box-shadow: rgba(0, 0, 0, 0.15) 0px 2px 8px;
	background: white;
	color: black;
}
#users-tou>img{
	box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 0px 1px, rgb(209, 213, 219) 0px 0px 0px 1px inset;
	display: inline-block;
	/* position: relative; */
	width: 17px;
	height: 17px;
	border-radius: 17px;
	/* border: 1px solid red; */
	float: left;
	margin-right: 5px;
	margin-top: 0px;
	background: white;
	overflow: hidden;
	margin-top: 9px;
}
#users-tou-img1{
	display: inline-block;
	/* position: relative; */
	width: 50px;
	height: 50px;
	border-radius: 50px;
	/* border: 1px solid red; */
	/* float: left; */
	margin-right: 5px;
	margin-top: 0px;
	background: white;
	overflow: hidden;
	box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 0px 1px, rgb(209, 213, 219) 0px 0px 0px 1px inset;
}
#users-tou>span{
	
	display: inline-block;
	margin-top: 9px;
}

.users-tou-tui{
	display: none;
	position: absolute;
	top: 36px;
	right: 0px;
	width: 200px;
	/* height: 150px; */
	background: white;
	z-index: 999;
	box-shadow: rgba(0, 0, 0, 0.18) 0px 2px 4px;
	/* border: 4px solid red; */
}

#users-tou-tui-div1{
	height: 75px;
	/* background: white; */
}
#users-tou-tui-div1>p{
	float: left;
}
#users-tou-tui-p1{
	margin: 10px 0px 0px 10px;
}
#users-tou-tui-p2{
	color: black;
	margin-top: 10px;
	margin-left: 10px;
	line-height: 25px;
}
#users-tou-tui-p2 span{
	display: inline-block;
}
#users-tou-tui-p2 a{
	color: black;
}
#users-tou-tui-div2{
	border-top: 2px solid #F0F0F0;
	background: white;
	height: 50px;
	width: 200px;
	font-size: 16px;
	text-align: center;
	line-height: 50px;
	/* border: 1px solid red; */
}
#users-tou-tui-div2:hover a{
		color: #CF0B2D;
}
#users-tou-tui-div2>a{
	color: black;
}
.tou_bianhei_a1{
 		color: black;
 }
.hwhead-bo-div2>ul>li:hover .tou_bianhei_a1{
 	color: #CF0A2C;
 }
 
 .toubianhong:hover{
 		color: #CF0B2D;
 }
 /* 搜索旨影  */
 .mhss{
	/*  */
	position: absolute;
	width: 210px;
	top: 31px;
	left: 5px;
	z-index: 9;
	background: white;
	/* border-radius: 5px; */
	box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 15px -3px, rgba(0, 0, 0, 0.05) 0px 4px 6px -2px;
}
.mhss li{
	/* border-bottom: 1px solid rgba(0, 0, 0, 0.1); */
	/* text-align: center; */
	height: 30px;
	line-height: 30px;
	padding-left: 10px;
	font-size: 12px;
	/* margin-left: 10px;
	margin-right: 10px; */
	
}
.mhss li:hover{
	background-color: #E8E8E9;
	cursor: pointer;
	/* border-radius: 5px; */
}
		</style>
	</head>
	<body>
		<div class="hwhead-big">
			<div class="hwhead-top">
				<div class="hwhead-top-one">
					<div class="hwhead-to1">
						<ul class="hwhead-top-ul1">
							<a href="lunboservlet"><li id="hw-shouye-li1">首页</li></a>
							<li>华为官网</li>
							<li>花粉俱乐部</li>
							<li>V码(优购码)</li>
							<li>企业购</li>
	 						<a href="ht_login" target="_blank"><li>华为后台</li></a>
							<li><span class="hw-sy-span1">更多精彩</span> <img class="hw-sy-img1" src="stylejs/q/img/向下箭头.png" ></li>
						</ul>
						<div class="hwhead-top-right">
							<ul  class="hwhead-top-ul2">
								<c:if test="${users==null }" var='gwc1'>
									<a href="qian_longin">
										<li id="hw-gwc-li1"><img  class="hw-sy-img2"  src="stylejs/q/img/购物车空.png" > 购物车(0)</li>
									</a>
								</c:if>
								<c:if test="${not gwc1 }">
									<a href="hw_shop_carservlet" class="sxgwc" >
										
									</a>
								</c:if>
								<li>手机版 <img class="hw-sy-img1" src="stylejs/q/img/向下箭头.png" ></li>
								<li>网站导航 <img class="hw-sy-img1" src="stylejs/q/img/向下箭头.png" ></li>
								<li>客服 <img class="hw-sy-img1" src="stylejs/q/img/向下箭头.png" ></li>
								<%-- <c:if test="${users==null }" var='gwc1'>
									
								</c:if>
								<c:if test="${not gwc1 }">
									
								</c:if> --%>
								<a href="personalservlet">
									<li>我的订单</li>
								</a>
								<c:if test="${users==null }" var="ul" >
									
									<a href="qian_longin">
										<li>注册</li>
									</a>
									<a href="qian_longin">
										<li  id="hw-shouye-li1">请登录</li>
									</a>
								</c:if>
								<c:if test="${!ul }">
									<%-- <li id="users-tou">
										<img src="${users.getUimg() }" >
										<span>${users.getUname() }</span>
									</li> --%>
									<li id="users-tou">
									<img src="${users.uimg }" >
									<span>${users.uname }</span>
									<div class="users-tou-tui">
										<div id="users-tou-tui-div1">
											<p id="users-tou-tui-p1">
												<img id="users-tou-img1" src="${users.uimg }" >
											</p>
											<p id="users-tou-tui-p2">
												<span>昵称：${users.uname }</span><br>
												<a href="management_servlet"><span class="toubianhong">我的信息</span></a>
											</p>
										</div>
										<div id="users-tou-tui-div2">
											<a>退出登录</a>
										</div>
									</div>
									</li>
								</c:if>
							</ul>
						</div>
						
						
					</div>
				</div>
			</div>
			<!-- re -->
			<!-- 固定定位导航兰 -->
<div id="native">
				
			
			<div class="hwhead-bottom" id="" >
				<a href="lunboservlet">	<div class="hwhead-bo-div1">
				<img src="stylejs/q/img/下载.png" > 
				</div> </a>
				<div class="hwhead-bo-div2">
					<ul>
					
							

					</ul>
					
				</div>
				<div class="hwhead-bo-div3">
					<form action="" method="">
						<div class="hwhead-bo-sousuo">
							<input type="text" class="sousuo-kuan" name="" id="search" value="" placeholder="搜索"/>
							<div id="alert">
								<ul class="mhss">
									
								</ul>
							</div>
							
							<input type="button" class="sousuo-an"  name="" id="" value="" title="点击搜索"/>
						</div>
					</form>
				</div>
			</div>
</div>
<!-- 固定定位导航兰 -->
			
			
			
		</div>
	</body>
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hwhead.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/layer/layer.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function(){
			
			//加载头部大类
			$(".hwhead-bo-div2 ul").load("tou_josn_servlet",function(data){});
			
			
			/* 加载购物车数量 */
			$(".sxgwc").load("tou_gouwuche_josn_servlet",function(data){});
			
			
			// 搜索
			$(".sousuo-an").click(function() {
				var sou=$(".sousuo-kuan").val();
				/* if(sou=="" || sou==null){
					layer.msg('请输入你要搜索的商品', {time: 1000, icon:6});
				}else{
					console.log(sou); */
					window.location.href="sousuo_servlet?sou="+sou;
				/* } */
			});
			
			
			
			
		});
		
		
		/* 退出 */
		$("#users-tou").hover(function(){
			 $(".users-tou-tui").show();
		},function(){
			 $(".users-tou-tui").hide();
		});
		
		
		$("#users-tou-tui-div2").click(function(){
				//询问框
				layer.confirm('你确定要退出吗 ？？？', {
					title: ['退出登录', 'font-size:18px;'],
				  btn: ['确定','取消'] //按钮
				}, function(){
					location.href="qian_shan_users_servlet";
				}, function(){
				  
				});
				
		});
	</script>
	<script type="text/javascript">
		$(function(){
			
				
				//$("ul").append($("<li></li>"))
				var shou=[
					"电脑",
					"手机",
					"手表"
				];
				
				
				$(".sousuo-kuan").keyup(function(){
					/* $.ajax({
						url:"sousuo_xiala_servlet",//访问路径
						type:"post",//请求类型
						async:true,//是否同步请求
						error:function(){
							//访问错误会执行这个方法
							//404，500，405
						},
						success:function(data){
							shou.push(data)
						}
					}); */
					console.log(shou);
					//先要清除以前的元素
					$(".mhss>li").remove();
					//获取输入的val值
					var key = $(this).val();
					//创建下面的集合
					var res=[];
					console.log(key);
					for(var i=0;i<shou.length;i++){
						if(key!="" && shou[i].indexOf(key)!=-1){
							res.push(shou[i]);
							
						}
					}
					
					if(res.length>0 ){
						for(var j=0;j<res.length;j++){
								var li=$("<li>");
								li.html(res[j]);
								$(".mhss").append(li);
								console.log(res[j]);
								$(".mhss").show();
						} 
					}else{
						$(".mhss").hide()
					}
					
					shou=[];
				})
				
		
		})
	</script>
	

</html>
