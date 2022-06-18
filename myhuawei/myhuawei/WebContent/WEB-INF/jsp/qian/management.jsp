<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>个人信息</title>
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/personal.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/tuiqian.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/management.css"/>
		<!-- <link rel="stylesheet" type="text/css" href="css/wdjf.css"/> -->
		<!-- <link rel="stylesheet" type="text/css" href="stylejs/q/css/css/ycbootstrap.css" /> -->
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/css/reset.css" />
	
		<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
		<script src="stylejs/q/plugins/cover_js/iscroll-zoom.js" type="text/javascript" charset="utf-8"></script>
		<script src="stylejs/q/plugins/cover_js/hammer.js" type="text/javascript" charset="utf-8"></script>
		<script src="stylejs/q/plugins/cover_js/lrz.all.bundle.js" type="text/javascript" charset="utf-8"></script>
		<script src="stylejs/q/plugins/cover_js/jquery.photoClip.min.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			
			/* .perleft-li1{
				font-size: 12px;
				font-weight: 500;
			} */
			.selectxx{
				width: 335px;
				height: 46px;
				border-radius: 8px;
				padding: 0px 20px 0px 15px;
				/* float: right; */
				border: 0;
				outline: none;
				background: #F2F2F2;
			}
			.touxiang img{
			
				border: 4px solid #F2F2F2;
			}
			#aimg{
				display: none
			}
			
			
/* 换密码 */
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
	margin-left: 55px;
	margin-right: 10px;
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
	height: 35px;
	padding-left: 15px;
	border: none;
	border-radius: 20px;
	background: #F2F2F2;
}
.gaimm1{
	margin-top: 30px;
}
.gaimm-an{
	margin: 10px 0px 0px 200px;
	border: none;
	width: 120px;
	height: 40px;
	background: #CF0B2D;
	font-size: 16px;
	color: white;
	border-radius: 10px;
}
			
		</style>
	</head>
	<body>
		<!-- 头部开始 -->
		<!-- 头部kaishi -->
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
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
									<a href="personalservlet"><li>我的订单</li></a>
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
									<a href="management_servlet"><li id="bianhong">个人信息</li></a>
									
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
					<div class="mana-one">
						<h4 class="infoh4">我的信息</h4>
						<!-- 右边 -->
						<div class="mana-right">
							<!-- 个人信息 -->
							<div class="mana-right-xinxi" id="mana-xinxi">
								<div class="mana-xini-one">
									<span>头像</span>
									<div class="touxiang">
										<img src="${users.uimg }" >
									</div>
								</div>
								<div class="mana-xini-two">
									<h3>基本信息</h3>
									<p><span class="mana-xini-twospan">昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称</span> 
									<input type="text" name="uname" id="" value="${users.uname }" oninput="value=value.replace(/\s+/g,'')" /></p>
									<p><span class="mana-xini-twospan">电话号码</span> 
									<input type="text" name="uphone" id="" value="${users.uphone.substring(0, 3) }****${users.uphone.substring(users.uphone.length()-4) }"  disabled="true"/></p>
									<p><span class="mana-xini-twospan">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</span>
										<select name="usex" class="selectxx">
											<c:if test="${users.usex==0 }">
												<option value="0">保密</option>
												<option value="1">男</option>
												<option value="2">女</option>
											</c:if>
											<c:if test="${users.usex==1 }">
												<option value="1">男</option>
												<option value="0">保密</option>
												<option value="2">女</option>
											</c:if>
											<c:if test="${users.usex==2 }">
												<option value="2">女</option>
												<option value="0">保密</option>
												<option value="1">男</option>
											</c:if>
										</select>
									</p>
									<p><span class="mana-xini-twospan">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</span> 
									<input type="password" name="ubrith" id="" value="*****"  disabled="true"/></p>
						
									<input type="button" id="mana-rone-baocun" id value="保存" />
									<input type="button" id="mana-rone-baocun1" id value="修改密码" />
								</div>
							</div>
							<!-- 账号与安全 -->
							
							<!-- 我的积分 -->
							<div class="mana-right-jifen">
								
								
							</div>
						</div>
					</div>
					
					
				</div>
			</div>
		</div>
		<!-- 尾部开始 -->
		<jsp:include page="hwtail.jsp"></jsp:include>
		<!-- 底部结束 -->
		<!-- 尾部结束 -->
		
		
		<!-- 头像插件 -->
		<div class="touxiang-chajian">
			
		
<!-- <form action="" method="post" id="uploadF"> -->
		<div class="yc-upload-wrap">
		    <div class="yc-upload-box">
		        <div class="container">
		            <div class="row">
		                <div class="col-md-12 col-sm-12 col-xs-12" style="padding:0;">
		
		                    <div class="ycupload-mainbox">
		    
		                        <div class="ycupload-line"></div>
		                        <div style="height:30px;"></div>
		                        <div style="min-height:1px;">
		                            <div class="container">
		                                <div class="row">
		                                    <div class="col-md-12 col-sm-12 col-xs-12" style="padding-right:0;padding-left:36px;">
		                                        <!--<a href="javascript:void(0);" class="cover-uploadBtn">
										        		<img src="img/yc_uploadimg_06.png"/>
										        		<div id="clipArea"></div>
														<input type="file" id="file">
														<button id="clipBtn">截取</button>
										        	</a>
										        	<div id="view"></div>-->
		                                        <div style="min-height:1px;line-height:160px;text-align:center;position:relative;" ontouchstart="">
		                                            <div class="cover-wrap" style="display:none;position:fixed;left:0;top:0;width:100%;height:100%;background: rgba(0, 0, 0, 0.4);z-index: 10000000;text-align:center;">
		                                                <div class="" style="width:900px;height:600px;margin:100px auto;background-color:#FFFFFF;overflow: hidden;border-radius:4px;">
		                                                    <div id="clipArea" style="margin:10px;height: 520px;"></div>
		                                                    <div class="" style="height:56px;line-height:36px;text-align: center;padding-top:8px;">
		                                                        <button id="clipBtn" style="width:120px;height: 36px;border-radius: 4px;background-color:#ff8a00;color: #FFFFFF;font-size: 14px;text-align: center;line-height: 36px;outline: none;">保存封面</button>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                            <div id="view" style="width:214px;height:214px;" title="请上传 428*321 的封面图片"></div>
		                                            <div style="height:10px;"></div>
		                                            <div class="" style="width:140px;height:32px;border-radius: 4px;background-color:#ff8a00;color: #FFFFFF;font-size: 14px;text-align:center;line-height:32px;outline:none;margin-left:670px;position:relative;">
		                                               	 点击上传头像
		                                                <input type="file" id="file" name="file" style="cursor:pointer;opacity:0;filter:alpha(opacity=0);width:100%;height:100%;position:absolute;top:0;left:0;">
		                                            </div>
		                                        </div>
												
		
		                                    </div>
		                                </div>
		                            </div>
		
		                        </div>
		                        <div style="height:25px;"></div>
		                    </div>
		
		                </div>
		            </div>
		        </div>
		
		    </div>
		</div>
		<div class="txan">
			<button class="txan1" type="button">保存头像</button>
			&nbsp;&nbsp;&nbsp;<button class="txan2" type="button">取消</button>
		</div>
		
		
		
		</div>

<!-- </form> -->
<!-- 头像 -->
<img id="aimg" alt="" src="">
	</body>
	
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/layer/layer.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/management.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
	    //上传封面
	    //document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);
	    var clipArea = new bjj.PhotoClip("#clipArea", {
	        size: [321, 321], // 截取框的宽和高组成的数组。默认值为[260,260]
	        outputSize: [321, 321], // 输出图像的宽和高组成的数组。默认值为[0,0]，表示输出图像原始大小
	        //outputType: "jpg", // 指定输出图片的类型，可选 "jpg" 和 "png" 两种种类型，默认为 "jpg"
	        file: "#file", // 上传图片的<input type="file">控件的选择器或者DOM对象
	        view: "#view", // 显示截取后图像的容器的选择器或者DOM对象
	        ok: "#clipBtn", // 确认截图按钮的选择器或者DOM对象
	        loadStart: function() {
	            // 开始加载的回调函数。this指向 fileReader 对象，并将正在加载的 file 对象作为参数传入
	            $('.cover-wrap').fadeIn();
	            console.log("照片读取中");
	        },
	        loadComplete: function() {
	            // 加载完成的回调函数。this指向图片对象，并将图片地址作为参数传入
	            console.log("照片读取完成");
	        },
	        //loadError: function(event) {}, // 加载失败的回调函数。this指向 fileReader 对象，并将错误事件的 event 对象作为参数传入
	        clipFinish: function(dataURL) {
	            // 裁剪完成的回调函数。this指向图片对象，会将裁剪出的图像数据DataURL作为参数传入
	            $('.cover-wrap').fadeOut();
	            $('#view').css('background-size', '100% 100%');
	            //console.log(dataURL);
	            
	            //convertBase64UrlToBlob(urlData);
	            
	            
	            //return fiLe;
	            
	            //console.log(convertBase64UrlToBlob(urlData));
	            
	            
	            
	            
	            
	            /*  可上传图片  */
	            /* var form = document.getElementById("uploadF");
	    		var formData = new FormData(form);
	    		formData.append('testName', '我是传送文件标识')
	    		console.log(formData.get('file'));
	            $('#loading').show();
	    		$.ajax({    
	    			type: "post",
	    			url: "wenjian_shangchuan2",
	    			data: formData,
	    			processData: false,//告诉jq不要处理发送的数据
	    			contentType: false,//告诉jq不要设置content-Type请求头
	    			success: function(res) {
	                    console.log(res)
	                }
	            }); */
	            
	            
	            
	            
				//convertBase64UrlToBlob(dataURL);
	            
	         
	            
	            console.log(convertBase64UrlToBlob(dataURL));
	            //var fiLe = new FiLe([ u8arr],convertBase64UrlToBlob(dataURL));
	           
	            //var fiLe = new FiLe([u8arr],dataURL);
	            
	            const formData = new FormData();
	            var nameimg=new Date().getTime()+".png"
		        formData.append('file', convertBase64UrlToBlob(dataURL),nameimg);
		        formData.append('testName', '我是传送文件标识')
				console.log(formData.get('file')+"#######");
		        $('#loading').show();
		        var aimg=$("#aimg");
				$.ajax({    
					type: "post",
					url: "wenjian_shangchuan2",
					data: formData,
					processData: false,//告诉jq不要处理发送的数据
					contentType: false,//告诉jq不要设置content-Type请求头
					success: function(res) {
		                if(res==1){
		                	 layer.msg('文件不能为空', {time: 1000, icon:6});
		                }else if(res==2){
		                	 layer.msg('文件格式不正确', {time: 1000, icon:6});
		                }else{
		                	aimg.attr("src",res);
		                	console.log(res);
		                }
		            }
		        });
	            
	        }
	    });
	    //clipArea.destroy();
	    
	    
	    
	    /* 64码转换 */
	    function convertBase64UrlToBlob(urlData){

　　　　var bytes=window.atob(urlData.split(',')[1]);        //去掉url的头，并转换为byte           

　　　　//处理异常,将ascii码小于0的转换为大于0     

　　　　var ab = new ArrayBuffer(bytes.length);     

　　　　var ia = new Uint8Array(ab);     

　　　　for (var i = 0; i < bytes.length; i++) {          ia[i] = bytes.charCodeAt(i);      }       

　　　　return new Blob( [ab] , {type : 'image/png'});  

　　} 
	</script>
	<script type="text/javascript">
	$(function(){
		
		$("#mana-rone-baocun").attr({"disabled":"disabled"}).css({"background-color":"#F2F2F2","color":"black"});
		 //$("#btnzhuce").removeAttr("disabled");//将按钮可用#CF0B2D
		//保存修改后的信息
		$("#mana-rone-baocun").click(function(){
			var uname=$('input[name="uname"]').val();
			if(uname == "" || uname == null ){
				layer.msg("昵称不能为空", {time: 1000, icon:6});
				return;
			}
			var usex=$('.selectxx').val();
			console.log(uname,usex);
			$.ajax({
				url:"qian_gai_users_servlet",//访问路径
				data:{
					uname:uname,
					usex:usex
				},
				type:"post",//请求类型
				async:true,//是否同步请求
				error:function(){
					//访问错误会执行这个方法
					//404，500，405
				},
				success:function(data){
					layer.msg("信息修改成功！！！", {time: 500, icon:6},function(){
						location.href="management_servlet";
					});
				}
			});
		});
		$('input[name="uname"]').change(function(){
			console.log($(this));
			$("#mana-rone-baocun").removeAttr("disabled").css({"background-color":"#CF0B2D","color":"white"});
		});
		$('.selectxx').change(function(){
			console.log($(this));
			$("#mana-rone-baocun").removeAttr("disabled").css({"background-color":"#CF0B2D","color":"white"});
		});
		
		
		
		// 上传头像
		$(".touxiang img").click(function(){
			$(".touxiang-chajian").toggle();
		})
		$(".txan1").click(function(){
			//console.log($(this)) 
			var src = $("#aimg").attr("src");
			if(src == "" || src == null ){
				layer.msg("图片不能为空 请选择图片", {time: 1000, icon:6});
				return;
			}
			$.ajax({
				url:"gai_touxiang_servlet",//访问路径
				data:{
					uimg:src,
				},
				type:"post",//请求类型
				async:true,//是否同步请求
				error:function(){
					//访问错误会执行这个方法
					//404，500，405
				},
				success:function(data){
					layer.msg("修改头像成功！！！", {time: 500, icon:6},function(){
						location.href="management_servlet";
					});
				}
			});
		})
		$(".txan2").click(function(){
			$(".touxiang-chajian").hide();
		})
		
		
		$("#mana-rone-baocun1").click(function(){
			console.log($(this));
			// 修改密码 页面层
			layer.open({
				title: ['修改密码', 'font-size:18px;'],
				//动画效果
				anim:0,
			  type: 1,
			  // skin: 'layui-layer-rim', //加上边框
			  area: ['520px', '350px'], //宽高
			  content: '<form action="#!" method="post"><div class="yg-big">'
					+'<div class="yg-touxiang gaimm1"><label class="la1">旧&nbsp;&nbsp;密&nbsp;&nbsp;码</label><input class="form-control mm1" type="password" placeholder="请输入密码.."></div>'
					+'<div class="yg-touxiang"><label class="la1">新&nbsp;&nbsp;密&nbsp;&nbsp;码</label><input class="form-control mm2" type="password" placeholder="请输入密码.."></div>'
					+'<div class="yg-touxiang"><label class="la1">确认密码</label><input class="form-control mm3" type="password" placeholder="请输入确认密码.."></div>'
					+'<input class="btn btn-primary ajax-post gaimm-an" type="button" name="" id="" value="确 定  修  改" /></div></form>'
			});
			$('.gaimm-an').on('click', function () {
	    		var mm1=$('.mm1').val();
	    		var mm2=$('.mm2').val();
	    		var mm3=$('.mm3').val();
	    		console.log(mm1,mm2,mm3);
	    		if(mm1=="" || mm1==null ){
	    			layer.msg('请填写旧密码！！！', {time: 1000, icon:2});
	    			return;
	    		}
	    		if(mm2=="" || mm2==null ){
	    			layer.msg('请填写新密码！！！', {time: 1000, icon:2});
	    			return;
	    		}
	    		if(mm3=="" || mm3==null ){
	    			layer.msg('请填写确认密码！！！', {time: 1000, icon:3});
	    			return;
	    		}
	    		if(mm3!=mm2){
	    			layer.msg('新密码和确认密码不一致！！！', {time: 1000, icon:5});
	    			return;
	    		}
	    		$.ajax({
					url:"gai_users_mima_servlet",
					type:"post",
					data:{upwd:mm1,upwds:mm2},//提交的文件
					async:true, 
					success:function(data){
						if(data == 1){
							layer.msg('修改成功', {time: 1000, icon:6},function(){
								location.href='qian_shan_users_servlet';
							});				
						}else{
							layer.msg('修改失败！！！', {time: 1000, icon:5});
						}
					},
					error:function(){
						alert("访问错误");
					}
				});
	    	});
		});
		/* 修改密码 */
		/* $.ajax({
			url:"gai_admins_mima_servlet",
			type:"post",
			data:{"apwd":mm1,"gaiapwd":mm2},//提交的文件
			async:true, 
			success:function(data){
				if(data == 1){
					layer.msg('修改成功', {time: 1000, icon:6},function(){
						location.href='shan_houtai_login';
					});				
				}else{
					layer.msg('修改失败！！！', {time: 1000, icon:5});
				}
			},
			error:function(){
				alert("访问错误");
			}
		}); */
	});
	
	</script>
</html>
