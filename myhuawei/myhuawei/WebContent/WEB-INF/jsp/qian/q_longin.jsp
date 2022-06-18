<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <title>华为商城登录注册页面</title>
    <link rel="shortcut icon" href="stylejs/q/img/华为1.png">
    <link rel="stylesheet" href="stylejs/q/css/stylelogin.css">
    <style type="text/css">
    		.img:before{
    			background-image: url(stylejs/q/images/wallhaven-72rxqo.jpg);
    		}
    		body{
    			background-image: url(stylejs/q/images/wallhaven-72rxqo.jpg);
    			background-size: cover;
    		}
    		.yyy{
    			margin-top: 80px;
    		}
    		.zc-div1s{
    		  margin: 0px;
    		}
    		.zc-div1s #reg{
    			margin: 20px 0px 0px 120px;
    		}
    		.ggg{
    			margin-top: 25px;
    		}
    		
    		
    		
    		
    		.zch2{
    			margin-bottom: 30px;
    		}
    </style>
</head>

<body>
    <div class="login-home">
		<a href="lunboservlet">
		<div class="">
			<img src="https://id1.cloud.huawei.com/CAS/static_rss/rss_83/CAS/logos/HUAWEI.svg">
			<span>华为商城</span>
		</div>
		</a>
	</div>
    <div class="content">
    	
		<!-- 登录 -->
		<form action="qian_longin" method="post"  onsubmit = "return login();">
			<div class="form sign-in">
			    <h2>欢迎回来</h2>
			    <span class="errs" style="display: none;">${tips }</span>
			    <label class="dl-lable yyy">
			        <span>电话号码</span>
			        <!--  value="${tips } -->
			        <input type="text" id="phone1" name="uphone_d"  oninput="var v=this.value||'';v=v.replace(/[^\d]/g,'');if(v.length==1 && v==0){v=''};this.value=v.substr(0,11);" />
			    </label>
				<!--  -->
				
			    <label class="dl-lable">
			        <span>密 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</span>
			        <input type="password" name="upwd_d" />
			    </label>
			    <p class="forgot-pass"><a class="wjmm" href="javascript:">忘记密码？</a></p>
			    <div class="zc-div1">
			    	<input type="submit" name=""  id="reg" value="登 录"/>
			    </div>
			</div>	
		</form>
		
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h2>还未注册？</h2>
                    <p>立即注册，发现大量机会！</p>
                </div>
                <div class="img__text m--in">
                    <h2>已有帐号？</h2>
                    <p>有帐号就登录吧，好久不见了！</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">注 册</span>
                    <span class="m--in">登 录</span>
                </div>
            </div>
			<!-- 注册 -->
			<form>
				<div class="form sign-up">
				    <h2 class="zch2">立即注册</h2>
				    <label class="zhuce-lable2">
				        <span>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 称</span>
				        
				        <input type="text" name="uname" />
				    </label>
					<label class="zhuce-lable2">
					
					    <span>电话号码</span>
					    <input type="text" name="uphone" oninput="value=value.replace(/[^0-9.]/g,'')"/>
					</label>
					<label class="zhuce-lable2">
					    <span>性 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</span>
						<div class="zhuce-sex" >
							<select name="usex">
								<option value="0">保密</option>
								<option value="1">男</option>
								<option value="2">女</option>
							</select>
						</div>
					</label>
				    <!-- <label class="zhuce-lable2">
				        <span>出生日期</span>
				        <input type="date" name="ubirth" placeholder=""/>
				    </label> -->
				    <label class="zhuce-lable2">
				        <span>密 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</span>
				        <input type="password" name="upwd" />
				    </label>
					<label class="zhuce-lable2">
					    <span>确认密码</span>
					    <input type="password"  name="upwd1"/>
					</label>
				    <!-- <button type="button">注 册</button> -->
					<div class="zc-div1">
						<input type="button" class="zuce" name="" id="reg" value="注 册"/>
					</div>
					
				   <!-- <button type="button" class="fb-btn">使用 <span>facebook</span> 帐号注册</button> -->
				</div>
			</form>
            
        </div>
    </div>

    <!-- 有无 获取验证码  -->
    <span class="yanzm" style="display: none;">0</span>
</body>
<script src="stylejs/q/js/jquery-3.4.1.js" type="text/javascript" charset="utf-8"></script>
<script src="stylejs/q/js/scriptlogin.js"></script>
<script src="stylejs/q/layer/layer.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
// 后台验证码
var houtaiyzm=0;
/*提交*/
function binding(){
	alert(1)
}

function login(){
	var uphone=$("input[name='uphone_d']").val();
	//console.log(uname);
	if(uphone=="" || uphone==null){
		layer.msg('用户名不能为空');
		return false;
	}
	/* var uyzm=$("input[name='yzm_d']").val();
	if(uyzm=="" || uyzm==null){
	 	layer.msg('验证码不能为空');
	 	return false;
	} */
	var upwd=$("input[name='upwd_d']").val();
	if(upwd=="" || upwd==null){
		layer.msg('密码不能为空');
		return false;
	}
	if(houtaiyzm!=uyzm){
		layer.msg('验证码错误');
		return false;
	}
	//加载层
	var index = layer.load(1, {shade: false}); //0代表加载的风格，支持0-2
	var index = layer.load(1, {shade: false}); //0代表加载的风格，支持0-2
		setTimeout(function(){
			
	        layer.close(index);
	        
	    }, 3000);
	console.log(uphone,uyzm,upwd);
	return true;
}

			
			
			
		// 初始化jq
		$(function(){
			// 登录弹出错误信息
			var e=$(".errs").text();
			if(e==0){
				//layer.msg('欢迎', {time: 1500});
			}else if(e==1){
				layer.msg('用户不存在', {time: 1500, icon:5});
			}else if(e==2){
				layer.msg('用户名或密码错误', {time: 1500, icon:5});
			}
			/* 注册 */
			/* 给用户名绑定失去焦点事件 */
			$("input[name='uphone']").blur(function(){
				//获得用户名
				var uphone=$(this).val();
				if(!uphone=="" || !uphone==null){
					//使用ajax异步请求技术
					$.ajax({
						url:"checkphone?uphone="+uphone,//请求的地址（servlet）
						type:"get",//请求的方式 get，post
						dataType:"text", //数据类型 文本，html,json(响应数据类型)
						async:false,//是否异步 （false 表示同步处理，true表示异步处理）
						error:function(){ //请求后台有误
							alert("访问有误");
						},
						success:function(data){//回调函数 data后台响应的数据
							console.log(data);
							if(data==1){
								
							}else{
								layer.msg("电话号码已注册");
								//console.log(date);
								$("input[name='uphone']").val("");
							}
						}
					});
				}	
			});
		});
		
		
		
		
		
		/* 注册 qian_longin2 */
		$(".zuce").click(function(){
			var uname=$("input[name='uname']").val();
			//console.log(uname);
			if(uname=="" || uname==null){
				layer.msg('用户名不能为空');
				return;
			}
			var uphone=$("input[name='uphone']").val();
			if(uphone=="" || uphone==null){
				layer.msg('电话号码不能为空');
			 	return;
			}
			if(!(/^1(3|4|5|7|8)\d{9}$/.test(uphone))){
				layer.msg("手机号码有误，请重新输入");
				return;
			}
			var usex=$("select[name='usex']").val();
			if(uphone=="" || uphone==null){
				layer.msg('电话号码不能为空');
			 	return;
			}
			/* var ubirth=$("input[name='ubirth']").val();
			if(ubirth=="" || ubirth==null){
				layer.msg('生日不能为空');
			 	return;
			} */
			var upwd=$("input[name='upwd']").val();
			if(upwd=="" || upwd==null){
				layer.msg('密码不能为空');
				return;
			}
			var upwd1=$("input[name='upwd1']").val();
			if(upwd1=="" || upwd1==null){
				layer.msg('确认密码不能为空');
			 	return;
			}
			if(upwd!=upwd1){
				layer.msg('密码和确认密码不一致');
				return;
			}
			
			console.log(uname,uphone,usex,upwd,upwd1);
			$.ajax({
				url:"qian_longin2",//访问路径
				data:{
					upwd:upwd,
					usex:usex,
					uphone:uphone,
					uname:uname,
				},
				type:"post",//请求类型
				async:true,//是否同步请求
				error:function(){
					//访问错误会执行这个方法
					//404，500，405
				},
				success:function(data){
					if(data==0){
						layer.msg('注册成功', {time: 500, icon:6},function(){
							location.href="qian_longin";
						});
					}
					
				}
			});
		});
		
		function vals(){
			
			//setTimeout("changeState()",1000);
			return true;
		}
	
</script>
<script type="text/javascript">
$(function(){
	$(".wjmm").click(function(){
		layer.open({
			//skin: 'layui-layer-lan',
			title: ['找回密码', 'font-size:18px;'],
			  type: 1,
			  //skin: 'layui-layer-rim', //加上边框
			  area: ['420px', '290px'], //宽高
			  content: '<label class="zhuce-lable2 ggg">'
				+'<span>电话号码</span>'
			    +'<input type="text" id="phonesss" name="uphone_d"/>'
			    +'</label><label  class="zhuce-lable2">'
			  +'<span>验&nbsp;&nbsp;证&nbsp;&nbsp;码</span>'
			  +'<div class="code1">'
			  +'<input id="code1" type="text" autocomplete="off" placeholder="" name="yzm_d"/>'				
			+'<input id="btnSendCode1" type="button" class="btn btn-default" value="获取验证码"  onClick="sendMessage1()" />'	
				+'</div></label>'	
				+'<label class="zhuce-lable2"><span>确认密码</span><input type="password"  name="upwdss"/></label>'
				+'<div class="zc-div1s"><input type="button" name="gai" id="reg" value="确定修改"/></div>'    
				

		});
		/* 失去焦点判断电话号码是否注册过 */
		$('input[name="uphone_d"]').blur(function(){
			console.log($(this).val());
			var dianhua=$(this).val();
			$.ajax({
				url:"checkphone",//访问路径
				data:{
					uphone:	dianhua,
				},
				type:"post",//请求类型
				async:true,//是否同步请求
				error:function(){
					//访问错误会执行这个方法
					//404，500，405
				},
				success:function(data){
					if(data==1){
						$('input[ name="uphone_d"]').val("");
						layer.msg('该电话号码不存在', {time: 1000,icon: 6},function(){
							//location.href="qian_longin";
						});
						
					}else if(data==2){
						/* layer.msg('修改失败', {icon: 1}); */
						
					}
				}
			});
		});
		
		
		$('input[name="gai"]').click(function(){
			var phone=$('#phonesss').val();
			console.log(phone+"改密码电话号码")
			/* if(yzm=="" || yzm==null){
				layer.msg('请输入电话号码', {icon: 2});
				return;
			} */
			var yzm=$('#code1').val();
			var pwd=$('input[name="upwdss"]').val();
			if(yzm=="" || yzm==null){
				layer.msg('请输入验证码', {icon: 2});
				return;
			}
			if(pwd=="" || pwd==null){
				layer.msg('请输入确认密码', {icon: 2});
				return;
			}
			console.log(phone,yzm,pwd);
			//layer.msg('不一致');layer.msg('尼玛，打个酱油', {icon: 4});
			if($('.yanzm').html()!=0){
				$.ajax({
					url:"sms_servlet2?uphone="+phone+'&yzm='+yzm+"&upwd="+pwd,//访问路径
					type:"post",//请求类型
					async:true,//是否同步请求
					error:function(){
						//访问错误会执行这个方法
						//404，500，405
					},
					success:function(data){
						if(data==1){
							layer.msg('修改成功', {time: 600,icon: 6},function(){
								location.href="qian_longin";
							});
						}else if(data==2){
							layer.msg('修改失败', {icon: 1});
						}else if(data==3){
							layer.msg('验证码错误', {time: 500,icon: 2},function(){
								location.href="qian_longin";
							});
						}
					}
				});
			}else{
				layer.msg('请获取验证码', {time: 500,icon: 3});
			}
				
		});
		
	});
	
});

/* 登录验证 */
var phoneReg = /(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/;//手机号正则
var count = 60; //间隔函数，1秒执行
var InterValObj1; //timer变量，控制时间
var curCount1;//当前剩余秒数
/*第一*/
function sendMessage1() {
	curCount1 = count;		 		 
	var phone = $.trim($('#phonesss').val());
	console.log(phone)
	if (!phoneReg.test(phone)) {
		//alert(" 请输入有效的手机号码"); 
		/* layer.alert('请输入有效的手机号码', {
		  // skin: 'layui-layer-molv' //样式类名
		  closeBtn: 0,
		  anim: 3, //动画类型
		}); */
		layer.msg("请输入有效的手机号码", {time: 1000, icon:1},function(){
			/* location.href="table_typeservlet"; */
		});
		return false;
	}
	//设置button效果，开始计时
	$("#btnSendCode1").attr("disabled", "true");
	$("#btnSendCode1").val( + curCount1 + "秒再获取");
	InterValObj1 = window.setInterval(SetRemainTime1, 1000); //启动计时器，1秒执行一次
	//向后台发送处理数据
	//使用ajax异步请求技术
	var uphone=$('#phonesss').val();
	$.ajax({
		url:"sms_servlet?uphone="+uphone,//请求的地址（servlet）
		type:"post",//请求的方式 get，post
		dataType:"text", //数据类型 文本，html,json(响应数据类型)
		async:false,//是否异步 （false 表示同步处理，true表示异步处理）
		error:function(){ //请求后台有误
			alert("访问有误");
		},
		success:function(data){//回调函数 data后台响应的数据
			//console.log(data,typeof(data));
			//houtaiyzm=data;
			if(data==0){
				$('.yanzm').html(1);
			}
		}
	});
	
}
function SetRemainTime1() {
	if (curCount1 == 0) {                
		window.clearInterval(InterValObj1);//停止计时器
		$("#btnSendCode1").removeAttr("disabled");//启用按钮
		$("#btnSendCode1").val("重新发送");
	}
	else {
		curCount1--;
		$("#btnSendCode1").val( + curCount1 + "秒再获取");
	}
} 
</script>
</html>