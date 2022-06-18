<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="tianadd">
			<!-- 白色部分 -->
			<div class="tianadd-one">
				<div class="tianadd-one-div1">
					添加地址
				</div>
				<div class="tianadd-one-div2 todd2">
					<span>* 收货人：</span>
					<div class="col-3">
						<input class="effect-9 gai-name" type="text" placeholder="请输入姓名">
					    <span class="focus-border">
					    	<i></i>
					    </span>
					</div>
				</div>
				<div class="tianadd-one-div2">
					<span>* 手机号码：</span>
					<div class="col-3">
						<input class="effect-9 gai-phone" type="text" placeholder="请输入电话号码">
					    <span class="focus-border">
					    	<i></i>
					    </span>
					</div>
				</div>
				<div class="tianadd-one-div2">
					<span>* 收货地址：</span>
					
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
				<div class="tianadd-one-div3">
					<textarea rows="0" cols="0" placeholder="如选择不到您的地区，请在此处详细描述"></textarea>
				</div>
				<div class="tianadd-one-div4">
					<span class="tianone-s1">取消</span>
					<span class="tianone-s2">保存并使用</span>
				</div>
				
				<img id="add-cha" src="stylejs/q/img/叉叉3.png" >
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
  $("select").css("color", unSelected);
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
		$(function() {
			/* 添加地址 */
			$("#add-cha").click(function(){
				$(".tianadd").hide();
			});
			// 关闭添加地址
			$(".tianone-s1").click(function(){
				$(".tianadd").hide();
			});
			
			// 保存变成默认 地址
			$(".tianone-s2").click(function(){
				//立即购买
				var shu=$(".shul").html();
				var conid=$(".conl").html();
				console.log(shu,conid);
				//
				var addname=$('.gai-name').val();
				var addphone=$('.gai-phone').val();
				var addsheng=$('#province').val();
				var addshi=$('#city').val();
				var addqu=$('#district').val();
				var adds=$(".tianadd-one-div3 textarea").val();
				var myreg=/^[1][3,4,5,7,8,9][0-9]{9}$/;
				console.log(addname,addphone,addsheng,addshi,addqu,adds);
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
									location="settlement?conid="+conid+"&shu="+shu;
								}
							}
						});
					}
				}
				
			});
		})
</script>
</html>