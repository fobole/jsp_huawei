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
		<title>订单详情</title>
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/personal.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/ddxq.css"/>
	</head>
	<body>
		<!-- 头部开始 -->
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
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
									<a href="personalservlet"><li id="bianhong">我的订单</li></a>
									<!-- <a href="personal_tui.html"><li>我的退换货</li></a> -->
									<!-- <a href="personal_tuiqianservlet"><li>我的退款</li></a> -->
									<a href="Personal_pinglunservlet"><li>商品评价/追加</li></a>
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
					<!-- 右上头部 -->
					<div class="per-bottom-right-top">
						<div class="per-bottom-right-top-left">
						<c:forEach items="${list }" var="x">
							<span>订单号：${x.getOno() }</span>
						</c:forEach>
						</div>
						<c:forEach items="${list }" var="t">
							<c:if test="${t.getOstates()==0 }">
								<div class="per-bottom-right-top-right">
								
									<input type="button" name="" id="qx" value="取消订单" />
									<c:if test="${t.getDid() == 0 }">
									<input type="button"  name="" id="xg" value="修改订单" />
									</c:if>
									<input type="button" name="" id="zf" value="立即支付" />
									<span style="display: none">${t.getOno() }</span>
								</div>
							</c:if>
							<c:if test="${t.getOstates()==1 }">
								<div class="per-bottom-right-top-right">
									<input type="button" name="" id="tk" value="立即退款" />
									<c:if test="${t.getDid() == 0 }">
									<input type="button"  name="" id="xg" value="修改订单" />
									</c:if>
									<c:if test="${t.getDid() == 1 }">
									
									</c:if>
									<span style="display: none">${t.getOno() }</span>
								</div>
							</c:if>
							<c:if test="${t.getOstates()==4 }">
								<div class="per-bottom-right-top-right">
									<input type="button" name="" id="qr" value="确认收货" />
									<span style="display: none">${t.getOno() }</span>
								</div>
							</c:if>
							<c:if test="${t.getOstates()==7 }">
								<div class="per-bottom-right-top-right">
									<input type="button" name="" id="qk" value="取消退款" />
									<span style="display: none">${t.getOno() }</span>
								</div>
							</c:if>
							<c:if test="${t.getOstates()== 9}">
								<div class="per-bottom-right-top-right">
									<input type="button" name="" id="qt" value="取消退货" />
									<span style="display: none">${t.getOno() }</span>
								</div>
							</c:if>
							<c:if test="${t.getOstates()==5 }">
								<div class="per-bottom-right-top-right">
									<input type="button" name="" id="th" value="立即退货" />
									<span style="display: none">${t.getOno() }</span>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<!-- 右上订单进度 -->
					<div class="per-bottom-right-jd">
					<c:forEach items="${list }" var="i">
						<ol>
						
						<c:if test="${i.getOstates()==0 }">
							<li class="jd-1">
								<dl>
									<p>提交订单</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									
									<p class="jd-top"><fmt:formatDate value="${i.getOcreatetime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									
								</dl>
							</li>
							<li class="jd-2">
								<dl class="c1">
									<p>付款成功</p>
									<p><img src="stylejs/q/img/实心圆%20(1).png" ></p>
									<p class="jd-top"></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl class="c1">
									<p>正在配货</p>
									<p><img src="stylejs/q/img/实心圆%20(1).png" ></p>
									<p class="jd-top"></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl class="c1">
									<p>等待收货</p>
									<p><img src="stylejs/q/img/实心圆%20(1).png" ></p>
									<p class="jd-top"></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl class="c1">
								<p>已完成</p>
								<p><img src="stylejs/q/img/实心圆%20(1).png" ></p>
								<p class="jd-top"></p>
								<p></p>
								</dl>
							</li>
							</c:if>
							<!-- 付款进度结束 -->
							<!-- 待发货开始 -->
							<c:if test="${i.getOstates()==1 }">
							<li class="jd-1">
								<dl>
									<p>提交订单</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									
									<p class="jd-top"><fmt:formatDate value="${i.getOcreatetime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>付款成功</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfktime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>正在配货</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfktime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl class="c1">
									<p>等待收货</p>
									<p><img src="stylejs/q/img/实心圆%20(1).png" ></p>
									<p class="jd-top"></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl class="c1">
								<p>已完成</p>
								<p><img src="stylejs/q/img/实心圆%20(1).png" ></p>
								<p class="jd-top"></p>
								<p></p>
								</dl>
							</li>
							</c:if>
							<!-- 待发货结束 -->
							<!-- 待收货开始 -->
							<c:if test="${i.getOstates()==4 }">
							<li class="jd-1">
								<dl>
									<p>提交订单</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									
									<p class="jd-top"><fmt:formatDate value="${i.getOcreatetime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>付款成功</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfktime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>发货中</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfhtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>等待收货</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfhtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl class="c1">
								<p></p>
								<p><img src="stylejs/q/img/实心圆%20(1).png" ></p>
								<p class="jd-top"><fmt:formatDate value="${i.getOwctime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
								<p></p>
								</dl>
							</li>
							</c:if>
							<c:if test="${i.getOstates()==5 }">
							<li class="jd-1">
								<dl>
									<p>提交订单</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									
									<p class="jd-top"><fmt:formatDate value="${i.getOcreatetime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>付款成功</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfktime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>正在配货</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfhtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>等待收货</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOshtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>待评论</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOwctime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							</c:if>
							<!-- 已完成开始 -->
							<c:if test="${i.getOstates()==6 }">
							<li class="jd-1">
								<dl>
									<p>提交订单</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									
									<p class="jd-top"><fmt:formatDate value="${i.getOcreatetime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>付款成功</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfktime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>正在配货</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfhtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>等待收货</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOshtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>已完成</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOwctime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							</c:if>
							<c:if test="${i.getOstates()==2 }">
							<li class="jd-1">
								<dl>
									<p>提交订单</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									
									<p class="jd-top"><fmt:formatDate value="${i.getOcreatetime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>已取消</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfktime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							</c:if>
							<c:if test="${i.getOstates()==9 }">
							<li class="jd-1">
								<dl>
									<p>提交订单</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									
									<p class="jd-top"><fmt:formatDate value="${i.getOcreatetime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>付款成功</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfktime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>发货中</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfhtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>退货中</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOshtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							</c:if>
							<c:if test="${i.getOstates()==3 }">
							<li class="jd-1">
								<dl>
									<p>提交订单</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									
									<p class="jd-top"><fmt:formatDate value="${i.getOcreatetime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>付款成功</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfktime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>发货中</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfhtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>已退货</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOshtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							</c:if>
							<!--退货中  -->
							<c:if test="${i.getOstates()==7 }">
							<li class="jd-1">
								<dl>
									<p>提交订单</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									
									<p class="jd-top"><fmt:formatDate value="${i.getOcreatetime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>付款成功</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfktime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>退款中</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfhtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							</c:if>
							<!-- 已退款 -->
							<c:if test="${i.getOstates()==8 }">
							<li class="jd-1">
								<dl>
									<p>提交订单</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									
									<p class="jd-top"><fmt:formatDate value="${i.getOcreatetime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>付款成功</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfktime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							<li class="jd-2">
								<dl>
									<p>已退款</p>
									<p><img src="stylejs/q/img/实心圆.png" ></p>
									<p class="jd-top"><fmt:formatDate value="${i.getOfhtime() }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></p>
									<p></p>
								</dl>
							</li>
							</c:if>
						</ol>
						</c:forEach>
					</div>
					<!-- 订单处理信息 -->
					<!-- <div class="per-bottom-right-ddclxx">
						<p class="ddclxx1">订单处理信息</p>
						<div class="ddclxx2">
							<div class="list-group-title">
								<table border="0" cellpadding="0" cellspacing="0">
									<thead>
									<tr>
										<td class="col-date">处理时间</td>
										<td class="col-info">处理信息</td>
										<th class="col-operator">操作人</th>
									</tr>
									</thead>
								</table>
							</div>
						</div>
						<div class="ddclxx3">
							<table border="0" cellspacing="0" cellpadding="0">
								<tr class="qrsj3">
									<td class="qrsj1">2021-12-22 08:45:00</td>
									<td class="qrsj2">您的订单已确认</td>
								</tr>
								<tr class="ddxx">
									<td class="qrsj1">2021-12-22 08:43:03</td>
									<td class="qrsj2">您提交了订单，请等待系统确认</td>
								</tr>
							</table>
						</div>
					</div> -->
					<!-- 收货信息 -->
					<div class="shxx">
						<p class="ddclxx1">收货信息</p>
						<div class="shxx1">
							<div class="shxx2">
								<div class="shxx2_1">
									<table border="0" cellspacing="0" cellpadding="0">
										<thead class="btxx">
											<tr>
												<td>基本信息</td>
											</tr>
										</thead>
										<tbody class="xy">
										<c:forEach items="${list }" var="l">
											<tr>
												<td>
													<span class="col-left">姓名：</span>
													<span class="col-right">${l.getOname() }</span>
												</td>
											</tr>
											<tr>
												<td>
													<span class="col-left">收货地址：</span>
													<span class="col-right">${l.getOaddress() }</span>
												</td>
											</tr>
											<tr>
												<td>
													<span class="col-left">联系电话：</span>
													<span class="col-right">${l.getOphone() }</span>
												</td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="shxx2_1">
									<table border="0" cellspacing="0" cellpadding="0">
										<thead class="btxx">
											<tr>
												<td>发票信息</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<span class="col-left">发票类型：</span>
													<span class="col-right">电子普通发票</span>
												</td>
											</tr>
											<tr>
												<td>
													<span class="col-left">发票抬头：</span>
													<span class="col-right">个人</span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="shxx2_2">
									<table border="0" cellspacing="0" cellpadding="0">
										<thead class="btxx">
											<tr>
												<td>配送信息</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<span class="col-left">配送方式：</span>
													<span class="col-right">标准配送</span>
												</td>
											</tr>
											
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- 商品清单 -->
					<div class="spqd1">
						<p class="spqd1_1">商品清单</p>
						<div class="spqd2">
							<!-- 标题 -->
							<div class="spqd3">
								<table border="0" cellspacing="0" cellpadding="0">
									<tr class="spqd3_1">
										<td class="first">商品名称</td>
										<td class="two">赠送积分</td>
										<td class="three">单价/元</td>
										<td class="four">数量</td>
										<td class="five">小计/元</td>
										<td class="sex">状态</td>
									</tr>
									
								</table>
							</div>
							<!-- 内容 -->
							<div class="spqd4">
								<table border="0" cellspacing="0" cellpadding="0">
								<c:forEach items="${list1 }" var="s">
									<tr class="spqd4-tr">
										<td class="spqd-tp"><img src="${s.getCimg() }" width="100px" height="100px"></td>
										<td class="spqd-mc">${s.getGname() } ${s.getConname() }（${s.getCname() }）</td>
										<td class="spqd-jd">${s.getOjifen() }</td>
										<td class="spqd-dj"><fmt:formatNumber value="${s.getGjiage() }" type="currency" pattern="￥.00"/></td>
										<td class="spqd-sl">${s.getDoshu() }</td>
										<td class="spqd-xj"><fmt:formatNumber value="${s.getGjiage() }" type="currency" pattern="￥.00"/></td>
										<td class="spqd-zt">
											<c:if test="${s.getOstates()==0}">
												待付款
											</c:if>
											<c:if test="${s.getOstates()==1}">
												待发货
											</c:if>
											<c:if test="${s.getOstates()==2}">
												已取消
											</c:if>
											<c:if test="${s.getOstates()==3}">
												已退货
											</c:if>
											<c:if test="${s.getOstates()==4}">
												待收货
											</c:if> 
											<c:if test="${s.getOstates()==5}">
												<c:if test="${s.getDstate()==0 }">
													待评论
												</c:if>
												<c:if test="${s.getDstate()==1 }">
													已评论
												</c:if>
											</c:if>  
											<c:if test="${s.getOstates()==6}">
												已评论
											</c:if> 
											<c:if test="${s.getOstates()==7}">
												退款中
											</c:if>
											<c:if test="${s.getOstates()==8}">
												已退款
											</c:if>
											<c:if test="${s.getOstates()==9}">
												退货中
											</c:if>
										</td>
									</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
					<!-- 总价 -->
					<%-- <div class="zj">
					<c:forEach items="${list1 }" var="l">
						<c:if test="${l.getOstates()==0 }">
							<div class="zj-zfze">
								<span>支付总额：</span>
								<span class="zj-jq">￥${l.getOzongjia() }</span>
							</div>
							<div class="zj-dfje">
								<span>待付金额：</span>
								<span class="zj-je">￥${l.getOzongjia() }</span>
							</div>
							<div class="zj-an">
								<input type="button" name="" id="zf" value="立即支付" />
							</div>
						</c:if>
						<c:if test="${l.getOstates()==1 }">
							<div class="zj-zfze">
								<span>支付总额：</span>
								<span class="zj-jq">￥${l.getOzongjia() }</span>
							</div>
							<div class="zj-dfje">
								<span>已付金额：</span>
								<span class="zj-je">￥${l.getOzongjia() }</span>
							</div>
							<div class="zj-an">
								<input type="button" name="" id="xg" value="修改订单" />
							</div>
						</c:if>
						<c:if test="${l.getOstates()==4 }">
							<div class="zj-an">
								<input type="button" name="" id="qr" value="确认收货" />
							</div>
						</c:if>
					</c:forEach>
					</div> --%>
					
					
				</div>
			</div>
		</div>
		<div class="bianji">
		
		</div>
		<!-- 尾部 -->
		<jsp:include page="hwtail.jsp"></jsp:include>
		<!-- 尾部结束 -->
	</body>
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/personal.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hwhead.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/settlement.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function() {
			$("#xg").click(function() {
				var ono=$(this).parent().find("span").html();
				location.href="xhd_xiugaiservlet?ono="+ono;
			});
			$("#zf").click(function() {
				var ono=$(this).parent().find("span").html();
				//alert(ono);
				location.href="checkstandservlet?ono="+ono;
			});
			$("#qx").click(function() {
				var ono=$(this).parent().find("span").html();
				location.href="xhd_qxddservlet?ono="+ono;
			});
			$("#qr").click(function() {
				var ono=$(this).parent().find("span").html();
				location.href="xhd_shouhuoservlet?ono="+ono;
			}); 
			$("#th").click(function() {
				var ono=$(this).parent().find("span").html();
				
				location.href="xhd_tuihuoservlet?ono="+ono;
			});
			$("#tk").click(function() {
				var ono=$(this).parent().find("span").html();
				location.href="xhd_tuikuanservlet?ono="+ono;
			});
			$("#qt").click(function() {
				var ono=$(this).parent().find("span").html();
				location.href="xhd_qxthservlet?ono="+ono;
			});
			$("#qk").click(function() {
				var ono=$(this).parent().find("span").html();
				location.href="xhd_qxtkservlet?ono="+ono;
			});
		});	
	</script>
</html>
