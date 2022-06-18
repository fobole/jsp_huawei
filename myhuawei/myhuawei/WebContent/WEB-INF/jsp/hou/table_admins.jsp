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
<link rel="stylesheet" type="text/css" href="stylejs/h/public/index.css"/>
<style type="text/css">
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
	.xia,.shang{
		cursor: pointer;
	}

.kuan{
	/* width: 300px; */
}
		.admin_gai{
			/* float: right; */
		}
		
		.lyear-right-box {
    display: -webkit-box;
    /* display: flex; */
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
    flex-direction: column;
    background-color: #fff;
    width: 300px;
    max-width: calc( 100% - 50px);
    position: fixed;
    top: 0;
    bottom: 0;
    right: -300px;
    z-index: 999;
    -webkit-transform: translateZ(0);
    transform: translateZ(0);
    -webkit-transition: .3s ease;
    transition: .3s ease;
    -webkit-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-perspective: 1000;
    perspective: 1000;
    will-change: transform;
}
.lyear-right-box.lyear-right-box-sm {
	width: 220px;
	right: -220px
}
.lyear-right-box.lyear-right-box-lg {
	width: 420px;
	right: -420px
}
.lyear-right-box.lyear-right-box-xl {
	width: 640px;
	right: -640px
}
.lyear-right-box.lyear-right-box-xxl {
	width: 860px;
	right: -860px
}
.lyear-right-box.lyear-right-box-open {
	right: 0;
	-webkit-box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.08);
	box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.08);
}
.lyear-right-box-header {
    position: relative;
	padding: 0 20px;
	min-height: 68px !important;
	border-bottom: 1px solid #ebebeb
}
.lyear-right-box-header .lyear-right-box-close {
    position: absolute;
    top: 20px;
    right: 20px;
	margin-left: 16px;
	font-size: 16px;
    cursor: pointer;
}
.lyear-right-box-title {
	letter-spacing: .5px;
    line-height: 68px;
}
.lyear-right-box-body {
    height: -moz-calc(100% - 127px);
    height: -webkit-calc(100% - 127px);
    height: calc(100% - 127px);
    position: relative;
}
/*遮罩层*/
.lyear-right-box-backdrop {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 998;
    background-color: rgba(0, 0, 0, 0.5);
}
.p-20 {
    padding: 20px;
}
.lyear-right-box-footer {
	padding: 10px 20px;
	border-top: 1px solid #ebebeb
}



/* 添加员工  */
.yg-big{
	/* border: 1px solid red; */
}
.yg-touxiang{
	height: 65px;
}
.yg-touxiang .la1{
	display: inline-block;
	/* border: 1px solid red; */
	width: 80px;
	float: left;
	line-height: 35px;
	margin-left: 70px;
}
.yg-touxiang #cupload-update{
	float: left;
	/* border: 1px solid red; */
}
.yg-touxiang select{
	width: 300px;
}
.yg-touxiang input{
	width: 300px;
}
.yg-touxiang2{
	margin-top: 20px;
}
.yg-touxiang3{
	margin: 10px 0px 0px 200px;
}
.yg-touxiang4{
	margin: 10px 0px 0px 200px;
}


/*  修改样式 */
.gaia{
	margin-top: 20px;
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
				<li> <a href="#!">修改地址管理</a></li>
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
            <li class="nav-item nav-item-has-subnav active open">
              <a href="javascript:void(0)"><i class="mdi mdi-account-network"></i>用户管理</a>
              <ul class="nav nav-subnav">
                <li  class="active"> <a href="table_adminsservlet">后台账号</a> </li>
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
                <form class="pull-right search-bar" method="get" action="#!" role="form">
                  <div class="input-group">
                    
                    <input type="text" class="form-control" value="" name="keyword" placeholder="请输入名称">
          					<div class="input-group-btn">
          					  <input type="hidden" name="search_field" id="search-field" value="title">
          					  <button class="btn btn-primary dropdown-toggle sou" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
          						<i class="mdi mdi-magnify"></i> 搜索
          					  </button>
          					
          					</div>
          				  </div>
                </form>
                <div class="toolbar-btn-action">
                	<h4>员工管理 
                	
                	<c:if test="${admins.agrade==0 }">
	                        			<a class="btn btn-primary m-r-5 jia_users"><i class="mdi mdi-image-filter-vintage mdi-spin"></i> 添加</a>
	                </c:if>
                	 
                	 
                	 </h4>
                </div>
          			

          				
              </div>
              <div class="card-body">
                
                <div class="table-responsive">
                  <table class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>编号</th>
          				<th>头像</th>
                        <th>名称</th>
                        <th>性别</th>
						<!-- <th>账号</th>-->
						<th>密码</th> 
                        <th>权限</th>
                        <th>入职时间</th>
						<th>状态</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${page.rows }" var="p">
                      		<tr>
	                        <td>
	                        	<font class="text-danger"><strong class="aaaid">${p.aid }</strong></font>
	                        </td>
	                        <td>
	          					<img class="goods-img1" src="${p.atu }" >
	          				</td>
	                        <td>
	                        	<font class="text-info"><strong>${p.aname }</strong></font>
	                        </td>
	                        <td>
	          					<c:if test="${p.asex==0 }">
	          						男
	          					</c:if> 
	          					<c:if test="${p.asex==1 }">
	          						女
	          					</c:if> 
	          				
	          				</td>
	                        <!-- <td>
								17673244732-
	          				</td>
							 -->
							 <td>
								<%-- ${p.apwd.length() } --%>******
							</td>
							 
	                        <td>
	                        	<c:if test="${p.agrade==0 }">
	                        		<font class="text-success">超级管理员</font>
	                        	</c:if>
	                        	<c:if test="${p.agrade==1 }">
	                        		<font class="text-success">普通员工</font>
	                        	</c:if>
	                        	<c:if test="${p.agrade==2 }">
	                        		<font class="text-success">人事</font>
	                        	</c:if>
	                        	<c:if test="${p.agrade==3 }">
	                        		<font class="text-success">销售</font>
	                        	</c:if>
	                        </td>
	                        <td>
								<fmt:formatDate value="${p.addtime }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/>
							</td>
	                        <td>
	                        	<c:if test="${p.atates==0 }">
	                        		<span class="label label-primary">在职</span>
	                        	</c:if>
	                        	<c:if test="${p.atates==1 }">
	                        		<span class="label label-danger">不在职</span>
	                        	</c:if>
	                        	<c:if test="${p.atates==3 }">
	                        		<span class="label label-primary">在职</span>
	                        	</c:if>
							</td>
							
							<td class="kuan">
							<div class="toolbar-btn-action">
							<c:if test="${admins.agrade==0 }">
								<c:if test="${p.agrade!=0 }">
								<c:if test="${p.atates==0 }">
									
											<%-- onclick="js_method(${p.getAid() })" --%>
			                            	<a  onclick="js_method(${p.aid})"  class="btn btn-warning m-r-5 admins" ><i class="mdi mdi-block-helper"></i> 冻结</a>
			                       
									</c:if>
									<c:if test="${p.atates==1 }" var="zt">
								
			                        	<a onclick="js_method2(${p.aid})"  class="btn btn-primary m-r-5 admins2" ><i class="mdi mdi-block-helper"></i> 解冻</a>
			                         	
									</c:if>
								</c:if>
							</c:if>
							
								
								<c:if test="${admins.agrade==0 }">
	                        			<a class="btn btn-purple m-r-5 xiugai"><i class="mdi mdi-table-edit"></i> 修改</a>
	                        	</c:if>
								<!-- 修改 -->
								<div class="cbl">

								</div>
	                          
	                        </div>
	                        </td>
                     		</tr>
                      </c:forEach>
                    </tbody>
                  </table>
                </div>
                <ul class="pagination">
                  <li><a class="shang">«</a></li>
                  	<m:pages_houtai url_houtai="table_adminsservlet" page_houtai="${page }"/>
                  <li><a class="xia">»</a></li>
                </ul>
                 
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
<script src="stylejs/h/js/cupload.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript"  src="stylejs/h/public/index.js"></script>
<script type="text/javascript">
	//var aid=$(".aaaid").html();
	//console.log(aid);
	//$(".cbl").load("hou_cebianlan_servlet?aid="+aid,function(data){});
	
	/* $('.admin_gai').click(function() {
		//
		console.log(this);
		
	}); */
	/* 冻结用户  */
	function js_method(aid){
		var current=$('#yema').find("a").html();
		layer.confirm('你确定要冻结此用户 ？？？', {
			title: ['冻结后台用户', 'font-size:14px;'],
			 skin: 'layui-layer-lan',
            btn: ['确定', '取消'] //按钮
        }, function(){
            //layer.msg('冻结成功', {icon: 'success'});
            //console.log(aid);
            location.href="hou_gai_admins_state_servlet?aid="+aid+"&current="+current;
        }, function(){
            
        });
	}
	/* 解冻用户  */
	function js_method2(aid){
		var current=$('#yema').find("a").html();
		layer.confirm('你确定要解冻此用户 ？？？', {
			title: ['解冻后台用户', 'font-size:14px;'],
			skin: 'layui-layer-molv', //样式类名
            btn: ['确定', '取消'] //按钮
        }, function(){
            //layer.msg('冻结成功', {icon: 'success'});
            //console.log(aid);
            location.href="hou_gai_admins_state_servlet2?aid="+aid+"&current="+current;
        }, function(){
            
        });
	}
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
			location.href="table_adminsservlet?current="+ym;
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
			location.href="table_adminsservlet?current="+ym;
		}else{
			layer.msg('已经是第一页了！');
		}
		
	});
	
    $('.search-bar .dropdown-menu a').click(function() {
        var field = $(this).data('field') || '';
        $('#search-field').val(field);
        $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
        
        
    });
    
    
    
    
    /* 搜索 */
	$(".sou").click(function() {
		var parma=$('input[name="keyword"]').val();
		console.log(parma);
		location.href="table_adminsservlet?parma="+parma;
	});
    
});
</script>
<!-- 侧边栏 -->
<script type="text/javascript">
/*  */
$(document).ready(function(){
	/*  */
	
	$(".jia_users").click(function() { 
		layer.open({
			title: ['添加员工', 'font-size:18px;'],
		  type: 1,
		  //skin: 'layui-layer-rim', //加上边框 onsubmit="return pinglun();"
		  area: ['520px', '540px'], //宽高
		  content: '<form action="" method="post" id="uploadF"><div class="yg-big">'
				+'<div class="yg-touxiang yg-touxiang2"><label class="la1">员工头像</label><div id="cupload">  <div class="upload imgLog2"><span><i class="glyphicon glyphicon-open"></i>上传头像</span></div>  </div></div>'
				+'<div class="yg-touxiang"><label class="la1">员工类型</label><input class="form-control" type="text" name="aname" placeholder="请输入用户名.."></div>'
				+'<div class="yg-touxiang"><label class="la1">员工性别</label><select class="form-control" name="asex" id="type"><option value="0">男</option><option value="1">女</option></select></div>'
				+'<div class="yg-touxiang"><label class="la1">员工类型</label><select class="form-control" name="atype" id="type"><option value="1">普通员工</option>'
				+'<option value="2">人事</option><option value="3">销售</option><option value="0">超级管理员</option></select></div>'
				+'<div class="yg-touxiang"><label class="la1">员工密码</label><input class="form-control" type="password" name="apwd" placeholder="请输入密码.."></div>'
				+'<div class="yg-touxiang"><label class="la1">确认密码</label><input class="form-control" type="password"  name="apwds"  placeholder="请输入确认密码.."></div>'
				+'<input class="btn btn-primary ajax-post yg-touxiang3" type="button" name="" id="" value="确 定 添 加" /><img id="aimg" width="100"  height="100" src=""></div></form>'
				
		});
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
		
	    
	    
	    $(".yg-touxiang3").click(function(){
	    	var src = $("#aimg").attr("src");
			if(src == "" || src == null ){
				layer.msg("图片不能为空 请选择图片", {time: 1000, icon:6});
				return;
			}
			var aname=$('input[name="aname"]').val();
			var asex=$('select[name="asex"]').val();
			var atype=$('select[name="atype"]').val();
			var apwd=$('input[name="apwd"]').val();
			var apwds=$('input[name="apwds"]').val();
			console.log(apwd,apwds,asex,atype);
			if(aname=="" || aname==null){
				layer.msg('请填写用户名！', {time: 1000});
				return;
			}
			if(apwd=="" || apwd==null){
				layer.msg('请输入密码', {time: 1000});
				return;
			}
			if(apwds=="" || apwds==null){
				layer.msg('请输入确认密码', {time: 1000});
				return;
			}
			if(apwd!=apwds){
				layer.msg('密码不一致！！！', {time: 1000});
				return;
			}
			 $.ajax({
					url:"tianjia_admins_servlet",//访问路径
					data:{
						aimg:src,
						aname:aname,
						apwd:apwd,
						asex:asex,
						atype:atype,
					},
					type:"post",//请求类型
					async:true,//是否同步请求
					error:function(){
						//访问错误会执行这个方法
						//404，500，405
					},
					success:function(data){
						layer.msg("添加成功！！！", {time: 500, icon:6},function(){
							location.href="table_adminsservlet";
						});
					}
				});
			
		});
		
		
	});
	
	
	
	
	/* var aname=$('.aname').val();
    var asex=$('.asex').val();
    var apwd=$('.apwd').val();
    var apwds=$('.apwds').val();
    var agrade=$('.agrade').val();
    console.log(aname,asex,apwd,agrade);
   if(aname=="" || aname=null ||
    		apwd=="" || apwd=null
    		apwds=="" || apwds=null ){
    	layer.msg('请填写完整信息', {time: 2000, icon:3});
    }else{
    	
    } */
    
    /* admins_xiugai_josn_servlet */
    $('.xiugai').click(function() { 
    		var aid=$(this).parent().parent().parent().find(".aaaid").html();
    		console.log(aid);
    		layer.open({
    			title: ['修改员工信息', 'font-size:18px;'],
    		  type: 1,
    		  //skin: 'layui-layer-rim', //加上边框 onsubmit="return pinglun();"
    		  area: ['520px', '480px'], //宽高
    		  content: '<form><div class="yg-big1">'
    				+'</div></form>'
    				
    		});
    		$(".yg-big1").load("admins_xiugai_josn_servlet?aid="+aid,function(data){});
    });
    
});






/*  */
//大类提交
function jia_admins() {
	
	return true;
}













</script>
<script type="text/javascript">
/* function ImgUpload(node,width,height,linHeight){
	var _this = this;
	this._node = node;
	this.width = width + 'px';
	this.height = height + 'px';
	this.linHeight = linHeight + 'px';
	this.setCss();
	this.createFile();
}

ImgUpload.prototype.createFile = function(){
	$(this._node).append('<input type="file"/>')
}

ImgUpload.prototype.setCss = function(){
    $(this._node).css({
    	"width":this.width,
    	"height":this.height,
    	"line-height":this.linHeight,
    })
}

ImgUpload.prototype.setSpan = function(_this){
	$(_this).siblings().css("opacity",0);
} */
</script>
</body>
</html>