<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>新增商品页面</title>
<link rel="shortcut icon" href="stylejs/h/img/华为1.png">
<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
<meta name="author" content="yinqi">
<link href="stylejs/h/css/bootstrap.min.css" rel="stylesheet">
<link href="stylejs/h/css/materialdesignicons.min.css" rel="stylesheet">
<!--标签插件-->
<link rel="stylesheet" href="stylejs/h/js/jquery-tags-input/jquery.tagsinput.min.css">
<link href="stylejs/h/css/style.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="stylejs/h/css/goods.css"/>
<link rel="stylesheet" type="text/css" href="stylejs/h/css/goods_tianjia.css"/>
<link rel="stylesheet" type="text/css" href="stylejs/h/css/upload.css"/>
<!-- <link rel="stylesheet" type="text/css" href="css/proAdd.css"/> -->
<style type="text/css">
	.yschang{
		width: 300px;
	}
	#color-con-big11{
		min-height: 150px;
	}
	#zzzz,#zzzz2,#zzzz3{
		display: none;
	}
	.zzzz{
		width: 190px;
		height: 140px;
	}
	.color-con-big{
		position: relative;
	}
	.cha-color{
		display: block;
		position: absolute;
		top: 10px;
		right: 10px;
		
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
            <li class="nav-item nav-item-has-subnav  active open">
              <a href="javascript:void(0)"><i class="mdi mdi-cart-outline"></i>商品管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_shopservlet">全部商品</a></li>
                <li class="active"> <a href="add_shopservlet">添加商品</a></li>
              </ul>
            </li>
            
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-package-variant"></i>订单管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_dingdanservlet">查看订单</a></li>
				<li> <a href="">修改地址管理</a></li>
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
				  <div class="toolbar-btn-action">
					<h4>添加商品 <span id='ttt' ></span></h4>
				  </div>
								
				</div>
              <div class="card-body">
                
                <form id="addshop" action="tianjia_shop_servlet" method="post" class="row">
					<!-- 商品名称 -->
					<div class="shop-tianjia">
						<label class="label1">商品名称：</label>
						<input type="text" class="form-control gname" id="gname" name="gname" value="" placeholder="请输入商品名称" />
					</div>
					<div class="shop-tianjia1">
						<label class="label1">商品类别：</label>
						<select class="form-control btname" id="type">
						  <option value="0">请选择</option>
						 
						</select>
						<select class="form-control smname" name="smid" id="type">
						  <option value="0">请选择</option>
						</select>
					</div>
					<div class="shop-tianjia">
						<label class="label1">商品描述：</label>
						<input type="text" class="form-control gkey" id="title" name="gkey" value="" placeholder="关键词" />
					</div>
					<div class="shop-tianjia">
						<div class="form-group col-md-12">
		                    <label>上传主图</label>
		                    <div class="form-controls">
		                      
		                      <ul class="list-inline clearfix lyear-uploads-pic">
		                        <li class="col-xs-4 col-sm-3 col-md-2 zzzz" id="zzzz">
		                          <figure>
		                            <img class="zutu1" src="" alt="图片一">
									<input type="hidden" name="zutu1" id="" value="" />
		                            <figcaption>
		                              <a class="btn btn-round btn-square btn-danger dtyc" href="#!"><i class="mdi mdi-delete"></i></a>
		                            </figcaption>
		                          </figure>
		                        </li>
		                        
		                        <li class="col-xs-4 col-sm-3 col-md-2 zzzz" style="width: 200px">
		                          <a class="pic-add" onclick="ss();" href="#!" title="点击上传"></a>
		                        	<input onchange="zt(event);" id="fileInput1" class="form-control gaituinput" type="file" style="display:none;">
		                        </li>
		                      </ul>
		                    </div>
		                  </div>
	                  </div>
					<!-- 商品详情t -->
										<div class="shop-tianjia">
											<div class="form-group col-md-12">
											                    <label>上传商品详情图</label>
											                    <div class="form-controls">
											                      
											                      <ul class="list-inline clearfix lyear-uploads-pic yanse1">
											                        
											                        <li class="col-xs-4 col-sm-3 col-md-2 zzzz">
											                          <a class="pic-add" onclick="xiangtu();" href="#!" title="点击上传"></a>
																		<input  onchange="xxtu(event)" id="xxx" type="file" value="" style="display:none;">
																	</li>
											                      </ul>
											                    </div>
											                  </div>
										</div>
					
					<!-- 规格 -->
				 <div class="shop-tianjia">
						<div class="form-group col-md-12">
		                    <label>规格图</label>
		                    <div class="form-controls">
		                      
		                      <ul class="list-inline clearfix lyear-uploads-pic">
		                        <li class="col-xs-4 col-sm-3 col-md-2 zzzz" id="zzzz2">
		                          <figure>
		                            <img class="zutu2" src="" alt="图片一">
									<input type="hidden" name="zutu2" id="" value="" />
		                            <figcaption>
		                              <a class="btn btn-round btn-square btn-danger dtyc" href="#!"><i class="mdi mdi-delete"></i></a>
		                            </figcaption>
		                          </figure>
		                        </li>
		                        
		                        <li class="col-xs-4 col-sm-3 col-md-2 zzzz" style="width: 200px">
		                          <a class="pic-add" onclick="ss2();" href="#!" title="点击上传"></a>
		                        	<input onchange="zt2(event);" id="fileInput2" class="form-control gaituinput" type="file" style="display:none;">
		                        </li>
		                      </ul>
		                    </div>
		                  </div>
	                  </div>
					
					<!-- 包装 -->
					<div class="shop-tianjia">
						<div class="form-group col-md-12">
		                    <label>包装图</label>
		                    <div class="form-controls">
		                      
		                      <ul class="list-inline clearfix lyear-uploads-pic">
		                        <li class="col-xs-4 col-sm-3 col-md-2 zzzz" id="zzzz3">
		                          <figure>
		                            <img class="zutu3" src="" alt="图片一">
									<input type="hidden" name="zutu3" id="" value="" />
		                            <figcaption>
		                              <a class="btn btn-round btn-square btn-danger dtyc" href="#!"><i class="mdi mdi-delete"></i></a>
		                            </figcaption>
		                          </figure>
		                        </li>
		                        
		                        <li class="col-xs-4 col-sm-3 col-md-2 zzzz" style="width: 200px">
		                          <a class="pic-add" onclick="ss3();" href="#!" title="点击上传"></a>
		                        	<input onchange="zt3(event);" id="fileInput3" class="form-control gaituinput" type="file" style="display:none;">
		                        </li>
		                      </ul>
		                    </div>
		                  </div>
	                  </div>
					
					<div class="jia_jia  klcolor">
						<div class="yp-fuzhi">
							<label class="label1">颜色和图片</label>
							<label class="label2-ke">克隆</label>
							<!-- <button class="btn btn-cyan" type="button">复制</button> -->
						</div>
						
						<div class="color-con-big">
							<div class="color-con-bigdiv" id="color-con-big11">
								<div class="form-group col-md-12">
								                    <div class="form-group col-md-12">
								                    	<label>颜色名称:</label>
								                    	<input type="text" name="cname" class="form-control yschang" placeholder="请输入商品名称" />
								                    </div>
								                    <div class="form-controls col-md-12">
								                      
								                      <ul class="list-inline clearfix lyear-uploads-pic yanse2">
								                        
								                        <li class="col-xs-4 col-sm-3 col-md-2 zzzz">
								                          <a class="pic-add" id="add-pic-btn"  onclick="yanse()" href="#!" title="点击上传"></a>
															<input  onchange="yansetu(event)" id="yanse" type="file" value="" style="display:none;">
														</li>
								                      </ul>
								                    </div>
								                  </div>
								
							</div>
						</div>
						<!-- 颜色二 -->
						<div class="color-con-big">
							<div class="color-con-bigdiv" id="color-con-big11">
								<div class="form-group col-md-12">
								                    <div class="form-group col-md-12">
								                    	<label>颜色名称:</label>
								                    	<input type="text" name="cname2" class="form-control yschang" placeholder="请输入商品名称" />
								                    </div>
								                    <div class="form-controls col-md-12">
								                      
								                      <ul class="list-inline clearfix lyear-uploads-pic yanse22">
								                        
								                        <li class="col-xs-4 col-sm-3 col-md-2 zzzz">
								                          <a class="pic-add" id="add-pic-btn"  onclick="yanse2()" href="#!" title="点击上传"></a>
															<input  onchange="yansetu2(event)" id="yanse2" type="file" value="" style="display:none;">
														</li>
								                      </ul>
								                    </div>
								                  </div>
								
							</div>
							<img class="cha-color" src="stylejs/h/img/close.png" />
						</div>
						<!-- 颜色3 -->
						<div class="color-con-big">
							<div class="color-con-bigdiv" id="color-con-big11">
								<div class="form-group col-md-12">
								                    <div class="form-group col-md-12">
								                    	<label>颜色名称:</label>
								                    	<input type="text" name="cname3" class="form-control yschang" placeholder="请输入商品名称" />
								                    </div>
								                    <div class="form-controls col-md-12">
								                      
								                      <ul class="list-inline clearfix lyear-uploads-pic yanse23">
								                        
								                        <li class="col-xs-4 col-sm-3 col-md-2 zzzz">
								                          <a class="pic-add" id="add-pic-btn"  onclick="yanse3()" href="#!" title="点击上传"></a>
															<input  onchange="yansetu3(event)" id="yanse3" type="file" value="" style="display:none;">
														</li>
								                      </ul>
								                    </div>
								                  </div>
								
							</div>
							<img class="cha-color" src="stylejs/h/img/close.png" />
						</div>
					</div>
					
					
					<div class="jia_jia">
						<div class="yp-fuzhi">
							<label class="label1">配置版本</label>
							<!-- <label class="label2-ke">克隆</label> -->
							<!-- <button class="btn btn-cyan" type="button">复制</button> -->
						</div>
						
						<div class="color-con-big">
							<div class="color-con-bigdiv">
								<!-- 版本配置 -->
								<div class="cc-div2">
									<!-- <div class="">
										
									</div> -->
									<div class="cc-div2-d1">
										<label class="cc-label1">版本配置:</label>
										<input type="text" name='conname' class="form-control cc-input2" placeholder="请输入配置名称" />
									</div>
									<div class="cc-div2-d2">
										<label class="cc-label1">版本价格:</label>
										<input type="text" name='conjia' class="form-control cc-input2"  onkeyup="value=value.replace(/^\D*(\d*(?:\.\d{0,2})?).*$/g, '$1')"  placeholder="请输入名称" />
									</div>
									<div class="cc-div2-d3">
										<label class="cc-label1">版本库存:</label>
										<input type="text" name='kucun'  onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" class="form-control cc-input2" placeholder="请输入库存" />
									</div>
									<span class="cc-div2-jia">复制</span>
									<!-- <img class="cha-one" src="img/close.png" > -->
								</div>
								<!-- <div class="cc-div2">
									
								</div>
								<div class="cc-div2">
									
								</div>
								<div class="cc-div2">
									
								</div> -->
							</div>
							<!-- <div class="color-con-bigdiv1">
								<label class="label1">颜色详图</label>
							</div> -->
							
						</div>
					</div>
					
					
					<!--  -->
					<div class="form-group col-md-12 gnew">
					  <label for="status">是否是热销商品</label>
					  <div class="clearfix">
					    <label class="lyear-radio radio-inline radio-primary">
					      <input type="radio" name="ghot" value="0" ><span>是</span>
					    </label>
					    <label class="lyear-radio radio-inline radio-primary">
					      <input type="radio" name="ghot" value="1" checked><span>否</span>
					    </label>
					  </div>
					</div>
					
					<div class="form-group col-md-12 gnew">
					  <label for="status">是否是新商品</label>
					  <div class="clearfix">
					    <label class="lyear-radio radio-inline radio-primary">
					      <input type="radio" name="gnew" value="0" checked><span>是</span>
					    </label>
					    <label class="lyear-radio radio-inline radio-primary">
					      <input type="radio" name="gnew" value="1"><span>否</span>
					    </label>
					  </div>
					</div>
					
					
					
					
					
					<div class="form-group col-md-12">
					  <button type="button" class="btn btn-primary ajax-post" target-form="add-form">确 定</button>
					  <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
					</div>
                </form>
       
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
      
    </main>
    <!--End 页面主要内容-->
  </div>
</div>



<script src="stylejs/h/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
<!-- <script src="stylejs/h/js/proAdd.js" type="text/javascript" charset="utf-8"></script> -->
<script type="text/javascript" src="stylejs/h/js/jquery.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/bootstrap.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/perfect-scrollbar.min.js"></script>
<!--标签插件-->
<script src="stylejs/h/js/jquery-tags-input/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/main.min.js"></script>
<!-- <script src="stylejs/h/js/goods_tianjia.js" type="text/javascript" charset="utf-8"></script> -->
<script type="text/javascript">
		$(function() {
			//加载大类
			$(".btname").load("btname_josn_servlet",function(data){});
			// 加载小类
			$('.btname').change(function(){
				var btid=$(this).val();
				console.log(btid);
				$(".smname").load("btname_josn_servlet2?btid="+btid,function(data){});
			});
		});
</script>
<script type="text/javascript">
$(function(){
	
	
	/* 复制版本 */
	$(".cc-div2-jia").click(function(){
				var div=$('<div class="cc-div2"></div>');
				var div1=$('<div class="cc-div2-d1"></div>')
				var label=$("<label class='cc-label1'></label>");
				var input=$("<input type='text'  name='conname'  class='form-control cc-input2'  placeholder='请输入版本名称' />");
				var cha=$('<img class="cha-one" src="stylejs/h/img/close.png" />');
				//
				var jia=$('<div class="cc-div2-d2"><label class="cc-label1">版本价格:</label><input type="text" name="conjia"  class="form-control cc-input2" placeholder="请输入版本价格" /></div>');
				var kucun=$('<div class="cc-div2-d2"><label class="cc-label1">版本价格:</label><input type="text" name="kucun"  class="form-control cc-input2" placeholder="请输入版本库存" /></div>');
				//复制版本
				$(this).parent().parent().append(div.append(div1.append(label.html("版本配置:"))
				.append(input)).append(cha).append(jia).append(kucun));
				
				$(".cha-one").click(function(){
					$(this).parent().remove();
				});
			});
	
});
</script>
<script>


// 主图
function ss(){
	console.log($(this))
    var fileInput1=document.getElementById("fileInput1");
    fileInput1.click();
}

function zt(e){
	console.log($(this))
	const formData = new FormData();
	formData.append('file', e.target.files[0]);
	var zt=$(".zutu1");
	var zt1=$('input[name="zutu1"]');
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
            	zt.attr('src',res)
            	zt1.val(res);
            	//console.log(res);
            }
        }
    });
	$('#zzzz').show();
}
//规格图
function ss2(){
	console.log($(this))
    var fileInput1=document.getElementById("fileInput2");
    fileInput1.click();
}

function zt2(e){
	console.log($(this))
	const formData = new FormData();
	formData.append('file', e.target.files[0]);
	var zt=$(".zutu2");
	var zt1=$('input[name="zutu2"]');
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
            	zt.attr('src',res)
            	zt1.val(res);
            	//console.log(res);
            }
        }
    });
	$('#zzzz2').show();
}
//包装图
function ss3(){
	console.log($(this))
    var fileInput1=document.getElementById("fileInput3");
    fileInput1.click();
}

function zt3(e){
	console.log($(this))
	const formData = new FormData();
	formData.append('file', e.target.files[0]);
	var zt=$(".zutu3");
	var zt1=$('input[name="zutu3"]');
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
            	zt.attr('src',res)
            	zt1.val(res);
            	//console.log(res);
            }
        }
    });
	$('#zzzz3').show();
}





// 颜色主图

//详情图
function xiangtu(){
	console.log($(this))
    var fileInput1=document.getElementById("xxx");
    fileInput1.click();
}


function xxtu(e){
	var xt=$('#ttt');
	var ul=$(this);
	const formData = new FormData();
	formData.append('file', e.target.files[0]);
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
            	//xt.html(res);
            	//console.log(res);
            	var li=$('<li class="col-xs-4 col-sm-3 col-md-2">');
				var fig=$('<figure></figure>');
				var img=$('<img src="'+res+'" alt="图片一">');
				var input=$('<input type="hidden" name="xiangtu" id="" value="'+(res)+'" />');
				var figs=$('<figcaption></figcaption>')
				var a1=$('<a class="btn btn-round btn-square btn-danger" href="#!"><i class="mdi mdi-delete"></i></a>');
				$('.yanse1').prepend(li.prepend(fig.append(img).append(input).append(figs.append(a1))))
				//$('#Tossss').remove();
				//$('.yanse1').append($('#Tossss'));
				//console.log($('.yanse1'),$('#Tossss'));
				$('.btn-danger').click(function(){
					$(this).parent().parent().parent().remove();
				})
            }
        }
    });
	
}


//颜色图1
function yanse(){
	console.log($(this))
    var fileInput1=document.getElementById("yanse");
    fileInput1.click();
}

function yansetu(e){
	var xt=$('#ttt');
	var ul=$(this);
	const formData = new FormData();
	formData.append('file', e.target.files[0]);
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
            	//xt.html(res);
            	//console.log(res);
            	var li=$('<li class="col-xs-4 col-sm-3 col-md-2">');
				var fig=$('<figure></figure>');
				var img=$('<img src="'+res+'" alt="图片一">');
				var input=$('<input type="hidden" name="cimg" id="" value="'+(res)+'" />');
				var figs=$('<figcaption></figcaption>')
				var a1=$('<a class="btn btn-round btn-square btn-danger btn-danger1" href="#!"><i class="mdi mdi-delete"></i></a>');
				$('.yanse2').append(li.prepend(fig.append(img).append(input).append(figs.append(a1))));
				console.log($(this).parent().parent());
				//$('#Tossss').remove();
				//$('.yanse1').append($('#Tossss'));
				//console.log($('.yanse1'),$('#Tossss'));
				$('.btn-danger1').click(function(){
					$(this).parent().parent().parent().remove();
				})
            }
        }
    });
	
}
//颜色图2
function yanse2(){
	console.log($(this))
    var fileInput1=document.getElementById("yanse2");
    fileInput1.click();
}

function yansetu2(e){
	const formData = new FormData();
	formData.append('file', e.target.files[0]);
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
            	//xt.html(res);
            	//console.log(res);
            	var li=$('<li class="col-xs-4 col-sm-3 col-md-2">');
				var fig=$('<figure></figure>');
				var img=$('<img src="'+res+'" alt="图片一">');
				var input=$('<input type="hidden" name="cimg2" id="" value="'+(res)+'" />');
				var figs=$('<figcaption></figcaption>')
				var a1=$('<a class="btn btn-round btn-square btn-danger btn-danger1" href="#!"><i class="mdi mdi-delete"></i></a>');
				$('.yanse22').append(li.prepend(fig.append(img).append(input).append(figs.append(a1))));
				console.log($(this).parent().parent());
				//$('#Tossss').remove();
				//$('.yanse1').append($('#Tossss'));
				//console.log($('.yanse1'),$('#Tossss'));
				$('.btn-danger1').click(function(){
					$(this).parent().parent().parent().remove();
				})
            }
        }
    });
	
}
//颜色图3
function yanse3(){
	console.log($(this))
    var fileInput1=document.getElementById("yanse3");
    fileInput1.click();
}

function yansetu3(e){
	const formData = new FormData();
	formData.append('file', e.target.files[0]);
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
            	//xt.html(res);
            	//console.log(res);
            	var li=$('<li class="col-xs-4 col-sm-3 col-md-2">');
				var fig=$('<figure></figure>');
				var img=$('<img src="'+res+'" alt="图片一">');
				var input=$('<input type="hidden" name="cimg3" id="" value="'+(res)+'" />');
				var figs=$('<figcaption></figcaption>')
				var a1=$('<a class="btn btn-round btn-square btn-danger btn-danger1" href="#!"><i class="mdi mdi-delete"></i></a>');
				$('.yanse23').append(li.prepend(fig.append(img).append(input).append(figs.append(a1))));
				console.log($(this).parent().parent());
				//$('#Tossss').remove();
				//$('.yanse1').append($('#Tossss'));
				//console.log($('.yanse1'),$('#Tossss'));
				$('.btn-danger1').click(function(){
					$(this).parent().parent().parent().remove();
				})
            }
        }
    });
	
}







$(function() {
	$('.cha-color').click(function(){
		$(this).parent().remove();
	})
	/* $(".label2-ke").click(function(){
		console.log($(this))
		var div1=$('<div class="color-con-big">');
		var div2=$('<div class="color-con-bigdiv" id="color-con-big11">');
		var div3=$('<div class="form-group col-md-12">');
		var div4=$('<div class="form-group col-md-12">');
		var lable1=$('<label>颜色名称:</label>');
		var cha=$('<img class="cha-color" src="stylejs/h/img/close.png" />');
		var input1=$('<input type="text" class="form-control yschang" placeholder="请输入颜色名称" />');
		var ul1=$('<ul class="list-inline clearfix lyear-uploads-pic yanse2">');
		var li1=$('<li class="col-xs-4 col-sm-3 col-md-2 zzzz">');
		var a1=$('<a class="pic-add" id="add-pic-btn"  onclick="yanse()" href="#!" title="点击上传"></a>');
		var input2=$('<input  onchange="upload(event)" id="yanse" type="file" value="" style="display:none;">');
		//
		$(".klcolor").append(div1.append(div2.append(div3.append(lable1).append(input1))
		.append(div4.append(ul1.append(li1.append(a1).append(input2))))).append(cha));
		
		
	}); */
	$('.dtyc').click(function(){
		$(this).parent().parent().parent().hide();
	})
	$(".ajax-post").click(function () {
		//gogoole();
		var gname=$(".gname").val();
		var smid=$(".smname").val();
		var gkey=$(".gkey").val();
		var gjiage=$(".gjiage").val();
		var gnew=$('.status').val();
		var ghot=$('.status1').val();
		if(gname=="" || gname==null ){
			layer.msg('请输入商品名称', {time: 1000, icon:6});
			return;
		}
		if( smid==0 ){
			layer.msg('请选择类别', {time: 1000, icon:6});
			return;
		}
		/* if(gkey=="" || gkey==null ){
			layer.msg('请输入关键字', {time: 1000, icon:6});
			return;
		} */
		// 颜色
		/* var cname = $("input[name='cname']").val();
		if(cname=="" || cname==null ){
			layer.msg('请输入颜色名称', {time: 1000, icon:6});
			return;
		} */
		var conname=$("input[name='conname']").val();
		if(conname=="" || conname==null ){
			layer.msg('请输入版本名称', {time: 1000, icon:6});
			return;
		}
		var conjia=$("input[name='conjia']").val();
		if(conjia=="" || conjia==null ){
			layer.msg('请输入价格', {time: 1000, icon:6});
			return;
		}
		var kucun=$("input[name='kucun']").val();
		if(kucun=="" || kucun==null ){
			layer.msg('请输入库存', {time: 1000, icon:6});
			return;
		}
		var tu=$(".controls").val();
		/* if(tu=="" || tu==null || tu=='undefined'){
			layer.msg('请上传详情图', {time: 1000, icon:6});
			return;
		} */
		 
		/* for(let i in img){
		    console.log(i,img[i]);
		} */
		console.log(gname,smid,gkey,gjiage,gnew,ghot);
		$("#addshop").submit();
	});
	
});

</script>
</body>
</html>