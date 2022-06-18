<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%@ taglib prefix="m" uri="http://cn.gso.com/jsp/jstl/mytag" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>评论</title>
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/personal.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/pinglun.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/h/public/index.css"/>
	</head>
	<style type="text/css">
	#p1{
			height:50px;	
		}
		.pages{
		width: 1200px;
		text-align: center;
		color: #000000;	
	}
	.pages a{
		text-decoration: none;
		margin-left:5px;
		margin-top:15px;
		background-color: white;
		display:inline-block;
		width:25px;
		height:25px
		border:1px solid #d3d3d3;
		color: #000000;	
		line-height:25px;
		text-align: center;
	}
	.pages a.current{
		border:none;
		color:red;
	}
	/* 回复弹出层 */
						.huifu-di{
							overflow: hidden;
							margin-top: 20px;
						}
						.huifu-di label{
							display: inline-block;
							width: 100px;
							float: left;
							margin-left: 50px;
						}
						.huifu-di textarea{
							display: block;
							float: left;
							width: 300px;
							border: 1px solid #DCDCDC;
							padding: 5px;
							outline: none;
						}
						.ggao-huifu{
							display: block;
							margin: 30px auto 0px;
							
						}
						.prompa{
							border: none;
							display: inline-block;
							width: 120px;
							height: 35px;
							background: #68687A;
							color: white;
							margin-left: 180px;
							margin-top: 30px;
							float: left;
							text-align: center;
							line-height: 30px;
							font-size: 16px;
						}
						#cupload{
								position: relative;
								/* border: 1px solid red; */
								float: left;
								/* margin-bottom: 10px; */
							}
							#aimg{
							display: none;
						}
							.imgLog2{
								font-size: 6px;
							}
							.imgLog2 input{
								display: inline-block;
								height: 55px;
								
							}
							.demo-class .layui-layer-title{background:#68687A; color:#fff; border: none;}

	                            .gname{
						width: 313px;
						height: 30px;
						outline: none;
						border: 1px solid #DCDCDC;
						}
						
						
						.pinglun-four{
							height:440px;
							overflow-y: scroll;
							-ms-overflow-style: none; 
							overflow: -moz-scrollbars-none;
							}
							.pinglun-four::-webkit-scrollbar{
								width: 0 !important; 
							}
	</style>
	<body>
		<!-- 头部开始 -->
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
		<!-- 中部内容 -->
		<div class="personal-big">
			<div class="per-top">
				<ul>
					<li class="per-top111">首页</li>
					<li class="per-top111">我的商城</li>
					<li>我的订单</li>
				</ul>
			</div>
			<div class="per-bottom">
				<div class="per-bottom-left">
					<div class="perbot-left-one">
						<ul>
							<li class="perleft-li1">
								我的商城
							</li>
							<li class="perleft-li2">
								<h3>订单中心</h3>
								<ul>
									<a href="personalservlet"><li>我的订单</li></a>
									<!-- <a href="personal_tui.html"><li>我的退换货</li></a> -->
									<!-- <a href="personal_tuiqianservlet"><li>我的退款</li></a> -->
									<a href="Personal_pinglunservlet"><li id="bianhong">商品评价/追加</li></a>
								</ul>
							</li>
							<li class="perleft-li2">
								<h3>我的喜欢</h3>
								<ul>
									<a href="personal_likesservlet"><li>我的收藏</li></a>
								</ul>
							</li>
							
							<li class="perleft-li2">
								<h3>个人中心</h3>
								<ul>
									<a href="management_servlet"><li>个人信息</li></a>
									
								</ul>
							</li>
							<li class="perleft-li2">
								<h3>购买支持</h3>
								<ul>
									<a href="personal_addressservlet"><li>收货地址管理</li></a>
									<!-- <li>到货通知</li> -->
								</ul>
							</li>
							<li class="perleft-li3">
								隐式设置
							</li>
							<li class="perleft-li3">
								帮助中心
							</li>
						</ul>
					</div>
				</div>
				<div class="per-bottom-right">
					
					<!-- 变化模块di -->
					<div class="pinglun">
						<div class="pinglun-one">
							商品评价
						</div>
					</div>
					<div class="pinglun-two">
						<ul>
							<li class="pinglun-two-li1">商品</li>
							<li class="pinglun-two-li2">评论</li>
							<li class="pinglun-two-li4">操作</li>
							
						</ul>
					</div>
					<!-- <div class="pinglun-three">
						您暂时没有相关记录。
					</div> -->
					<div class="pinglun-four">
					<c:forEach items="${page.rows}" var="y">
						<ul>
						
						
							<li class="pinglun-four-li1" >
								<div class="pinglun-four-img1"><img src="${y.cimg}" ></div>
								<div class="pinglun-four-text1">${y.gname} ${y.comname} (${y.cname})</div>
							</li>
							<li class="pinglun-four-li2"><p>${y.cmnr}</p></li>
							<li class="pinglun-four-li3" value="${y.cmid}">
								<p>
									<c:if test="${y.cmstar==0 }">
										<a href="#!" class="dj">追加<span style="display: none;" class="cmid">${y.cmid }</span></a>
									</c:if>
								</p>
							
								<p class="a1">
									 删除
								</p>
								<span class="aa" style="display: none;">${y.cmid }</span>
							</li>
							
						</ul>
						</c:forEach>
					</div> 
					
				
					
				</div>
			</div>
		</div>
		<!-- 尾部开始 -->
		<jsp:include page="hwtail.jsp"></jsp:include>
		<!-- 尾部结束 -->
		
	</body>
	
	<img id="aimg" style="display: none;">
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/pinglun.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/h/layer/layer.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript"  src="stylejs/h/public/index.js"></script>
	
	<script type="text/javascript" charset="utf-8">
		$(function() {
			$(".dj").click(function() {
				var cmid=$(this).find(".cmid").html();
				//alert(cmid);
				layer.open({
					skin: 'demo-class',
					title: ['追加评论', 'font-size:18px;'],
				  type: 1,
				  // skin: 'layui-layer-rim', //加上边框
				  area: ['520px', '365px'], //宽高
				  content: '<form><div class="huifu-di"><label>选择商品</label><select name="type" class="gname" id="type"></select></div><div class="huifu-di"><label>评论的话</label><textarea class="form-control" id="seo_description" name="seo_description" rows="5" value="" placeholder="回复内容"></textarea></div>'
				  +'<div class="huifu-di"><label>评论图片</label><div id="cupload"> <div class="upload imgLog2"><span><i class="glyphicon glyphicon-open"></i>评论图</span></div> </div></div>'
				  +'<button type="button" class="btn btn-primary ajax-post prompa">确 定 回 复</button></form>'
				
				
				});
				
				$(".gname").load("h_pingl_servlet?cmid="+cmid,function(data){});
				var img2 = new ImgUpload('.imgLog2',50,50,50);
					    $(document).on('change',".imgLog2 input",function(e){
					    	//模拟后台返回url
					    	var url = window.URL.createObjectURL(e.target.files[0]);
					    	const formData = new FormData();
					        formData.append('file', e.target.files[0]);
					        formData.append('testName', '我是传送文件标识')
							console.log(formData.get('file')+"#######");
					        $('#loading').show();
					        var aimg=$("#aimg");
							$.ajax({    
								type: "post",
								url: "wenjian_shangchuan",
								data: formData,
								processData: false,//告诉jq不要处理发送的数据
								contentType: false,//告诉jq不要设置content-Type请求头
								success: function(res) {
					                if(res==1){
					                	 layer.msg('文件不能为空', {time: 1000, icon:6});
					                }else if(res==1){
					                	 layer.msg('文件格式不正确', {time: 1000, icon:6});
					                }else{
					                	aimg.attr("src",res);
					                	console.log(res);
					                }
					            }
					        });
					        
					    	$(this).parent().css('background','url('+url+')0% 0% / cover')
						    img2.setSpan(this)
						    //console.log(e.target.files[0]+"!")
							console.log(window.URL.createObjectURL(e.target.files[0]));
				});
					    $(".prompa").click(function() {
							var plnr=$(".form-control").val();
							var conid=$(".gname").val();
							var img=$("#aimg").attr("src");
							$.ajax({
								url:"pl_servlet2?conid="+conid+"&plnr="
										+plnr+"&img="+img+"&cmid="+cmid,//访问路径
								type:"post",//请求类型
								async:true,//是否同步请求
								error:function(){
									//访问错误会执行这个方法
									//404，500，405
								},
								 success:function(data){
									if(data==0){
										location="Personal_pinglunservlet";
									}
								} 
							});
						});
			});
			
			
			$(".a1").click(function() {
				var a=$(".aa").html();
				
				$.ajax({
					url:"shanchu?a="+a,//访问路径
					type:"post",//请求类型
					async:true,//是否同步请求
					error:function(){
						//访问错误会执行这个方法
						//404，500，405
					},
					 success:function(data){
						if(data==0){
							location="Personal_pinglunservlet";
						}
					} 
				});
				//alert(a);
			});
		});
		
	</script>
	
	
	</html>
