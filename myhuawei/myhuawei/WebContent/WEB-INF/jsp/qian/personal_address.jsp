<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>我的地址</title>
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hint.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/personal.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/address.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/input-style.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/stylef.css"/>
		<style type="text/css">
			.add-three-li2{
				width: 435px;
			}
			.add-four-td2{
				width: 420px;
			}
			
		</style>
	</head>
	<body>
		<!-- 头部kaishi -->
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
		<!-- 中部内容 -->
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
									<a href="management_servlet"><li>个人信息</li></a>
									
								</ul>
							</li>
							<li class="perleft-li2">
								<h3>购买支持</h3>
								<ul>
									<a href="personal_addressservlet"><li id="bianhong">收货地址管理</li></a>
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
					
					<!-- 变化模块 -->
					<div class="address">
						<div class="add-one">
							收货地址管理
						</div>
						<!-- 地址表单提交 -->
						<div class="add-two">
							
							<div><span class="add-two-td1">* 收货人：</span>
								<div class="col-3 add-cdy1">
										<input class="effect-8 gai-name" type="text" placeholder="请输入姓名">
										<span class="focus-border">
										            	<i></i>
										</span>
								</div>
							</div>
							<div><span class="add-two-td1">* 手机号码：</span>
								<div class="col-3 add-cdy1">
										<input class="effect-9 gai-phone" type="text" placeholder="请输入手机号码">
										<span class="focus-border">
										            	<i></i>
										</span>
								</div>
							</div>
							<div><span class="add-two-td1">* 收获地址：</span>
								<!-- 地址插件  -->
								<select class="province not-arrow" id="province" name="province">
								  <option value="">选择省份</option>
								</select>
								<select class="city not-arrow" id="city" name="city">
								  <option value="">选择城市</option>
								</select>
								<select class="district not-arrow" id="district" name="district">
								  <option value="">选择区域</option>
								</select>
							</div>
							<div><textarea class="add-textatea" rows="5" cols="0" placeholder="如选择不到您的地区，请在此处详细描述"></textarea></div>
							<!-- <div><span class="add-two-td1">邮政编码：</span>
									<div class="col-3 add-cdy1">
											<input class="effect-9" type="text" placeholder="">
											<span class="focus-border">
											            	<i></i>
											</span>
									</div>
							</div> -->
							<div><span class="add-two-td1"></span> <span id="mmrr"></span></div>
							<div><span class="add-two-td1"></span><input  class="add-input-tianjia"  type="button" name="" id="" value="添加新地址" />
								<input  class="add-input-qingkong"  type="button" name="" id="" value="清  空" />
							</div>
							
						</div>
						<!-- 地址表单提交结束 -->
						<div  class="add-three">
							<ul>
								<li class="add-three-li1">收货人</li>
								<li class="add-three-li2">收货地址</li>
								<!-- <li class="add-three-li3">邮编</li> -->
								<li class="add-three-li4">手机/电话</li>
								<li class="add-three-li5">操作</li>
							</ul>
						</div>
						<div class="add-four">
							<table class="add-table" border="0" cellspacing="0" cellpadding="0">
							<c:forEach items="${dzlist1  }" var="d">
								<tr  class="add-table-tr1" value="${d.getAddid() }">
									<td>
										<div class="add-four-td1">${d.getAddname() }</div>
									</td>
									<td class="">
										<div class="add-four-td2">
											<span>${d.getAddsheng() }</span> <span>${d.getAddshi() }</span> <span>${d.getAddqu() }</span> <span>${d.getAdds() }</span> 
										</div>
									</td>
									<td>
										<div class="add-four-td4">${d.getAddphone() }</div>
									</td>
									<td>
										<div class="add-four-td5">
											<a href="#!"><span id="">${d.getAddid() }</span><p class="add-four-p1 hint hint--top" data-hint="编辑" name="${d.getAddid() }"><img src="stylejs/q/img/编辑_o.png" ></p> </a>
											<a href="#!"><span id="">${d.getAddid() }</span><p class="add-four-p2 hint hint--top" data-hint="删除"><img src="stylejs/q/img/叉叉2.png" ></p></a>
											<a href="#"><p class="add-four-p3" id="add-fp3">默认地址</p></a>
										</div>
									</td>
								</tr>
								</c:forEach>
								<c:forEach items="${dzlist2 }" var="d1">
								<tr  class="add-table-tr1" value="${d1.getAddid() }">
									<td>
										<div class="add-four-td1">${d1.getAddname() }</div>
									</td>
									<td class="">
										<div class="add-four-td2">
											<span>${d1.getAddsheng() }</span> <span>${d1.getAddshi() }</span> <span>${d1.getAddqu() }</span>  <span>${d1.getAdds() }</span> 
										</div>
									</td>
									<td>
										<div class="add-four-td4">${d1.getAddphone() }</div>
									</td>
									<td>
										<div class="add-four-td5">
											<a href="#!"><span id="">${d1.getAddid() }</span><p class="add-four-p1 hint hint--top" data-hint="编辑"><img src="stylejs/q/img/编辑_o.png" ></p> </a>
											<a href="#!"><span id="">${d1.getAddid() }</span><p class="add-four-p2 hint hint--top" data-hint="删除"><img src="stylejs/q/img/叉叉2.png" ></p></a>
											<a href="xhd_mr_shezhiservlet?addid=${d1.getAddid() }"><p class="add-four-p3" id="add-fp3">设置默认地址</p></a>
										</div>
										<%-- xhd_mr_shezhiservlet?addid=${d.getAddid() } --%>
									</td>
								</tr>
								</c:forEach>
							</table>
						</div>
					</div>
					
					
					
				</div>
			</div>
		</div>
		
		<!-- 底部开始 -->
		<jsp:include page="hwtail.jsp"></jsp:include>
		<!-- 底部结束 -->
	</body>
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/address.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hwhead.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/h/layer/layer.js" type="text/javascript" charset="utf-8"></script>
	<!-- 地址插件 -->
	<script src="stylejs/q/js/area.js"></script>
	<script type="text/javascript">
	  // 注意：功能兼容ie，样式完美兼容到ie11 
	  // 1.select原生下箭头样式兼容到ie10，需要在ie9及以下设置判断，区分样式
	  // 2.ie有页面刷新select框缓存的问题，缓存后不能直接选取城市，js设置的placeholder也会有影响
	  // 3.select框不能设置最大最小宽度
	  // 4.ie不兼容input placeholder 颜色，但是我们的select是js控制的，如果跟表单一同写，会有差异
	
	  var select = new SelectAddress('province', 'city', 'district', provinceList)
	  select.init()
	
	  var unSelected = "#999";
	  var selected = "#333";
	  $("select").css("color", unSelected);
	 //  $("option").css("color", selected);
	  $("#province").change(function () {
	    select.handleProvinceClick.apply(select)
	    var selItem = $(this).val();
	    if (selItem == $(this).find('option:first').val()) {
	      $(this).css({"color":unSelected,"border":"1px solid #888888"});
	    } else {
	      $(this).css("color", selected);
	    }
	    $("#city").css("color", unSelected);
	    $("#district").css("color", unSelected);
	  });
	  $("#city").change(function () {
	    select.handleCityClick.apply(select)
	    var selItem = $(this).val();
	    if (selItem == $(this).find('option:first').val()) {
	      $(this).css("color", unSelected);
	    } else {
	      $(this).css("color", selected);
	    }
	    $("#district").css("color", unSelected);
	  });
	  $("#district").change(function () {
	    select.handleDistrictClick.apply(select)
	    var selItem = $(this).val();
	    if (selItem == $(this).find('option:first').val()) {
	      $(this).css("color", unSelected);
	    } else {
	      $(this).css("color", selected);
	    }
	  });
	// 保存变成默认 地址
		$(".add-input-tianjia").click(function(){
			var id=$(this).prop("name");
			if(id==null||id==""){
				var addname=$('.gai-name').val();
				var addphone=$('.gai-phone').val();
				var addsheng=$('#province').val();
				var addshi=$('#city').val();
				var addqu=$('#district').val();
				var adds=$(".add-textatea").val();
				var myreg=/^[1][3,4,5,7,8,9][0-9]{9}$/;
				console.log(addname,addphone,addsheng,addshi,addqu,adds);
				
				/* var shu=$(".settle-oder-listp2").html();
				var conid=$(".set-conid").html(); */
				if(addname=="" || addname==null ||
						 addphone=="" || addphone==null ||
						 addsheng=="" || addsheng==null ||
						 addshi=="" || addshi==null ||
						 addqu=="" || addqu==null ||
						 adds=="" || adds==null)
				{
						layer.msg('请填写信息！', {icon: 5});
				}else{
					if(!myreg.test(addphone)){
						layer.msg('请输入有效的手机号码！');
					}else{
						$.ajax({
							url:"jia_dizhi_servlet2?addname="+addname+"&addphone="
									+addphone+"&addsheng="+addsheng+"&addshi="+addshi+"&addqu="
									+addqu+"&adds="+adds,//访问路径
							type:"post",//请求类型
							async:true,//是否同步请求
							error:function(){
								//访问错误会执行这个方法
								//404，500，405
							},
							success:function(data){
								if(data==0){
									location="personal_addressservlet";
								}
							}
						});
					}
				}
			}else{
				var addid=$(".add-input-tianjia").prop("name");
				var addname=$('.gai-name').val();
				var addphone=$('.gai-phone').val();
				var addsheng=$('#province').val();
				var addshi=$('#city').val();
				var addqu=$('#district').val();
				var adds=$(".add-textatea").val();
				var myreg=/^[1][3,4,5,7,8,9][0-9]{9}$/;
				//alert(addid+addname+addphone+addsheng+addshi+addqu+adds);
				
				/* var shu=$(".settle-oder-listp2").html();
				var conid=$(".set-conid").html(); */
				if(addname=="" || addname==null ||
						 addphone=="" || addphone==null ||
						 addsheng=="" || addsheng==null ||
						 addshi=="" || addshi==null ||
						 addqu=="" || addqu==null ||
						 adds=="" || adds==null)
				{
						layer.msg('请填写信息！', {icon: 5});
				}else{
					if(!myreg.test(addphone)){
						layer.msg('请输入有效的手机号码！');
					}else{
						$.ajax({
							url:"xhd_xiugai_servlet?addid="+addid+"&addname="+addname+"&addphone="
							+addphone+"&addsheng="+addsheng+"&addshi="+addshi+"&addqu="
							+addqu+"&adds="+adds,//访问路径
							type:"post",//请求类型
							async:true,//是否同步请求
							error:function(){
								//访问错误会执行这个方法
								//404，500，405
							},
							success:function(data){
								if(data==0){
									location="personal_addressservlet";
								}
							}
						});
					}
				}
			}
			
		});
	
		$(".add-four-p2").click(function(){
			//console.log($(this));
			var addid=$(this).parent().find("span").html();
			console.log(addid);
			$.ajax({
				url:"set_shan_dizhi_servlet?addid="+addid,//访问路径
				type:"post",//请求类型
				async:true,//是否同步请求
				error:function(){
					//访问错误会执行这个方法
					//404，500，405
				},
				success:function(data){
					if(data==0){
						location="personal_addressservlet";
					}
				}
			}); 
		});
		
		$('.add-four-p1').click(function() {
			var name=$(this).parent().parent().parent().siblings("td:eq(0)").find('div').html();
			var s=$(this).parent().parent().parent().siblings("td:eq(1)").find('div span:eq(0)').html();
			var c=$(this).parent().parent().parent().siblings("td:eq(1)").find('div span:eq(1)').html();
			var x=$(this).parent().parent().parent().siblings("td:eq(1)").find('div span:eq(2)').html();
			var j=$(this).parent().parent().parent().siblings("td:eq(1)").find('div span:eq(3)').html();
			var phone=$(this).parent().parent().parent().siblings("td:eq(2)").find('div').html();
			$('.gai-name').val(name);
			$('.gai-phone').val(phone);
			$('#province').val(s);
			$('#city').val(c).html("<option>"+c+"</option>");
			$('#district').val(x).html("<option>"+x+"</option>");
			$('.add-textatea').val(j);
			var addid=$(this).parent().find("span").html();
			$(".add-input-tianjia").prop("name",addid);
			$(".add-input-tianjia").val("确认修改");
		});
		$(".add-input-qingkong").click(function() {
			var addname=$('.gai-name').val("");
			var addphone=$('.gai-phone').val("");
			var addsheng=$('#province').val("");
			var addshi=$('#city').val("");
			var addqu=$('#district').val("");
			var adds=$(".add-textatea").val("");
			$(".add-input-tianjia").val("添加新地址");
		});
	</script>
</html>