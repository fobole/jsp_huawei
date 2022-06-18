<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="m" uri="http://cn.gso.com/jsp/jstl/mytag" %>
<!DOCTYPE html>
<html>
<base href="${basePath}">
	<head>
		<meta charset="utf-8">
		<title>手机</title>
		<!-- rel 默认样式图标 -->
		<link rel="icon" type="image/x-ico" href="stylejs/q/img/华为1.png"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/shouji.css"/>
	</head>
	<style type="text/css">
		.sp_img>a>img{
			width: 181px;
			height: 179px;
			margin-top: 20px;
			
		}
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
	.aaa::after{
	    content: '\\';
	    color: #000000;
	    margin: 0px 8px;
	    font-size: 12px;
	    }
	 #bbb{
	    font-size: 12px;
		line-height: 61px;
		color: #545556;
	 }
	</style>
	<body>
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
		<!-- 中间开始 -->
		<div class="big-zj">
			<div class="zj-top1">
				<div class="top-left1">
					<a href="lunboservlet" class="aaa">首页</a>
				</div>
				<div class="top-right1">
						<span id="bbb">${btname}</span>
				</div>
			</div>
			<!-- 筛选开始 -->
			<div class="zj-fl">
				<div class="zj-fl1">
					<div class="zj-fl2">
						<span>分类:</span>
					</div>
					<div class="zj-fl3">
							<span>${btname }</span>
					</div>
				</div>
				<div class="zj-fl1">
					<div class="zj-fl2">
						<span>服务优惠:</span>
					</div>
					<div class="zj-fl3">
						<span>仅看有货</span>
						<span class="jg">分期免息</span>
						<span class="jg">优惠商品</span>
					</div>
				</div>
				<div class="zj-fl1">
					<div class="zj-fl2">
						<span>屏幕尺寸:</span>
					</div>
					<div class="zj-fl3">
						<span>6.0-6.5英寸</span>
						<span class="jg">6.5英寸以上</span>
					</div>
				</div>
				<div class="zj-fl1">
					<div class="zj-fl2">
						<span>更多选项:</span>
					</div>
					<div class="zj-fl3">
						<span>运行内存</span>
						<span class="jg">存储容量</span>
						<span class="jg">上市时间</span>
					</div>
				</div>
				<div class="zj-fl1">
					<div class="zj-fl2">
						<span>排行:</span>
					</div>
					<div class="zj-fl3">
						<span>综合</span>
						<span class="jg">最新</span>
						<span class="jg">评论数</span>
						<span class="jg">价格</span>
					</div>
				</div>
			</div>
			<!-- 筛选结束 -->
			<!-- 商品列表开始 -->
			<div class="zj-xq">
				<div class="xq1">
					<ul class="xqlb">
					<c:forEach items="${page.rows}" var="g">
					<li class="splb1">
							<div class="sp_img">
								<a href="hwdetailsservlet?gid=${g.gid }"><img src="${g.gtu }" width="181px" height="179px" ></a>
							</div>
							<div class="spxx">
								<div class="sp-name">
								<c:if test="${g.gnew==0 }">
									<span class="namexp">&nbsp;新品上市&nbsp;</span>
								</c:if>
									<span class="name">${g.gname }</span>
								</div>
								<div class="gn">
									<span>折叠万象</span>
								</div>
								<div class="qian">
									<span>￥${g.gjiage }</span>
								</div>
								<div class="jf">
									<span>赠送积分</span>
								</div>
								<div class="pl">
									<span>641评价</span>
									<span>98%好评</span>
								</div>
							</div>
						</li>
						
					</c:forEach>
					</ul>
					<div style="clear:both"></div>
					<div class="pages" id="p1">
						<m:pages url="xhd_sjlbservlet" page="${page}"/>
					</div>
				</div>
			</div>
			<!-- 商品列表结束 -->
			
		</div>
		<div class="tail-big">
			<div class="tail-top">
				<ul>
					<li>
						<span class="tail-top-s1">
							
						</span>
						<span class="tail-top-ss2">百强企业 品质保证</span>
						
					</li>
					<li>
						<span class="tail-top-s2">
							
						</span>
						<span class="tail-top-ss2">7天退货 15天换货</span>
					</li>
					<li>
						<span class="tail-top-s3"></span>	
						<span class="tail-top-ss2">48元起免运费</span>
					</li>
					<li id="tail-top-li1">
						<span class="tail-top-s4"></span>
						<span class="tail-top-ss2">2000家服务店 全国联保</span>
					</li>
				</ul>
			</div>
			<div class="tail-center">
				<div class="tail-center-one">
					<ul>
						<li id="tail-cen-li1">购物指南</li>
						<li>免息分期</li>
						<li>以旧换新</li>
						<li>众测活动</li>
						<li>企业购</li>
						<li>O2O采购</li>
					</ul>
					<ul>
						<li  id="tail-cen-li1">售后服务</li>
						<li>门店维修</li>
						<li>保修政策</li>
						<li>防伪查询</li>
						<li>退换货政策</li>
						<li>手机寄修服务</li>
						<li>维修备件价格查询</li>
					</ul>
					<ul>
						<li  id="tail-cen-li1">维修与技术支持</li>
						<li>服务店</li>
						<li>预约维修</li>
						<li>手机寄修</li>
						<li>备件价格查询</li>
						<li>上门服务</li>
					</ul>
					<ul>
						<li  id="tail-cen-li1">特色服务</li>
						<li>防伪查询</li>
						<li>补购保障</li>
						<li>以旧换新</li>
						<li>礼品包装</li>
					</ul>
					<ul>
						<li  id="tail-cen-li1">关于我们</li>
						<li>公司介绍</li>
						<li>华为零售店</li>
						<li>商家中心</li>
						<li>意见反馈</li>
					</ul>
					<ul>
						<li  id="tail-cen-li1">友情链接</li>
						<li>华为集团</li>
						<li>华为CBG官网</li>
						<li>花粉俱乐部</li>
						<li>华为云</li>
						<li>华为应用市场</li>
					</ul>
				</div>
				<div class="tail-center-two">
					<p class="tail-cen-p1">950805</p>
					<p class="tail-cen-p2"><span></span>7x24小时客服热线（仅收市话费）</p>
					<p class="tail-cen-p3"> 在线客服</p>
					<p class="tail-cen-p4"><span>关注Vmall：</span>
						<span class="tail-cen-span1 taensp1"></span>
						<span class="tail-cen-span1 taensp2 "></span>
						<span class="tail-cen-span1 taensp3 "></span>
						<span class="tail-cen-span1 taensp4 "></span>
					</p>
				</div>
			</div>
			<div class="tail-bottom">
				<p>
					<img class="tail-bo-img1" src="../img/50938736813613783905.png" >
				</p>
				<p class="tail-bo-p2">
					<span id="tail-bo-span1">华为集团</span> | <span id="tail-bo-span1">华为CBG官网</span> | 
					<span id="tail-bo-span1">花粉俱乐部</span> | <span id="tail-bo-span1">华为应用市场</span> | 
					<span id="tail-bo-span1">HarmonyOS</span> | <span id="tail-bo-span1">华为终端云空间</span> | 
					<span id="tail-bo-span1">开发者联盟</span> | <span id="tail-bo-span1">华为商城手机版</span> | <span id="tail-bo-span1">网站地图</span> <br>
					隐私声明 服务协议 COOKIES Copyright © 2012-2021 华为终端有限公司 版权所有 粤ICP备19015064号|粤公网安备 44190002003939号<br>
					增值电信业务经营许可证：粤B2-20190762|备案主体编号：44201919072182|粤新出网备（2021）2号<br>
					互联网药品信息服务资格证（粤）-非经营性-2020-0102 | 粤东食药监械经营备20203930 | 广东省网络食品交易第三方平台备案：GDWS10168
				</p>
				<p class="tail-bo-p3">
					<img class="tail-bo-img2" src="stylejs/q/img/20160226162415360.png" >
				</p>
			</div>
		</div>
	</body>
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hwhead.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hwtail.js" type="text/javascript" charset="utf-8"></script>
</html>
