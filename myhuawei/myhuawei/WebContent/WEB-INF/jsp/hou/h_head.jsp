<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!-- <link href="stylejs/h/css/bootstrap.min.css" rel="stylesheet">
<link href="stylejs/h/css/materialdesignicons.min.css" rel="stylesheet">
<link href="stylejs/h/css/style.min.css" rel="stylesheet"> -->
<style type="text/css">
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
.gaimm1{
		margin-top: 30px;
	}
	.gaimm-an{
	    margin-left: 200px;
	}
	.yg-big11{
		margin-top: 30px;
	}
</style>
</head>
  
<body>
    <!--左侧导航-->
    
    <!--End 左侧导航-->
    
    <!--头部信息-->
    <header class="lyear-layout-header">
      
      <nav class="navbar navbar-default">
        <div class="topbar">
          
          <div class="topbar-left">
            <div class="lyear-aside-toggler">
              <span class="lyear-toggler-bar"></span>
              <span class="lyear-toggler-bar"></span>
              <span class="lyear-toggler-bar"></span>
            </div>
            <span class="navbar-page-title"> 华为商城后台 </span>
          </div>
          
          <ul class="topbar-right">
            <li class="dropdown dropdown-profile">
              <a href="javascript:void(0)" data-toggle="dropdown">
                <img class="img-avatar img-avatar-48 m-r-10 " src="${admins.atu }" />
                <span>${admins.aname} <span class="caret"></span></span>
              </a>
              <ul class="dropdown-menu dropdown-menu-right">
                <li> <a href="#!" class='ziji'><i class="mdi mdi-account"></i> 个人信息
                	<span style="display: none;">${admins.aid }</span>
                </a> </li>
                <li> <a href="#!" class="gaimima"><i class="mdi mdi-lock-outline example-p-3"></i> 修改密码</a> </li>
                <!-- <li> <a href="javascript:void(0)"><i class="mdi mdi-delete"></i> 清空缓存</a></li> -->
                <li class="divider"></li>
                <li> <a href="#!" class="shan_admins"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
              </ul>
            </li>
            <!--切换主题配色-->
		    <li class="dropdown dropdown-skin">
			  <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
			  <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                <li class="drop-title"><p>主题</p></li>
                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
                    <label for="site_theme_1"></label>
                  </span>
                  <span>
                    <input type="radio" name="site_theme" value="dark" id="site_theme_2">
                    <label for="site_theme_2"></label>
                  </span>
                  <span>
                    <input type="radio" name="site_theme" value="translucent" id="site_theme_3">
                    <label for="site_theme_3"></label>
                  </span>
                </li>
			    <li class="drop-title"><p>LOGO</p></li>
				<li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
                    <label for="logo_bg_1"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
                    <label for="logo_bg_2"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
                    <label for="logo_bg_3"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
                    <label for="logo_bg_4"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
                    <label for="logo_bg_5"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
                    <label for="logo_bg_6"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
                    <label for="logo_bg_7"></label>
                  </span>
                  <span>
                    <input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
                    <label for="logo_bg_8"></label>
                  </span>
				</li>
				<li class="drop-title"><p>头部</p></li>
				<li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
                    <label for="header_bg_1"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_2" id="header_bg_2">
                    <label for="header_bg_2"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_3" id="header_bg_3">
                    <label for="header_bg_3"></label>
                  </span>
                  <span>
                    <input type="radio" name="header_bg" value="color_4" id="header_bg_4">
                    <label for="header_bg_4"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_5" id="header_bg_5">
                    <label for="header_bg_5"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_6" id="header_bg_6">
                    <label for="header_bg_6"></label>                      
                  </span>                                                    
                  <span>                                                     
                    <input type="radio" name="header_bg" value="color_7" id="header_bg_7">
                    <label for="header_bg_7"></label>
                  </span>
                  <span>
                    <input type="radio" name="header_bg" value="color_8" id="header_bg_8">
                    <label for="header_bg_8"></label>
                  </span>
				</li>
				<li class="drop-title"><p>侧边栏</p></li>
				<li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
                    <label for="sidebar_bg_1"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
                    <label for="sidebar_bg_2"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
                    <label for="sidebar_bg_3"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
                    <label for="sidebar_bg_4"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
                    <label for="sidebar_bg_5"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
                    <label for="sidebar_bg_6"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
                    <label for="sidebar_bg_7"></label>
                  </span>
                  <span>
                    <input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
                    <label for="sidebar_bg_8"></label>
                  </span>
				</li>
			  </ul>
			</li>
            <!--切换主题配色-->
          </ul>
          
        </div>
      </nav>
      
    </header>
    <!--End 头部信息-->
    
    <!--页面主要内容-->
    
    <!--End 页面主要内容-->

<script type="text/javascript" src="stylejs/h/js/jquery.min.js"></script>
<!-- <script type="text/javascript" src="stylejs/h/js/bootstrap.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/main.min.js"></script> -->
<script src="stylejs/h/layer/layer.js" type="text/javascript" charset="utf-8"></script>
<!--图表插件-->
<script type="text/javascript" src="stylejs/h/js/Chart.js"></script>
<script type="text/javascript">
$(document).ready(function(e) {
	//个人信息
	$('.ziji').click(function() {
		var aid=$(this).find("span").html();
		console.log(aid);
		layer.open({
			title: ['个人信息', 'font-size:18px;'],
		  type: 1,
		  //skin: 'layui-layer-rim', //加上边框 onsubmit="return pinglun();"
		  area: ['520px', '420px'], //宽高
		  content: '<form><div class="yg-big11">'
				+'</div></form>'
				
		});
		$(".yg-big11").load("cha_ziji_servlet?aid="+aid,function(data){});
	});
	
	
	
    $(".shan_admins").click(function () {
    	//询问框
		layer.confirm('你确定要退出吗 ？？？', {
			title: ['退出登录', 'font-size:18px;'],
		  	btn: ['确定','取消'] //按钮
		}, function(){
			 var index = layer.load(0, { shade:  [0.1, '#000'] });  // 0.1透明度的白色背景
			 setTimeout(function(){
			      layer.close(index)
			      location.href="shan_houtai_login";
			 }, 300);
			 //var index = layer.load(1, {shade: false}); //0代表加载的风格，支持0-2
			
		}, function(){
		  
		});
	});
    
    /* 修改密码  */
    $('.gaimima').on('click', function () {
    	
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
    			layer.msg('请填写旧密码！！！', {time: 1000, icon:1});
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
			});
    	});
    });
});
</script>
</body>
<script src="stylejs/h/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
<script src="stylejs/h/js/ashowhide.js" type="text/javascript" charset="utf-8"></script>
</html>