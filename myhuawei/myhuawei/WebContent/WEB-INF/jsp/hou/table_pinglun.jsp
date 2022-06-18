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
	.xia,.shang{
		cursor: pointer;
	}
	.sss{
		height: 60px;
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
            <li class="nav-item nav-item-has-subnav active open">
              <a href="javascript:void(0)"><i class="mdi mdi-forum"></i>评价管理</a>
              <ul class="nav nav-subnav">
                <li class="active"> <a href="table_pinglunservlet">评价管理</a></li>
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
                <form class="pull-right search-bar" method="get" action="#!" role="form">
                  <div class="input-group">
                    
                    <input type="text" class="form-control" value="" name="keyword" placeholder="请输入名称">
                	<div class="input-group-btn">
                	  <input type="hidden" name="search_field" id="search-field" value="title">
                	  <button class="btn btn-cyan dropdown-toggle sou" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
                		<i class="mdi mdi-magnify"></i> 搜索
                	  </button>
                	
                	</div>
                  </div>
                </form>
                <div class="toolbar-btn-action">
					<h4>评价管理</h4>
                </div>
              </div>
              <div class="card-body">
                
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th>评论编号</th>
                        <th>商品图片</th>
                        <th>商品名称</th>
                        <th>用户</th>
                        <th>评论内容</th>
                        <th>评论图</th>
                        <th>评论时间</th>
                        <th>回复内容</th>
                        <th>回复图</th>
                        <th>回复时间</th>
                        <th>回复人</th>
                        <th>操作</th>
                      </tr>
                    </thead>
                    <tbody>
                    	
                    	<c:forEach items="${page.rows}" var="p">
                    		<tr>
		                        <td>
		                          <span class="cmid">${p.cmid }</span>
		                        </td>
		                        <td>
									<img class="goods-img1" src="${p.gtu }" >
								</td>
		                        <td>
									${p.gname } 
								</td>
		                        <td>
									${p.uname }
								</td>
								<td>
									${p.cmnr }
								</td>
		                        <td>
									<img class="goods-img1" src="${p.cmimg }" >
								</td>
								<td>
		                        	<fmt:formatDate value="${p.cmtime }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/>
									
								</td>
		                        <td>
									${p.rnr }
								</td>
		                        <td>
									<img class="goods-img1" src="${p.rimg }" >
								</td>
		                        <td>
		                        	<fmt:formatDate value="${p.rtime }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/>
									
								</td>
								<td>
									${p.aname }
								</td>
		                        <td>
									<div class="toolbar-btn-action">
									  
									  <a class="btn btn-success m-r-5 dian-pinglun1" href="#!"><i class="mdi mdi-check"></i>回复</a>
																
									</div>
		                        </td>
		                      </tr>
                    	</c:forEach>
                      	<%-- <c:forEach items="${page.rows}" var="p">
                    		<tr>
		                        <td>
		                          <span class="cmid">2</span>
		                        </td>
		                        <td>
									<img class="goods-img1" src="${p.getCmimg() }" >
								</td>
		                        <td>
									${p.getGname() } 
								</td>
		                        <td>
									${p.getUname() }
								</td>
		                        <td>
									${p.getCmnr() }
								</td>
		                        <td>
									<img class="goods-img1" src="${p.getRimg() }" >
								</td>
		                        <td>
		                        	<fmt:formatDate value="${p.getCmtime() }" type="date" pattern="yyyy-MM-dd HH:mm"/>
									
								</td>
		                        <td>
									<div class="toolbar-btn-action">
									  
									  <a class="btn btn-success m-r-5 dian-pinglun1" href="#!"><i class="mdi mdi-check"></i>回复</a>
																
									</div>
		                        </td>
		                      </tr>
                    	</c:forEach> --%>
                    </tbody>
                  </table>
                </div>
                <ul class="pagination">
                  	<li><a class="shang">«</a></li>
           				<m:pages_houtai url_houtai="table_pinglunservlet" page_houtai="${page }"/>
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

<!-- 回复页面 -->
<!-- <div class="huifu">
	<div class="col-md-12" >
	  <div class="card" >
	    
	    <div class="card-header"><h4 class="juzhong">回复评论</h4></div>
	    <div class="card-body">
	      <div class="table-responsive">
	        <table class="table-condensed">
	          <thead>
	            <tr>
	            </tr>
	          </thead>
	          <tbody>
	            <tr>
	            
	              <td>
					  <div class="form-group col-md-12">
					                      <label for="seo_description">会员评论</label>
					                      <textarea class="form-control" id="seo_description" name="seo_description" rows="5" value="" placeholder="描述"></textarea>
					</div>
				  </td>
				  <td>
					  <div class="shangchuan">
					  	<img src="img/1.png" >
					  </div>
				  </td>
				  <td>
					  <div class="form-group col-md-12">
					                        <label for="seo_description">我的回复</label>
					                        <textarea class="form-control" id="seo_description" name="seo_description" rows="5" value="" placeholder="描述"></textarea>
					  </div>
				  </td>
				  <td>
					  
					  <div class="shangchuan">
							点击添加图片
					  </div>
					  
				  </td>
	            </tr>
				<tr>
	              <td>
					   &nbsp;&nbsp;&nbsp; <button class="btn btn-primary" type="submit">确定回复</button>&nbsp;
					   
					   <button class="btn btn-primary" type="submit">取消</button>
	
					
				  </td>
	            </tr>
	          </tbody>
	        </table>
	      </div>
	      
	      
	    </div>
	    
	  </div>
	</div>
</div> -->


<script type="text/javascript" src="stylejs/h/js/jquery.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/bootstrap.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/main.min.js"></script>
<script src="stylejs/h/layer/layer.js" type="text/javascript" charset="utf-8"></script>
<script src="stylejs/h/layer/common.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript"  src="stylejs/h/public/index.js"></script>
<script type="text/javascript">
$(function(){
    /* $('.search-bar .dropdown-menu a').click(function() {
        var field = $(this).data('field') || '';
        $('#search-field').val(field);
        $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
    }); */
    /* 下一页 */
	$(".xia").click(function() {
		var current=$('#yema').find("a").html();
		var ym=parseInt(current)+1;
		var ymmax=$('.ymmax').length;
		console.log(ymmax);
		if(ym<=ymmax){
			location.href="table_pinglunservlet?current="+ym;
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
			location.href="table_pinglunservlet?current="+ym;
		}else{
			layer.msg('已经是第一页了！');
		}
		
	});
	
	// 自己写的jq
	$(".dian-pinglun1").click(function(){
		// layer.alert('内容')
		// //询问框
		// layer.confirm('确定删除这条记录？', {
		//   btn: ['确定','取消'] //按钮
		// }, function(){
		//   layer.msg('删除成功！！', {icon: 1});
		// });
		//页面层
		layer.open({
			title: ['回复评论', 'font-size:18px;'],
		  type: 1,
		  // skin: 'layui-layer-rim', //加上边框
		  area: ['520px', '350px'], //宽高
		  content: '<form><div class="huifu-di">'
		  +'<input type="text" name="cmid" id="" value="" style="display: none;" />'
		  +'<label>回复的话</label><textarea class="form-control" id="seo_description" name="seo" rows="5" value="" placeholder="回复内容"></textarea></div>'
		  +'<div class="huifu-di sss"><label>回复图片</label><div id="cupload"> <div class="upload imgLog2"><span><i class="glyphicon glyphicon-open"></i>回复图片</span></div>  </div></div>'
		  +'<input class="btn btn-primary ajax-post ggao-huifu" type="button" name="" id="" value="确 定 回 复" /><img id="aimg" width="100"  height="100" src=""></form>'
		
		
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
		
		$('input[name="cmid"]').val($(this).parent().parent().parent().find('.cmid').html());
		$(".ggao-huifu").click(function () {
			
			var cmid=$('input[name="cmid"]').val();
			var rnr=$('textarea[name="seo"]').val();
			if(rnr=="" || rnr==null){
				layer.msg('请填写回复内容！', {time: 1000, icon:6});
				return;
			}
			var src = $("#aimg").attr("src");
			if(src == "" || src == null ){
				layer.msg("图片不能为空 请选择图片", {time: 1000, icon:6});
				return;
			}
			console.log(rnr,cmid,src);
			$.ajax({
				url:"hou_huifu_pinglun_servlet",//访问路径
				data:{
					cmid:cmid,
					rnr:rnr,
					rimg:src,
				},
				type:"post",//请求类型
				async:true,//是否同步请求
				error:function(){
					//访问错误会执行这个方法
					//404，500，405
				},
				success:function(data){
					if(data==0){
						layer.msg("回复成功！！！", {time: 500, icon:6},function(){
							location.href="table_pinglunservlet";
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
		location.href="table_pinglunservlet?parma="+parma;
	});
	
});


function pinglun() {
	
	return true;
}
</script>
</body>
</html>