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
<link rel="shortcut icon" href="stylejs/h/img/华为1.png">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>修改地址管理</title>
<link rel="icon" href="favicon.ico" type="image/ico">
<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
<meta name="author" content="yinqi">
<link href="stylejs/h/css/bootstrap.min.css" rel="stylesheet">
<link href="stylejs/h/css/materialdesignicons.min.css" rel="stylesheet">
<link href="stylejs/h/css/style.min.css" rel="stylesheet">
<style>
.dono{
display:none;

}
.doname{
display:none;

}
.dophone{
display:none;

}
.doaddress{
display:none;

}
.did{
display:none;
}


</style>
</head>
  
<body>
<div class="lyear-layout-web">
  <div class="lyear-layout-container">
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
            
            <li class="nav-item nav-item-has-subnav  active open">
              <a href="javascript:void(0)"><i class="mdi mdi-package-variant"></i>订单管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_dingdanservlet">查看订单</a></li>
				<li  class="active"> <a href="table_gaidizhi_servlet">修改地址管理</a></li>
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
    						  <form class="pull-right search-bar" method="get" action="#!" role="form">
    						    <div class="input-group">
    						      
    						      <input type="text" class="form-control" value="" name="keyword" placeholder="请输入名称">
    						  	<div class="input-group-btn">
    						  	  <input type="hidden" name="search_field" id="search-field" value="title">
    						  	  <button class="btn btn-info dropdown-toggle sou" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
    						  		<i class="mdi mdi-magnify"></i>搜索
    						  	  </button>
    						  	
    						  	</div>
    						    </div>
    						  </form>
    						  <div class="toolbar-btn-action">
    											<h4>修改地址</h4>
    										</div>
    						</div>
    		              <div class="card-body">
    		                <table class="table table-bordered table-hover">
    		                  <thead>
    		                    <tr>
    		                     <th>修改地址编号</th>
    		                      <th>订单编号</th>
    		                     
    							  <th>收货人</th>
    							  <th>电话号码</th>
    							  <th>详细地址</th>
    							  <th>时间</th>
    							  <th>状态</th>
    							<th>操作</th>
    							  
    		                    </tr>
    		                  </thead>
    		                  <tbody>
    		                  <c:forEach items="${page.rows }" var="p">
    		                  <tr>
    		                      <td>
    								 ${p.did	 } 
    							  </td>
    		                      <td>
									   ${p.ono } 
								  </td>
    		                      <td>
    		                       ${p.dname } 
    		                       </td>
    		                      <td>
    		                       ${p.dphone } 
    		                      </td>
    							  <td>
    							   ${p.dadd } 
    							  </td>
    		                      <td>
    		                      
    		                       <fmt:formatDate value="${p.dtime }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/>
    		                       </td>
    		                       <td>
    		                       <c:if test="${p.dyes==0}">
    		                       	<span class="label label-pink">请确定修改</span>
    		                       </c:if>
    		                        <c:if test="${p.dyes==1}">
    		                        	<span class="label label-success">地址已完成修改</span>
    		                      
    		                       </c:if>
    		                       
    		                       </td>
    							  <td>
    							  	<div class="toolbar-btn-action">
    							  	<c:if test="${p.dyes==0}">
    							  	<a   class="btn btn-info m-r-5 quding-xiugai" href="#!"><i class="mdi mdi-battery-charging-20"></i> 确定修改
		                          <span class="dono">${p.ono }</span>
		                           <span class="doaddress">${p.dadd }</span>
		                           <span class="dophone">${p.dphone }</span>
		                           <span class="doname">${p.dname }</span>
		                            <span class="did">${p.did }</span>
		                          
		                          </a>
    							  	</c:if>
		                          
		                        </div>
    							  </td>
    							  
    		                    </tr>
    		                  </c:forEach>
    		                    
    		
    		                  </tbody>
    		                </table>
    							<ul class="pagination">
    							  <li class="shang"><span>«</span></li>
    							<m:pages_houtai url_houtai="table_gaidizhi_servlet" page_houtai="${page }"/>
    							  <li class="xia"><a href="#!">»</a></li>
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
<script type="text/javascript">
$(function(){
    $('.search-bar .dropdown-menu a').click(function() {
        var field = $(this).data('field') || '';
        $('#search-field').val(field);
        $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
    });
});
</script>


<script type="text/javascript">
$(function(){
	/* 下一页 */
	$(".xia").click(function() {
		var current=$('#yema').find("a").html();
		var ym=parseInt(current)+1;
		var ymmax=$('.ymmax').length;
		console.log(ymmax);
		if(ym<=ymmax){
			location.href="table_gaidizhi_servlet?current="+ym;
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
			location.href="table_gaidizhi_servlet?current="+ym;
		}else{
			layer.msg('已经是第一页了！');
		}
		
	});
	
    $('.search-bar .dropdown-menu a').click(function() {
        var field = $(this).data('field') || '';
        $('#search-field').val(field);
        $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
    });
	
	/* // 询问成
	$(".quding-layer").click(function(){
		layer.confirm('确定要下架这个商品吗？', {
		  btn: ['确定','取消'] //按钮
		}, function(){
		  layer.msg('下架成功！！', {icon: 6});
		  location.href="#";
		});
	}); */
	
	
	
    /* 搜索 */
	$(".sou").click(function() {
		var parma=$('input[name="keyword"]').val();
		console.log(parma);
		location.href="table_gaidizhi_servlet?parma="+parma;
	});
	//确定修改地址
	$(".quding-xiugai").click(function(){
		var ono=$(this).find(".dono").html();
		var oname=$(this).find(".doname").html();
		var oaddress=$(this).find(".doaddress").html();
		var ophone=$(this).find(".dophone").html();
		var did=$(this).find(".did").html();
		console.log(ono,ophone,oname,oaddress,did);
		layer.confirm('确定要修改这个订单地址吗？', {
			title: ['修改', 'font-size:18px;'],
		  btn: ['确定','取消'] //按钮
		}, function(){
			$.ajax({
				url:"table_quedinggdz_servlet?",//访问路径
				data:{
					ono:ono,
					ophone:ophone,
					oaddress:oaddress,
					oname:oname,
					did:did,
				},
				type:"post",//请求类型
				async:true,//是否同步请求
				error:function(){
					//访问错误会执行这个方法
					//404，500，405
				},
				success:function(data){
					layer.msg('修改成功！！', {time:500,icon: 6},function(){
						  location.href="table_gaidizhi_servlet";
						  
					  });
				}
			});
		  
		});
	}); 
	
	
	
});


</script>



</body>
</html>