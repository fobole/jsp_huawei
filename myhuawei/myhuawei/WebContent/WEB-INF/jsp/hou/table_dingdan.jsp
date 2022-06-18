<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="m" uri="http://cn.gso.com/jsp/jstl/mytag" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>首页 - 华为后台管理系统</title>
<!-- rel 默认样式图标 -->
<link rel="shortcut icon" href="stylejs/h/img/华为1.png">
<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
<meta name="author" content="yinqi">
<link href="stylejs/h/css/bootstrap.min.css" rel="stylesheet">
<link href="stylejs/h/css/materialdesignicons.min.css" rel="stylesheet">
<link href="stylejs/h/css/style.min.css" rel="stylesheet">
<!-- 自定义css -->
<link rel="stylesheet" type="text/css" href="stylejs/h/css/goods.css"/>
<style type="text/css">
		a{
			cursor: pointer;
		}
		
	.xia,.shang{
		cursor: pointer;
	}

	.xiangqing1{
		display: none;
	} 

</style>
</head>
  
<body>
<div class="lyear-layout-web">
  <div class="lyear-layout-container">
    <!--左侧导航-->
   <!--左侧导航-->
    <aside class="lyear-layout-sidebar">
      
      <!-- logo -->
      <div id="logo" class="sidebar-header">
        <a href="indexservlet"><img  class="ht-home-logo"  src="stylejs/h/img/huawei_logo.png" title="LightYear" alt="LightYear" /></a>
      </div>
      <div class="lyear-layout-sidebar-scroll"> 
        
        <nav class="sidebar-main">
          <ul class="nav nav-drawer">
            <li class="nav-item"> <a href="indexservlet"><i class="mdi mdi-home"></i>后台首页</a> </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-cart-outline"></i>商品管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_shopservlet">全部商品</a></li>
                <li> <a href="add_shopservlet">添加商品</a></li>
              </ul>
            </li>
            
            <li class="nav-item nav-item-has-subnav active open">
              <a href="javascript:void(0)"><i class="mdi mdi-package-variant"></i>订单管理</a>
              <ul class="nav nav-subnav">
                <li class="active"> <a href="table_dingdanservlet">查看订单</a></li>
				<li> <a href="table_gaidizhi_servlet">修改地址管理</a></li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-account"></i>会员管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_usersservlet">全部会员</a></li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-lock-pattern"></i>类别管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_typeservlet">类别管理</a> </li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-forum"></i>评价管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_pinglunservlet">评价管理</a></li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-comment-alert-outline"></i>广告管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_ggaoservlet">广告管理</a> </li>
              </ul>
            </li>
            <!-- <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-transcribe"></i>地址管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_dizhi.html">地址管理</a> </li>
              </ul>
            </li> -->
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-account-network"></i>用户管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_adminsservlet">后台账号</a> </li>
              </ul>
            </li>
          </ul>
        </nav>
        
        <div class="sidebar-footer">
          <p class="copyright">Copyright &copy; 2022. <a target="_blank" href="lunboservlet">点击进入华为商城首页</a> All rights reserved.</p>
        </div>
      </div>
      
    </aside>
    <!--End 左侧导航-->
    <!--End 左侧导航-->
    
    <!--头部信息-->
    <jsp:include page="h_head.jsp"></jsp:include>
    <!--End 头部信息-->
    
    <!--页面主要内容-->
    <main class="lyear-layout-content">
      
      <div class="container-fluid container-fluid1">
        
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-toolbar clearfix">
                <form class="pull-right search-bar" method="get" action="#!" role="form">
                  <div class="input-group">
                    
                    <input type="text" class="form-control" value="" name="keyword1" placeholder="请输入名称">
                	<div class="input-group-btn">
                	  <input type="hidden" name="search_field" id="search-field" value="title">
                	  <button class="btn btn-cyan dropdown-toggle sou" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
                		<i class="mdi mdi-magnify"></i> 搜索
                	  </button>
                	
                	</div>
                  </div>
                </form>
                <div class="toolbar-btn-action">
					<h4>全部订单</h4>
				</div>
              </div>
              <div class="card-body">
                
                <div class="table-responsive">
                  <table class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>订单编号</th>
                        <th>收货人姓名</th>
                        <th>收货人电话</th>
                        <th>收货地址</th>
                        <th>状态时间</th>
                        <th>订单总金额</th>
                        <th>订单状态</th>
						<th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${page.rows }" var="p">
                     	<tr  class="xiangqing">
                        <td class="ono1">${p.ono }</td>
                        <td>
                        	<font class="text-success">${p.oname }</font>
                        
                        </td>
                        <td>
                        	<font class="text-pink">${p.ophone }</font>
                        </td>
                        <td>
                        	<font class="text-purple">${p.oaddress }</font>
						</td>
                        <td>
                        	<fmt:formatDate value="${p.ocreatetime }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/>
                        </td>
						<td>
							<fmt:formatNumber value="${p.ozongjia }" type="currency" pattern="￥.00"/>
						</td>
                        <td>
							<c:if test="${p.ostates==0 }">
								<span class="badge bg-info">待付款</span>
							</c:if>
                        	<c:if test="${p.ostates==1 }">
								<span class="badge bg-success">待发货</span>
							</c:if>
							<c:if test="${p.ostates==2 }">
								<span class="badge bg-dark">已取消</span>
							</c:if>
							<c:if test="${p.ostates==3 }">
								<span class="badge bg-danger">已退货</span>
							</c:if>
							<c:if test="${p.ostates==4 }">
								<span class="badge bg-purple">待收货</span>
							</c:if>
							<c:if test="${p.ostates==5 }">
								<span class="badge bg-pink">待评论</span>
							</c:if>
							<c:if test="${p.ostates==6 }">
								<span class="badge bg-primary">已完成</span>
							</c:if>
							<c:if test="${p.ostates==7 }">
								<span class="badge bg-brown">申请退款中</span>
							</c:if>
							<c:if test="${p.ostates==8 }">
								<span class="badge bg-cyan">已退款</span>
							</c:if>
							<c:if test="${p.ostates==9 }">
								<span class="badge bg-yellow">申请退货中</span>
							</c:if>
                        </td>
                        <td>
                          <div class="btn-group">
                            <a class="btn btn-success m-r-5 dingdan-xiangqing dingdan1" href="#!"><i class="mdi mdi-arrow-down-bold-box-outline"></i>详情</a>
                            
                          	<c:if test="${p.ostates==1 }">
								<a class="btn btn-brown m-r-5 fahuo" href="#!"><i class="mdi mdi-android-debug-bridge"></i>
								<span style="display: none;">${p.ono }</span>
								发货</a>
							</c:if>
							<c:if test="${p.ostates==7 }">
								<a class="btn btn-yellow m-r-5 tuikuan" href="#!"><i class="mdi mdi-android-debug-bridge"></i>
								<span style="display: none;">${p.ono }</span>
								退款  </a>
								<a class="btn btn-danger m-r-5 jujuetuikuan" href="#!"><i class="mdi mdi-android-debug-bridge"></i>
								<span style="display: none;">${p.ono }</span>
								拒绝退款  </a>
							</c:if>
							<c:if test="${p.ostates==9 }">
								<a class="btn btn-purple m-r-5 tuihuo" href="#!"><i class="mdi mdi-android-debug-bridge"></i>
								退货 <span style="display: none;">${p.ono }</span>
								</a>
								<a class="btn btn-pink m-r-5 jujuetuihuo" href="#!"><i class="mdi mdi-android-debug-bridge"></i>
								拒绝退货 <span style="display: none;">${p.ono }</span>
								</a>
							</c:if>
							<%-- <c:if test="${p.ostates==4 }">
								<a class="btn btn-info m-r-5 querenshouhuo" href="#!"><i class="mdi mdi-android-debug-bridge"></i>
								确认收货 <span style="display: none;">${p.ono }</span>
								</a>
							</c:if> --%>
                          </div>
                        </td>
                      	</tr>
                      	<tr  class="xiangqing xiangqing1">
                            	 		
						    <td colspan="8">
						     <!-- 放订单详情 -->
						   	</td>
								  		
						</tr>
                     </c:forEach>
                    </tbody>
                  </table>
                </div>
                <ul class="pagination">
                  <li><a class="shang">«</a></li>
                  		<m:pages_houtai url_houtai="table_dingdanservlet" page_houtai="${page }"/>
                  <li><a class="xia">»</a></li>
                </ul>
       
              </div>
            </div>
          </div>
			          
        </div>
        <!-- 订单详情 -->
        			
			        
				        <!-- <div class="row xq1" style="display: none;" >
				          
				         	
				        </div> -->
				        
				      
      </div>
	  
      
    </main>
    <!--End 页面主要内容-->
  </div>
</div>

<script type="text/javascript" src="stylejs/h/js/jquery.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/bootstrap.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/main.min.js"></script>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
$(function(){
	$(".dingdan1").click(function(){
		var big=$(this).parent().parent().parent().index();
		console.log(big);
		$(".xiangqing:eq("+(big+1)+")").unbind().toggle();
		//var btid=$(this).parent().parent().parent().find(".btid").html();
		//console.log(btid);
		// $(".big_type_tr1:eq("+(big+1)+")>td").load("ht_smail_servlet?btid="+btid,function(data){});
		var ono=$(this).parent().parent().parent().find(".ono1").html();
		console.log(ono);
		$(".xiangqing:eq("+(big+1)+")>td").load("hou_dingdan_xiangqing_servlet?ono="+ono,function(data){});
	});
	
	
	
	
	/* 下一页 */
	$(".xia").click(function() {
		var current=$('#yema').find("a").html();
		var ym=parseInt(current)+1;
		var ymmax=$('.ymmax').length;
		console.log(ymmax);
		if(ym<=ymmax){
			location.href="table_dingdanservlet?current="+ym;
		}else{
			layer.msg('已经是最后一页了！');
		}
		
	});
	/* 上一页 */
	$(".shang").click(function() {
		var current=$('#yema').find("a").html();
		var ym=parseInt(current)-1;
		var ymmax=$('.ymmax').length;
		console.log(ymmax);
		if(ym>0){
			location.href="table_dingdanservlet?current="+ym;
		}else{
			layer.msg('已经是第一页了！');
		}
		
	});
	/* $(".dingdan-xiangqing").click(function() {
		//console.log();
		$(".xq1").toggle();
		// 获取订单编号
		var ono=$(this).parent().parent().parent().find(".ono1").html();
		console.log(ono);
		$(".xq1").load("hou_dingdan_xiangqing_servlet?ono="+ono,function(data){});
	}); */
    $('.search-bar .dropdown-menu a').click(function() {
        var field = $(this).data('field') || '';
        $('#search-field').val(field);
        $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
    });
	
	
    /* 搜索 */
	$(".sou").click(function() {
		var parma=$('input[name="keyword1"]').val();
		console.log(parma);
		location.href="table_dingdanservlet?parma="+parma;
	});
    
    
	/* 发货 */
	//$(".").click();
	$(".fahuo").click(function () {
		var current=$('#yema').find("a").html();
		console.log($(this).find("span").html())
		var ono=$(this).find("span").html();
		$.ajax({
			url:"fahuo_servlet",//访问路径
			data:{
				ono:ono,
			},
			type:"post",//请求类型
			async:true,//是否同步请求
			error:function(){
				//访问错误会执行这个方法
				//404，500，405
			},
			success:function(data){
				if(data==1){
					layer.msg('发货成功', {time: 800, icon:6},function(){
						location.href='table_dingdanservlet?current='+current;
					});	
				}if(data==2){
					layer.msg('发货失败', {time: 800, icon:5},function(){
						location.href='table_dingdanservlet?current='+current;
					});	
				}
			}
		});
	});
	
	
	
	/* 退款   */
	$(".tuikuan").click(function () {
		var current=$('#yema').find("a").html();
		console.log($(this).find("span").html())
		var ono=$(this).find("span").html();
		$.ajax({
			url:"tuikuan_servlet",//访问路径
			data:{
				ono:ono,
			},
			type:"post",//请求类型
			async:true,//是否同步请求
			error:function(){
				//访问错误会执行这个方法
				//404，500，405
			},
			success:function(data){
				if(data==1){
					layer.msg('退款成功', {time: 800, icon:6},function(){
						location.href='table_dingdanservlet?current='+current;
					});	
				}if(data==2){
					layer.msg('退款失败', {time: 800, icon:5},function(){
						location.href='table_dingdanservlet?current='+current;
					});	
				}
			}
		});
	});
	
	/* 退货  */
	$(".tuihuo").click(function () {
		var current=$('#yema').find("a").html();
		console.log($(this).find("span").html())
		var ono=$(this).find("span").html();
		$.ajax({
			url:"tuihuo_servlet",//访问路径
			data:{
				ono:ono,
			},
			type:"post",//请求类型
			async:true,//是否同步请求
			error:function(){
				//访问错误会执行这个方法
				//404，500，405
			},
			success:function(data){
				if(data==1){
					layer.msg('退货成功', {time: 800, icon:6},function(){
						location.href='table_dingdanservlet?current='+current;
					});	
				}if(data==2){
					layer.msg('退货失败', {time: 800, icon:5},function(){
						location.href='table_dingdanservlet?current='+current;
					});	
				}
			}
		});
	});
	
	
	/* 拒绝退款  */
	$(".jujuetuikuan").click(function () {
		var current=$('#yema').find("a").html();
		console.log($(this).find("span").html())
		var ono=$(this).find("span").html();
		$.ajax({
			url:"jujuetuikuan_servlet",//访问路径
			data:{
				ono:ono,
			},
			type:"post",//请求类型
			async:true,//是否同步请求
			error:function(){
				//访问错误会执行这个方法
				//404，500，405
			},
			success:function(data){
				if(data==1){
					layer.msg('已拒绝退款', {time: 800, icon:6},function(){
						location.href='table_dingdanservlet?current='+current;
					});	
				}/* if(data==2){
					layer.msg('退货失败', {time: 400, icon:5},function(){
						location.href='table_dingdanservlet';
					});	
				} */
			}
		});
	});
	
	/* 拒绝退货  */
	$(".jujuetuihuo").click(function () {
		var current=$('#yema').find("a").html();
		console.log($(this).find("span").html())
		var ono=$(this).find("span").html();
		$.ajax({
			url:"jujuetuihuo_servlet",//访问路径
			data:{
				ono:ono,
			},
			type:"post",//请求类型
			async:true,//是否同步请求
			error:function(){
				//访问错误会执行这个方法
				//404，500，405
			},
			success:function(data){
				if(data==1){
					layer.msg('已拒绝退货', {time: 800, icon:6},function(){
						location.href='table_dingdanservlet?current='+current;
					});	
				}/* if(data==2){
					layer.msg('退货失败', {time: 400, icon:5},function(){
						location.href='table_dingdanservlet';
					});	
				} */
			}
		});
	});
	
	
	
	/* 确认收货  */
	$(".querenshouhuo").click(function () {
		var current=$('#yema').find("a").html();
		console.log($(this).find("span").html())
		var ono=$(this).find("span").html();
		$.ajax({
			url:"queren_shouhuo_servlet",//访问路径
			data:{
				ono:ono,
			},
			type:"post",//请求类型
			async:true,//是否同步请求
			error:function(){
				//访问错误会执行这个方法
				//404，500，405
			},
			success:function(data){
				if(data==1){
					layer.msg('已确认买家收货', {time: 800, icon:6},function(){
						location.href='table_dingdanservlet?current='+current;
					});	
				}/* if(data==2){
					layer.msg('退货失败', {time: 400, icon:5},function(){
						location.href='table_dingdanservlet';
					});	
				} */
			}
		});
	});
    
    
});




</script>
</body>
</html>