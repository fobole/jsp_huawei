<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>新增商品页面</title>

<link href="stylejs/h/css/bootstrap.min.css" rel="stylesheet">
<link href="stylejs/h/css/materialdesignicons.min.css" rel="stylesheet">
<!--标签插件-->
<link rel="stylesheet" href="stylejs/h/js/jquery-tags-input/jquery.tagsinput.min.css">
<link href="stylejs/h/css/style.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="stylejs/h/css/goods.css"/>
<link rel="stylesheet" type="text/css" href="stylejs/h/css/goods_tianjia.css"/>
<link rel="stylesheet" type="text/css" href="stylejs/h/css/upload.css"/>
<style type="text/css">
	.xiangtu{
		margin-bottom: 100px;
	}
	.jia_jia{
		margin-top: 20px;
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
    <main class="lyear-layout-content ">
      
      <div class="container-fluid ">
        
        <div class="row">
          <div class="col-lg-12 xiangtu">
            <div class="card">
				<div class="card-toolbar clearfix">
				  <div class="toolbar-btn-action">
					<h4>添加商品</h4>
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
					<div class="form-group col-md-12">
	                    <label>上传主图</label>
	                    <div class="form-controls">
	                      
	                      <ul class="list-inline clearfix lyear-uploads-pic">
	                        <li class="col-xs-4 col-sm-3 col-md-2 " id="zzzz">
	                          <figure>
	                            <img class="zutu1" src="images/gallery/15.jpg" alt="图片一">
								<input type="hidden" name="zutu1" id="" value="" />
	                            <figcaption>
	                              <a class="btn btn-round btn-square btn-primary" href="#!"><i class="mdi mdi-eye"></i></a>
	                              <a class="btn btn-round btn-square btn-danger" href="#!"><i class="mdi mdi-delete"></i></a>
	                            </figcaption>
	                          </figure>
	                        </li>
	                        
	                        <li class="col-xs-4 col-sm-3 col-md-2 zzzz1" style="width: 200px">
	                          <a class="pic-add" onclick="ss();" href="#!" title="点击上传"></a>
	                        	<input onchange="upload(event);" id="fileInput1" class="form-control gaituinput" type="file" style="display:none;">
	                        </li>
	                      </ul>
	                    </div>
	                  </div>
					<div class="shop-tianjia">
						<label class="label1">商品描述：</label>
						<input type="text" class="form-control gkey" id="title" name="gkey" value="" placeholder="关键词" />
					</div>
					
					
					<div class="jia_jia">
						<div class="yp-fuzhi">
							<label class="label1">颜色和配置</label>
							<label class="label2-ke">克隆</label>
							<!-- <button class="btn btn-cyan" type="button">复制</button> -->
						</div>
						
						<div class="color-con-big">
							<div class="color-con-bigdiv">
								<!-- 颜色表信息 -->
								<div class="cc-div1">
									<div class="cc-div1-d1">
										<label class="cc-label1">颜色名称:</label>
										<input type="text" name="cname" class="form-control cc-input1" placeholder="请输入商品名称" />
									</div>
									<div class="cc-div1-d2">
										<label class="cc-label1">颜色图片:</label>
										<!-- <div id="uploadImgs" style="margin-bottom: 20px;">
										    <label for="fileUpIpt" id="labelId">
										        <div class="uploadImgs-add">+</div>
										    </label>
										    <div class="type-file-div">
										        <input type="file" class="input-file" name="luTest[]" style="display: none;">
										    </div>
										</div> -->
										<!-- <input > -->
									</div>
								</div>
								<!-- 版本配置 -->
								<div class="cc-div2">
									<!-- <div class="">
										
									</div> -->
									<div class="cc-div2-d1">
										<label class="cc-label1">版本配置:</label>
										<input type="text" name='conname' class="form-control cc-input2" placeholder="请输入商品名称" />
									</div>
									<div class="cc-div2-d2">
										<label class="cc-label1">版本价格:</label>
										<input type="text" name='conjia' class="form-control cc-input2 gjiage" placeholder="请输入商品名称" />
									</div>
									<div class="cc-div2-d3">
										<label class="cc-label1">版本库存:</label>
										<input type="text" name='kucun' class="form-control cc-input2" placeholder="请输入商品名称" />
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
					
					<!-- 商品详情t -->
					<div class="form-group col-md-12">
						<h3>商品详情图</h3>
						 
					<div class="form-group col-md-12 gnew">
					  <label for="status">是否是热销商品</label>
					  <div class="clearfix">
					    <label class="lyear-radio radio-inline radio-primary">
					      <input type="radio" name="ghot" value="0" checked><span>是</span>
					    </label>
					    <label class="lyear-radio radio-inline radio-primary">
					      <input type="radio" name="ghot" value="1"><span>否</span>
					    </label>
					  </div>
					</div>
					
					<div class="form-group col-md-12 gnew">
					  <label for="status">是否是新商品</label>
					  <div class="clearfix">
					    <label class="lyear-radio radio-inline radio-primary">
					      <input type="radio" class="status1" name="gnew" value="0" checked><span>是</span>
					    </label>
					    <label class="lyear-radio radio-inline radio-primary">
					      <input type="radio" class="status1" name="gnew" value="1"><span>否</span>
					    </label>
					  </div>
					</div>
					
					<!-- <div class="form-group col-md-12 gnew">
					  <label for="status">上下架</label>
					  <div class="clearfix">
					    <label class="lyear-radio radio-inline radio-primary">
					      <input type="radio" name="status2" value="0" checked><span>上架</span>
					    </label>
					    <label class="lyear-radio radio-inline radio-primary">
					      <input type="radio" name="status2" value="1"><span>下架</span>
					    </label>
					  </div>
					</div> -->
					
					
					<div class="form-group col-md-12">
					  <button type="button"  class="btn btn-primary ajax-post" />确 定</button>
					  <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
					</div>
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


<script src="stylejs/h/js/upload.js" type="text/javascript" charset="utf-8"></script>
<script>

function ss(){
	console.log($(this))
    var fileInput1=document.getElementById("fileInput1");
    fileInput1.click();
}

function upload(e){
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

/* function yanse(){
	//console.log($(this))
    var fileInput1=document.getElementById("yanse");
    fileInput1.click();
}

function upload(e){
	i="";
	//console.log($(this))
	var li=$('<li class="col-xs-4 col-sm-3 col-md-2">');
	var fig=$('<figure></figure>');
	var img=$('<img src="'+i+'" alt="图片一">');
	var input=$('<input type="hidden" name="yanse1" id="" value="'+(i)+'" />');
	var figs=$('<figcaption></figcaption>')
	var a1=$('<a class="btn btn-round btn-square btn-danger" href="#!"><i class="mdi mdi-delete"></i></a>');
	$('.yanse1').prepend(li.prepend(fig.append(img).append(input).append(figs.append(a1))))
	//$('#Tossss').remove();
	//$('.yanse1').append($('#Tossss'));
	console.log($('.yanse1'),$('#Tossss'));
	$('.btn-danger').click(function(){
		$(this).parent().parent().parent().remove();
	})
}	 */
	
	


    /* function gogoole() {
        //得到files的集合，后你想new Fromdata 然后ajax, 还是怎么给后台 就随你玩了!!!!
        if(filesArr.length>0){
        	for(let i in filesArr){
			    console.log(i,filesArr[i]);
			    const formData = new FormData();
		        formData.append('file', filesArr[i]);
		        //var aimg=$("#aimg");
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
		                	if(gtui==0){
		                		gtu.push=res;
		                		gtui++;
		                	}
		                	img.push(res+"");
		                	//console.log(res);
		                }
		            }
		        });
			}
        }; 
        ;console.log(filesArr)
    } */
    /* function ieSubmit() {
        alert('传统表单方式上传'); $("#isIeform").submit();
    } */
    
    $(function() {
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
    		var cname = $("input[name='cname']").val();
    		if(cname=="" || cname==null ){
    			layer.msg('请输入颜色名称', {time: 1000, icon:6});
    			return;
    		}
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
    		console.log(gname,smid,gkey,gjiage,img[0],gnew,ghot);
			$("#addshop").submit();
		});
		
	});
    
    
    
    
    
    
    
</script>
</body>
</html>