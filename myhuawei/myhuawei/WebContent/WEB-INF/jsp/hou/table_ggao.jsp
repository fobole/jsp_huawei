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
	.xia,.shang{
		cursor: pointer;
	}
	.sss{
		height: 60px;
	}
	.ggao-tijiao{
			margin-left: 210px;
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
            <li class="nav-item nav-item-has-subnav active open">
              <a href="javascript:void(0)"><i class="mdi mdi-comment-alert-outline"></i>广告管理</a>
              <ul class="nav nav-subnav">
                <li class="active"> <a href="table_ggaoservlet">广告管理</a> </li>
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
              <!-- 新增按钮 -->
              <div class="toolbar-btn-action">
              	<h4>广告管理 <a class="btn btn-primary m-r-5 an-jiagg" href="#!"><i class="mdi mdi-plus"></i> 新增</a></h4>
              </div>
        				
            </div>
            <div class="card-body">
              
              <div class="table-responsive">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>广告编号</th>
					<th>广告图</th>
                      <th>广告内容</th>
                      <th>状态</th>
                      <th>操作</th>
                    </tr>
                  </thead>
                  <tbody>
                  		<c:forEach items="${page.rows }" var="p">
                  			<tr>
		                      <td>
		                        ${p.pid }
		                      </td>
		                      <td>
		        							<img class="goods-img1" src="${p.pname }" >
		        						</td>
		                      <td>${p.gname }</td>
		                      <td>
								<c:if test="${p.cgg==2 }">
									<span class="label label-danger">下架中</span>
								</c:if>
								<c:if test="${p.cgg==1 }">
									<span class="label label-success">上架中</span>
								</c:if>
							</td>
		                      <td>
		                      <c:if test="${p.cgg==1 }">
		                      	<div class="toolbar-btn-action">
		                          <a  onclick="js_method(${p.getPid() })"  class="btn btn-info m-r-5" href="#!"><i class="mdi mdi-battery-charging-20"></i>下架</a>
		                        </div>
		                      </c:if>
		                      <c:if test="${p.cgg==2 }">
		                      	<div class="toolbar-btn-action">
		                          <a onclick="js_method2(${p.pid })"  class="btn btn-purple m-r-5" href="#!"><i class="mdi mdi-battery-charging-20"></i>上架</a>
		                        </div>
		                      </c:if>
		                        
		                      </td>
		                    </tr>
                  		</c:forEach>
                    <!--  -->
                  </tbody>
                </table>
              </div>
              <ul class="pagination">
                <li><a class="shang">«</a></li>
                	<m:pages_houtai url_houtai="table_ggaoservlet" page_houtai="${page }"/>
                <li><a class="xia">»</a></li>
              </ul>
               
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
<script src="stylejs/h/layer/common.js" type="text/javascript" charset="utf-8"></script>
<script src="stylejs/h/js/cupload.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript"  src="stylejs/h/public/index.js"></script>
<script type="text/javascript">
	/* 下架广告  */
	function js_method(pid){
		var current=$('#yema').find("a").html();
		layer.confirm('你确定要下架 ？？？', {
			title: ['下架轮播广告', 'font-size:14px;'],
			 skin: 'layui-layer-lan',
            btn: ['确定', '取消'] //按钮
        }, function(){
            //layer.msg('冻结成功', {icon: 'success'});
            //console.log(aid);
            location.href="hou_gai_ggao_state_servlet?pid="+pid+"&current="+current;
        }, function(){
            
        });
	}
	/* 上架广告  */
	function js_method2(pid){
		var current=$('#yema').find("a").html();
		layer.confirm('你确定要上架 ？？？', {
			title: ['上架轮播广告', 'font-size:14px;'],
			skin: 'layui-layer-molv', //样式类名
            btn: ['确定', '取消'] //按钮
        }, function(){
            //layer.msg('冻结成功', {icon: 'success'});
            //console.log(aid);
            location.href="hou_gai_ggao_state_servlet2?pid="+pid+"&current="+current;
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
			location.href="table_ggaoservlet?current="+ym;
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
			location.href="table_ggaoservlet?current="+ym;
		}else{
			layer.msg('已经是第一页了！');
		}
		
	});
	//layer
	//自定页
	$(".an-jiagg").click(function(){
		//页面层
		layer.open({
			title: ['添加广告', 'font-size:18px;'],
		  type: 1,
		  // skin: 'layui-layer-rim', //加上边框
		  area: ['520px', '450px'], //宽高
		  content: '<div class="ggao-tcc"><label>商品大类</label>'
			+'<div class="form-controls"><select name="type" class="form-control btname" id="type"></select></div></div>'
			+'<div class="ggao-tcc"><label>商品小类</label>'
			+'<div class="form-controls"><select name="type" class="form-control smname" id="type"><option value="0">请选择</option></select></div></div>'
			+'<div class="ggao-tcc"><label>商品名称</label>'
			+'<div class="form-controls"><select name="type" class="form-control gname" id="type"><option value="0">请选择</option></select></div></div>'
			+'<div class="ggao-tcc sss"><label>广告图片</label><div id="cupload"><div class="upload imgLog"><span><i class="glyphicon glyphicon-open"></i>上传广告</span></div></div></div>'
			+'<button class="btn btn-primary ajax-post ggao-tijiao">确 定 添 加</button><img id="aimg" width="100"  height="100" src="">'
		
		});
		var img1 = new ImgUpload('.imgLog',210,55,55);
        
	    $(document).on('change',".imgLog input",function(e){
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
		    console.log(window.URL.createObjectURL(e.target.files[0]))
            
		    img1.setSpan(this)
		})
		
		
		//加载大类
		$(".btname").load("btname_josn_servlet",function(data){});
		// 加载小类
		$('.btname').change(function(){
			var btid=$(this).val();
			console.log(btid);
			$(".smname").load("btname_josn_servlet2?btid="+btid,function(data){});
		});
		// 加载商品
		$('.smname').change(function(){
			var smid=$(this).val();
			console.log(smid);
			$(".gname").load("btname_josn_servlet3?smid="+smid,function(data){});
		});
		
		$(".ggao-tijiao").click(function() {
			
	        var btid=$('.btname').val();
	        var smid=$('.smname').val();
	        var gid=$('.gname').val();
	        if(btid==0){
	        	layer.msg('请选择大类', {time: 1000, icon:6});
	        	return;
	        }
	        if(smid==0){
	        	layer.msg('请选择小类', {time: 1000, icon:6});
	        	return;
	        }
	        if(gid==0){
	        	layer.msg('请选择商品', {time: 1000, icon:6});
	        	return;
	        }
	        
	        var src = $("#aimg").attr("src");
			if(src == "" || src == null ){
				layer.msg("图片不能为空 请选择图片", {time: 1000, icon:6});
				return;
			}
			console.log(btid,smid,gid,src);
	        
	        $.ajax({
				url:"tianjia_ggao_servlet?",//访问路径
				data:{
					gid:gid,
					pimg:src,
				},
				type:"post",//请求类型
				async:true,//是否同步请求
				error:function(){
					//访问错误会执行这个方法
					//404，500，405
				},
				success:function(data){
					if(data==0){
						layer.msg("添加成功！！！", {time: 500, icon:6},function(){
							location.href="table_ggaoservlet";
						});
					}
					
				}
			}); 
	    });
	});
	
	
	/* 搜索 */
	$(".sou").click(function() {
		var parma=$('input[name="keyword"]').val();
		console.log(parma);
		location.href="table_ggaoservlet?parma="+parma;
	});
	
});
</script>

</body>
</html>