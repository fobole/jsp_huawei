<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>购物车</title>
		<!-- rel 默认样式图标 -->
		<link rel="shortcut icon" href="stylejs/q/img/华为1.png">
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hw_shop_car.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwhead.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hwtail.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/stylef.css"/>
		<link rel="stylesheet" type="text/css" href="stylejs/q/css/hover.css"/>
		<style type="text/css">

			            ul,li {
			                list-style: none;
			            }
			            
			            a {
			                text-decoration: none;
			            }
			            
			            a:hover {
			                cursor: pointer;
			                text-decoration: none;
			            }
			            
			            a:link{
			                text-decoration: none;
			            }
			            
			            img{
			                vertical-align: middle;
			            }
			            
			            .btn-numbox{
			                /* overflow: hidden; */
			                /* margin-top: 20px; */
							margin-left: 35px;
							/* border: 1px solid red; */
			            }
			            
			            .btn-numbox li{
			                float: left;
							
			            }
						
			            
			            .btn-numbox li .number,
			            .kucun {
			                display: inline-block;
			                font-size: 12px;
			                color: #808080;
			                vertical-align: sub;
			            }
			            
			            .btn-numbox .count{
			                overflow: hidden;
			                margin: 0 16px 0 -20px;
			            }
			            
			            .btn-numbox .count .num-jian,.input-num,.num-jia {
			                display: inline-block;
			                width: 26px;
			                height: 26px;
			                line-height: 28px;
			                text-align: center;
			                font-size: 18px;
			                color: #999;
			                cursor: pointer;
			                border: 1px solid #e6e6e6;
			            }
			            .btn-numbox .count .input-num{
			                width: 48px;
			                height: 26px;
			                color: #333;
			                border-left: 0;
			                border-right: 0;
			            }
	/* 购物车没内容是 */					
.sc-empty{
	width: 1200px;
	height: 385px;
	background: white;
	text-align: center;
	margin-top: 20px;
	margin-bottom: 20px;
	padding-top: 135px;
}
.sc-empty p{
	font-size: 18px;
	color: #A4A4A4;
	margin-top: 20px;
	
	
}
.sc-empty a{
	font-size: 18px;
	color: white;
	width: 172px;
	height: 46px;
	background: #CA141D;
	display: inline-block;
	margin-top: 20px;
	line-height: 46px;
}
		</style>
	</head>
	<body>
		<!-- 头部开始 -->
		<jsp:include page="hwhead.jsp"></jsp:include>
		<!-- 头部结束 -->
		<div class="shopcar-big">
			
			<c:if test="${shopcarlist!=null and shopcarlist.size()>0 }" var="kong">
			<div class="shopcar-quanxuan">
				<ul>
					<li id="shopcar-qx-li1">
						<input type="checkbox" class="checkAll"  value="" />
						<span>全选</span>
					</li>
					<li id="shopcar-qx-li2">
						<span>商品</span>
					</li>
					<li>
						<span>单价</span>
					</li>
					<li>
						<span>数量</span>
					</li>
					<li>
						<span>小计</span>
					</li>
					<li>
						<span>操作</span>
					</li>
				</ul>
			</div>
			<div class="shopcar-shop">
				<ul>
					<c:forEach items="${shopcarlist }" var="c">
							<li>
								<div class="shopcar-shop-one">
									<p class="shop-shoe-p1">
										<c:if test="${c.caris==0 }">
											<input type="checkbox"  checked="checked" name="chkItem" id="" value="${c.carid }"/>
										</c:if>
										<c:if test="${c.caris==1 }">
											<input type="checkbox" name="chkItem" id="" value="${c.carid }"/>
										</c:if>
									</p>
									<p  class="shop-shoe-p1">
										<img src="${c.cimg }" >
									</p>
								</div>
								<ul>
									<li id="shop-shoe-li1">
										<p>${c.gname } ${c.conname }（${c.cname }）<br>
											${c.cname }  ${c.conname } 官方标配
										</p>
									</li>
									<li id="shop-shoe-li2">
										￥<span><fmt:formatNumber value="${c.conjia }" type="currency" pattern=".00"/>
										</span>
									</li>
									<li id="shop-shoe-li3">
										<ul class="btn-numbox">
										            <!--  -->
										            <li>
										                <ul class="count">
										                    <li><span id="num-jian" class="num-jian">-</span></li>
										                    <li style="display:none;"><input id="number1" value="${c.carid }"></li>
										                    <li><input type="text" class="input-num" id="input-num" value="${c.carcount }" oninput="var v=this.value||'';v=v.replace(/[^\d]/g,'');if(v.length==1 && v==0){v=''};this.value=v.substr(0,2);"/></li>
										                    <li><span id="num-jia" class="num-jia">+</span></li>
										                </ul>
										            </li>
										           <!-- <li><span class="kucun">（库存:54）</span></li> -->
										</ul>
									</li>
									<li id="shop-shoe-li4">
										￥<span><fmt:formatNumber value="${c.conjia*c.carcount }" type="currency" pattern=".00"/></span>
									</li>
									<li id="shop-shoe-li5">
										<a>删除</a>
									</li>
								</ul>
							</li>
					</c:forEach>
					
				</ul>
			</div>
			<!-- 购买 -->
			<div class="shop-goumai">
				<p class="shop-gmp2">
					继续购物
				</p>
				<!-- <p class="shop-gmp2">
					全选
				</p>
				<p class="shop-gmp3">
					删除
				</p> -->
				
				<a><p id="shop-gmp5" class="hvr-bounce-to-right">
					立即结算
				</p></a>
				<p id="shop-gmp4">
					总计：<span style="color:#CF0A2C;font-size: 18px;">￥</span><span id="shop-zj-s1"><fmt:formatNumber value="${amount==null?0:amount}" pattern="#.00"/></span> <br>
					<span id="shop-zj-s2">已购买&nbsp;</span><span class="shop-zj-s3">${total==null?0:total}</span><span id="shop-zj-s2">&nbsp;件商品</span>
				</p>
			</div>
			</c:if>
			
			<!-- 购物车没内容 -->
			<c:if test="${not kong }">
			<div class="sc-empty">
					<span class="icon-minicart">
						<img src="stylejs/q/img/icon-header-minicart.32e5f81.png" >
					</span>
					<p>您的购物车里什么也没有哦~</p>
					<a href="lunboservlet">去逛逛</a>
			</div>
			</c:if>
		</div>
		
		<!-- 底部开始 -->
		<jsp:include page="hwtail.jsp"></jsp:include>
		<!-- 底部结束 -->
	</body>
	<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/layer/layer.js" type="text/javascript" charset="utf-8"></script>
	<script src="stylejs/q/js/hw_shop_car.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		$(function(){
			// 放回上一级
			$('.shop-gmp2').click(function () {
				window.history.back(-1);
			});
			//
			if($("[name=chkItem][type='checkbox']:checked").length == $(".shopcar-shop>ul>li").length){
				$(".checkAll").prop("checked",true);
			}else{
				$(".checkAll").prop("checked",false);
			}
			//结算
			$("#shop-gmp5").click(function(){
				var flag=0;
				var goodsNum=0;
				var goodsAmount=0;
				//判断是否有选中商品
				$("[name=chkItem]:checkbox").each(function(v,i){
					if($(this).is(":checked")){
						goodsNum=$("#shop-zj-s1").html();
						goodsAmount=$(".shop-zj-s3").html();
						//将选中商品信息传入servlet
						flag++;
					}/* else{
						//如果没有一条选中的则提示请选择商品
						//flag=false;
					} */
				});
				if(flag>0){
					//去结算
					location.href="settlement?goodsAmount="+goodsAmount+"&goodsNum="+goodsNum;
				}else{
					//alert("");
					layer.msg('请选择商品!', {time: 2000, icon:3});
				}
			});
			
			
			/* var carzong=0;
			var carzshu=0; */
			//全选
	        $(".checkAll").change(function(){
	
				//获得全选框的选中状态
				var ischecked=$(this).prop("checked");
				//int类型的变量用来控制选中状态的值
				var i=1;
				if(ischecked){
					i=0;
					$("[name=chkItem]:checkbox").addClass("checked");
				}else{
					i=1;
					$("[name=chkItem]:checkbox").removeClass("checked");
				}
				//将所有的购物车商品的单选框全部选中或全部取消
				$("[name=chkItem]:checkbox").each(function(i,e){
						$("[name=chkItem]:checkbox").eq(i).prop("checked",ischecked);
						//$(this).prop("checked",ischecked);
				});
				//使用ajax操作数据库，让他和页面的选中与否进行同步
				$.ajax({
					url:"change_checked_servlet?",//访问路径
					data:{
						a:1,//是否全选操作
						ischecked:i
					},
					type:"post",//请求方式
					dataType:"html",//响应数据类型
					async:true,//是否同步【请求等我这执行完了你才能执行我下面的脚本】
					error:function(){
						//访问错误  404(路径) 500(代码) 405(请求类型和访问的不一样)
						alert("访问错误！");
					},
					success:function(data){
						//修改总件数和总金额
						var json = eval(data);
						//console.log(json.total)
						//console.log(parseFloat(json.amount).toFixed(2))
						$(".shop-zj-s3").text(json.total);
						$("#shop-zj-s1").text(parseFloat(json.amount).toFixed(2));
					}
				});
				
	        }); 
			
			
			// 单个全选中 checkAll选中
			$("[name=chkItem][type='checkbox']").change(function(){
				if($("[name=chkItem][type='checkbox']:checked").length == $(".shopcar-shop>ul>li").length){
					$(".checkAll").prop("checked",true);
				}else{
					$(".checkAll").prop("checked",false);
				}
				//获得全选框的选中状态
				var ischecked = $(this).prop("checked");
				var carid = $(this).val();
				//console.log(carid)
				//int类型的变量，用来控制选中状态的值
				var i = 1;
				if(ischecked){
					i = 0;
					$(this).addClass("checked");
				}else{
					$(this).removeClass("checked");
				}
				//使用ajax操作数据库
				$.ajax({
					url:"change_checked_servlet2?",//访问路径
					data:{
						ischecked:i,
						carid:carid
					},
					type:"post",//请求类型
					async:true,//是否同步请求
					error:function(){
						//访问错误会执行这个方法
						//404，500，405
					},
					success:function(data){
						//修改总件数和总金额
						var json = eval(data);
						//console.log(json.total)
						//console.log(parseFloat(json.amount).toFixed(2))
						$(".shop-zj-s3").text(json.total);
						$("#shop-zj-s1").text(parseFloat(json.amount).toFixed(2));
					}
				});
					
			});
			
			
			// 
			/* $("[name=chkItem]:checkbox").change(function(){
				//console.log($(this))
			    $(this).attr("checked", this.checked);
				xuanzhong();
			}); */
	 
		   
		   
			
			
			//数字加减框
			$("body").on("click",".num-jian",function (m) {
			       var obj = $(this).closest("ul").find(".input-num");
			       if (obj.val() <= 1) {
			            obj.val(1);
			       } else {
			            obj.val(parseInt(obj.val()) - 1);
			       }
				   
				  var shu=obj.val();
				  var carcount=obj.val();
				  var carid = $(this).closest("ul").find('#number1').val();
				  var xiaoji=$(this).parent().parent().parent().parent().parent().parent().find('#shop-shoe-li4>span');
				   $.ajax({
						url:"gwc_gaishu_servlet?",//访问路径
						data:{
							carid:carid,
							carcount:carcount
						},
						type:"post",//请求类型
						async:true,//是否同步请求
						error:function(){
							//访问错误会执行这个方法
							//404，500，405
						},
						success:function(data){
							/* 加载购物车数量 */
							$(".sxgwc").load("tou_gouwuche_josn_servlet",function(data){});
							//修改总件数和总金额
							var json = eval(data);
							$(".shop-zj-s3").text(json.total);
							$("#shop-zj-s1").text(parseFloat(json.amount).toFixed(2));
							xiaoji.text(parseFloat(json.xiaoji).toFixed(2));
						}
					});
			     obj.change();
			 });
			
			 $("body").on("click",".num-jia",function (m) {
			       var obj = $(this).closest("ul").find(".input-num");
				   if (obj.val() >= 99) {
				        obj.val(99);
				   } else {
				        obj.val(parseInt(obj.val()) + 1);
				   }
				   var carcount=obj.val();
				   var carid =$(this).closest("ul").find('#number1').val();
				   var xiaoji=$(this).parent().parent().parent().parent().parent().parent().find('#shop-shoe-li4>span');
				   $.ajax({
						url:"gwc_gaishu_servlet?",//访问路径
						data:{
							carid:carid,
							carcount:carcount
						},
						type:"post",//请求类型
						async:true,//是否同步请求
						error:function(){
							//访问错误会执行这个方法
							//404，500，405
						},
						success:function(data){
							/* 加载购物车数量 */
							$(".sxgwc").load("tou_gouwuche_josn_servlet",function(data){});
							//修改总件数和总金额
							var json = eval(data);
							$(".shop-zj-s3").text(json.total);
							$("#shop-zj-s1").text(parseFloat(json.amount).toFixed(2));
							//console.log(parseFloat(json.xiaoji).toFixed(2));
							xiaoji.text(parseFloat(json.xiaoji).toFixed(2));
						}
					});
				   
				   /* //小计
				    var danjia=obj.parent().parent().parent().parent().parent().parent().find('#shop-shoe-li2>span').text();
				     //小计总价
				    var xiaojizong=shu*danjia;
				    // 服值
				   var z=obj.parent().parent().parent().parent().html(xiaojizong+".00");
				     //  */
				   
			      obj.change();
				  
			 });
			 
			 /* 手动输入 */
			$(".input-num").keyup(function(){
				console.log($(this).val())
				if($(this).val()==""){
					$(this).val(1);
				}
				var carcount=$(this).val();
				var carid = $(this).closest("ul").find('#number1').val();
				var xiaoji=$(this).parent().parent().parent().parent().parent().parent().find('#shop-shoe-li4>span');
				   $.ajax({
						url:"gwc_gaishu_servlet?",//访问路径
						data:{
							carid:carid,
							carcount:carcount
						},
						type:"post",//请求类型
						async:true,//是否同步请求
						error:function(){
							//访问错误会执行这个方法
							//404，500，405
						},
						success:function(data){
							/* 加载购物车数量 */
							$(".sxgwc").load("tou_gouwuche_josn_servlet",function(data){});
							//修改总件数和总金额
							var json = eval(data);
							$(".shop-zj-s3").text(json.total);
							$("#shop-zj-s1").text(parseFloat(json.amount).toFixed(2));
							xiaoji.text(parseFloat(json.xiaoji).toFixed(2));
						}
					});
			 
		
			 });
			 
			// 删除;
			$("#shop-shoe-li5>a").click(function(){
			 	//console.log($(this))
				var shan=$(this);
			 	var carid=$(this).parent().parent().parent().find("#number1").val();
			 	console.log(carid);
				layer.confirm('确定删除这个商品吗？？？', {
					title: ['购物车商品', 'font-size:16px;'],
				  btn: ['确定','取消'] //按钮
				 }, function(){
					shan.parent().parent().parent().remove();
					layer.msg('删除成功！！', {time: 1000, icon:6});
					if($("[name=chkItem][type='checkbox']:checked").length == $(".shopcar-shop>ul>li").length){
						$(".checkAll").prop("checked",true);
					}else{
						$(".checkAll").prop("checked",false);
					}
					$.ajax({
						url:"gwc_shanchu_servlet?",//访问路径
						data:{
							carid:carid,
						},
						type:"post",//请求类型
						async:true,//是否同步请求
						error:function(){
							//访问错误会执行这个方法
							//404，500，405
						},
						success:function(data){
							/* 加载购物车数量 */
							$(".sxgwc").load("tou_gouwuche_josn_servlet",function(data){});
							//修改总件数和总金额
							var json = eval(data);
							$(".shop-zj-s3").text(json.total);
							$("#shop-zj-s1").text(parseFloat(json.amount).toFixed(2));
							console.log(json.shus+"_______");
							if(json.shus==0){
								 layer.msg('删除成功', {time: 1000, icon:6},function(){
									 location.href="hw_shop_carservlet";
								 });
								
							}
						}
					});
				   
				 });
				
			 });
			 
			
			
		});
	</script>
</html>
