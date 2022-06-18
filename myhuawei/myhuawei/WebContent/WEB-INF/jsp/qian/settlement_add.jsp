<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>编辑地址</title>
</head>
<body>
	<!-- 编辑地址 -->
		<div class="tianadd1">
			<!-- 白色部分 -->
			<div class="tianadd-one1">
				<div class="tianadd-one-div11">
					编辑地址
					<span id="gai-addid" style="display:none;">${set_address.getAddid() }</span>
				</div>
				<div class="tianadd-one-div21 todd2 gai-name">
					<span>* 收货人：</span>
					<div class="col-3">
						<input class="effect-9" type="text" placeholder="请输入姓名" value="${set_address.getAddname() }">
					    <span class="focus-border">
					    	<i></i>
					    </span>
					</div>
				</div>
				<div class="tianadd-one-div21 gai-phone">
					<span>* 手机号码：</span>
					<div class="col-3">
						<input class="effect-9" type="text" placeholder="请输入电话号码" value="${set_address.getAddphone() }" >
					    <span class="focus-border">
					    	<i></i>
					    </span>
					</div>
				</div>
				<div class="tianadd-one-div21">
					<span>* 收货地址：</span>
					
							<!-- 地址插件  -->
					     <select class="province not-arrow" id="province" name="province">
					        <option value="${set_address.getAddsheng() }">${set_address.getAddsheng() }</option>
					      </select>
					      <select class="city not-arrow" id="city" name="city">
					        <option value="${set_address.getAddshi() }">${set_address.getAddshi() }</option>
					      </select>
					      <select class="district not-arrow" id="district" name="district">
					        <option value="${set_address.getAddqu() }">${set_address.getAddqu() }</option>
					      </select>
				</div>
				<div class="tianadd-one-div31">
					<textarea rows="0" cols="0" placeholder="如选择不到您的地区，请在此处详细描述">${set_address.getAdds() }</textarea>
				</div>
				<div class="tianadd-one-div41">
					<span class="tianone-s11">取消</span>
					<span class="tianone-s21">保存</span>
				</div>
				
				<img id="add-cha1" src="stylejs/q/img/叉叉3.png" >
			</div>
		</div>
				
		
	
	
</body>
<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
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
  //$("select").css("color", unSelected);
  // $("option").css("color", selected);
  $("#province").change(function () {
    select.handleProvinceClick.apply(select)
    var selItem = $(this).val();
    if (selItem == $(this).find('option:first').val()) {
      $(this).css("color", unSelected);
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
</script>
<script type="text/javascript">
$(function(){
	// 编辑地址
	$(".sap-xf-span2").click(function(){
		//console.log($(this));
		$(".tianadd1").show();
	});
	$("#add-cha1").click(function(){
		$(".tianadd1").hide();
	});
	$(".tianone-s11").click(function(){
		$(".tianadd1").hide();
	});
	
	// 保存更改
	$(".tianone-s21").click(function(){
		//立即购买
		var shu=$(".shul").html();
		var conid=$(".conl").html();
		//
		var addid=$("#gai-addid").html();
		var addname=$('.gai-name').find(".effect-9").val();
		var addphone=$('.gai-phone').find(".effect-9").val();
		var addsheng=$('#province').val();
		var addshi=$('#city').val();
		var addqu=$('#district').val();
		var adds=$(".tianadd-one-div31 textarea").val();
		var myreg=/^[1][3,4,5,7,8,9][0-9]{9}$/;
		console.log(addid,addname,addphone,addsheng,addshi,addqu,adds);
		if(addname=="" || addname==null ||
				 addphone=="" || addphone==null ||
				 addsheng=="" || addsheng==null ||
				 addshi=="" || addshi==null ||
				 addqu=="" || addqu==null ||
				 adds=="" || adds==null ||
				 addid=="" || addid==null )
		{
				layer.msg('请填写信息！', {icon: 5});
		}else{
			if(!myreg.test(addphone)){
				layer.msg('请输入有效的手机号码！');
			}else{
				$.ajax({
					url:"set_address_gai_servlet?addid="+addid+"&addname="+addname+"&addphone="
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
							location="settlement?conid="+conid+"&shu="+shu;
						}
					}
				});
			}
		}
		
	});
});
</script>
</html>