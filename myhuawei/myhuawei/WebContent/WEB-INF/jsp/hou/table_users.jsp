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
	.xia,.shang{
		cursor: pointer;
	}
	.sou{
		left: -3px;
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
            
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-package-variant"></i>订单管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_dingdanservlet">查看订单</a></li>
				<li> <a href="table_gaidizhi_servlet">修改地址管理</a></li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav active open">
              <a href="javascript:void(0)"><i class="mdi mdi-account"></i>会员管理</a>
              <ul class="nav nav-subnav">
                <li class="active"> <a href="table_usersservlet">全部会员</a></li>
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
      
      <div class="container-fluid">
			<div class="row">
				
			          <div class="col-lg-12">
			            <div class="card">
							<div class="card-toolbar clearfix">
							 <form class="pull-right search-bar" method="get" action="table_usersservlet" role="form">
							    <div class="input-group">
							      
							      <input type="text" class="form-control" value="" name="keyword" placeholder="请输入名称">
							  	<div class="input-group-btn">
							  	  <input type="text" name="search_field" id="search-field" value="title">
							  	  
							  	  <button class="btn btn-cyan dropdown-toggle sou" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
							  		<i class="mdi mdi-magnify"></i> 搜索
							  	  </button>
							  		
							  	</div>
							    </div>
							  </form>
							  <div class="toolbar-btn-action paixv1">
									<h4>全部会员
				                      </h4>
								</div>
							</div>
			              <div class="card-body">
			                <table class="table table-bordered table-hover">
			                  <thead>
			                    <tr>
			                    	<th>编号</th>
			                      <th>头像</th>
			                      <th>昵称</th>
			                      <th>性别</th>
								  <!--  -->
								  <!-- <th>会员等级</th>
								  <th>会员积分</th> -->
									<th>电话号码</th>
									<th>密码</th>
									<th>注册时间</th>
									<th>账号状态</th>
									<th>操作</th>
			                    </tr>
			                  </thead>
			                  <tbody>
			                  	<c:forEach items="${page.rows }" var="p">
			                  		<tr>
			                  		<td>${p.uid }</td>
			                      <td>
									  <img class="goods-img1" src="${p.uimg }" >
								  </td>
			                      <td>${p.getUname() }</td>
			                      <td>
			                      	<c:if test="${p.usex==0 }">
			                      		保密
			                      	</c:if>
			                      	<c:if test="${p.usex==1 }">
			                      		男
			                      	</c:if>
			                      	<c:if test="${p.usex==2 }">
			                      		女
			                      	</c:if>
			                      </td>
			          
								  <td>${p.uphone }</td>
			                      <%-- <td>${p.getUjifen() }</td>
			                       --%>
			                      <td>********</td>
			                      <td>
										<fmt:formatDate value="${p.uregtime }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/>
								</td>
								  <td>
								  	<c:if test="${p.ustate==0 }">
								  		<span class="label label-success">正常</span>
								  	</c:if>
								  	<c:if test="${p.ustate==1 }">
								  		<span class="label label-dark">冻结中</span>
								  	</c:if>
								  
								  </td>
			                      <td>
			                      <c:if test="${p.ustate==0 }">
								  		<div class="toolbar-btn-action">
									   		<a onclick="js_method(${p.uid })"  class="btn btn-pink m-r-5" href="#!"><i class="mdi mdi-palette"></i> 冻结</a>			
									  	</div>
								  	</c:if>
								  	<c:if test="${p.ustate==1 }">
								  		<div class="toolbar-btn-action">
									   		<a onclick="js_method2(${p.uid })"  class="btn btn-info m-r-5" href="#!"><i class="mdi mdi-palette"></i> 解冻</a>			
									  	</div>
								  	</c:if>
									  
								  </td>
			                    </tr>
			                  	
			                  	</c:forEach>
			                  
			                  
			                    <!--  -->
			
			                  </tbody>
			                </table>
								<ul class="pagination">
								  	<li><a class="shang">«</a></li>
		                  				<m:pages_houtai url_houtai="table_usersservlet" page_houtai="${page }"/>
		                  			<li><a class="xia">»</a></li>
								</ul>
			                </div>
							
							
			                
			              </div>
			            </div>
			          </div>
			        </div>
        
        
        
      </div>
      
    </main>
    <!--End 页面主要内容-->
  </div>
</div>

<script type="text/javascript" src="stylejs/h/js/jquery.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/bootstrap.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/main.min.js"></script>
<script src="stylejs/h/layer/layer.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	/*   */
	function js_method(uid){
		var current=$('#yema').find("a").html();
		layer.confirm('你确定要冻结此会员 ？？？', {
			title: ['冻结会员', 'font-size:14px;'],
			 skin: 'layui-layer-lan',
            btn: ['确定', '取消'] //按钮
        }, function(){
            //layer.msg('冻结成功', {icon: 'success'});
            //console.log(aid);
            layer.msg("冻结成功", {time: 500, icon:6},function(){
            	location.href="hou_gai_users_state_servlet?uid="+uid+"&current="+current;
			});

            
        }, function(){
            
        });
	}
	/*   */
	function js_method2(uid){
		var current=$('#yema').find("a").html();
		layer.confirm('你确定要解冻此会员 ？？？', {
			title: ['解冻会员', 'font-size:14px;'],
			skin: 'layui-layer-molv', //样式类名
            btn: ['确定', '取消'] //按钮
        }, function(){
            //layer.msg('冻结成功', {icon: 'success'});
            //console.log(aid);
            layer.msg("冻结成功", {time: 500, icon:1},function(){
            	 location.href="hou_gai_users_state_servlet2?uid="+uid+"&current="+current;
			});

           
        }, function(){
            
        });
	}
</script>
<script type="text/javascript">
$(function(){
    $('.search-bar .dropdown-menu a').click(function() {
        var field = $(this).data('field') || '';
        $('#search-field').val(field);
        $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
    });
    /* 下一页 */
	$(".xia").click(function() {
		var current=$('#yema').find("a").html();
		var ym=parseInt(current)+1;
		var ymmax=$('.ymmax').length;
		console.log(ymmax);
		if(ym<=ymmax){
			location.href="table_usersservlet?current="+ym;
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
			location.href="table_usersservlet?current="+ym;
		}else{
			layer.msg('已经是第一页了！');
		}
		
	});
	
	
	/* s */
	/* 搜索 */
	$(".sou").click(function() {
		var parma=$('input[name="keyword"]').val();
		console.log(parma);
		location.href="table_usersservlet?parma="+parma;
	});
});
</script>
</body>
</html>