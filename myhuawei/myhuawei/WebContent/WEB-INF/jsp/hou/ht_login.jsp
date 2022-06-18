<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>登录页面</title>
<link rel="shortcut icon" href="stylejs/h/img/华为1.png">
<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
<meta name="author" content="yinqi">
<link href="stylejs/h/css/bootstrap.min.css" rel="stylesheet">
<link href="stylejs/h/css/materialdesignicons.min.css" rel="stylesheet">
<link href="stylejs/h/css/style.min.css" rel="stylesheet">
<style>
.lyear-wrapper {
    position: relative;
}
.lyear-login {
    display: flex !important;
    min-height: 100vh;
    align-items: center !important;
    justify-content: center !important;
}
.lyear-login:after{
    content: '';
    min-height: inherit;
    font-size: 0;
}
.login-center {
    background: #fff;
    min-width: 29.25rem;
    padding: 2.14286em 3.57143em;
    border-radius: 3px;
    margin: 2.85714em;
}
.login-header {
    margin-bottom: 1.5rem !important;
}
.login-center .has-feedback.feedback-left .form-control {
    padding-left: 38px;
    padding-right: 12px;
}
.login-center .has-feedback.feedback-left .form-control-feedback {
    left: 0;
    right: auto;
    width: 38px;
    height: 38px;
    line-height: 38px;
    z-index: 4;
    color: #dcdcdc;
}
.login-center .has-feedback.feedback-left.row .form-control-feedback {
    left: 15px;
}
</style>
</head>
  
<body><!-- stylejs/h/images/login-bg.jpg  stylejs/h/img/690945.jpg stylejs/h/img/wallhaven-72rd8e.jpg-->
<div class="row lyear-wrapper" style="background-image: url(stylejs/h/img/690945.jpg); background-size: cover;">
  <div class="lyear-login">
    <div class="login-center">
      <div class="login-header text-center">
        <a href="#!"  title="华为商城" > <img alt="华为商城" src="stylejs/h/img/huawei_logo.png"> </a>
        <span class="err" style="display: none;">${err }</span>
      </div>
      <form action="ht_login" method="post"  onsubmit = "return ht_login();">
        <div class="form-group has-feedback feedback-left">
          <input type="text" placeholder="请输入您的用户名" class="form-control" id="username"  name="aname"/>
          <span class="mdi mdi-account form-control-feedback" aria-hidden="true"></span>
        </div>
        <div class="form-group has-feedback feedback-left">
          
          <input class="form-control" type="password" id="example-nf-password" name="apwd" placeholder="请输入密码..">
          <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
        </div>
        <div class="form-group has-feedback feedback-left row">
          
        </div>
        <div class="form-group">
          
        </div>
        <div class="form-group">
          <input type="submit" class="btn btn-block btn-primary" name="" id="" value="登录" />
        </div>
      </form>
      <hr>
      <footer class="col-sm-12 text-center">
        <p class="m-b-0">Copyright © 2022 <a href="lunboservlet"  target="_blank">华为商城</a>. All right reserved</p>
      </footer>
    </div>
  </div>
</div>
<script type="text/javascript" src="stylejs/h/js/jquery.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/bootstrap.min.js"></script>
<script src="stylejs/h/layer/layer.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	/* 登录  */
	function ht_login(){
		var aname=$("input[name='aname']").val();
		if(aname=="" || aname==null){
			layer.msg('用户名不能为空');
			return false;
		}
		var apwd=$("input[name='apwd']").val();
		if(apwd=="" || apwd==null){
			layer.msg('密码不能为空',{time: 1500, icon:2});
			return false;
		}
		//var index = layer.load($(this).data('effect'), { shade: false }); // 第一个参数为风格，支持0-2
	    /*  */
	    //var index = layer.load(0, {shade: false,}); //0代表加载的风格，支持0-2
	   	//加载层
		var index = layer.load(0, {shade: false}); //0代表加载的风格，支持0-2
		setTimeout(function(){
			
	        layer.close(index);
	        
	    }, 300);
		return true;
		console.log(aname,apwd);
	}
	
	$(function(){
		var e=$(".err").html();
		if(e==0){
			//layer.msg('欢迎', {time: 1500});
		}else if(e==1){
			layer.msg('用户不存在', {time: 1500, icon:5});
		}else if(e==2){
			layer.msg('用户名或密码错误', {time: 1500, icon:5});
		}
		
		$(".ht_login").click(function() {
			
		});
	});
</script>
</body>
</html>