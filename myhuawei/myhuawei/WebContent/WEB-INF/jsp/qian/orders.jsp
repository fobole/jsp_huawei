<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="m" uri="http://cn.gso.com/jsp/jstl/mytag" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
	<c:forEach items="${page.rows}" var="x">
		<div class="per-dingdan-one">
		
			<span><fmt:formatDate value="${x.ocreatetime }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/></span>
			<span>订单号：</span>
			<span>${x.ono }</span>
		</div>
		<!-- 订单表格 -->
		<div class="pleft-col">
		
	<c:set value="${fn:length(map[x.ono]) }" var="count"></c:set>							<!-- 订单 -->
			<table class="left-cd-table" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td class="pleft-col-one" rowspan="${count }">
							<ul>
							
							<c:forEach items="${map[x.ono] }" var="d" varStatus="c">
							<%-- <c:if test="${c.count==1 }">  --%>
								<li>
									<%-- <span class="xqbh" style="display: none;">${d.doid }</span> --%>
									<p class="pleftcol-one-p1" rowspan="${count }">
										<img src="${d.cimg }" >
										<span>${d.gname} ${d.conname }（${d.cname }）</span>
									</p>
									<p class="pleftcol-one-p2" rowspan="${count }"><fmt:formatNumber value="${d.gjiage }" type="currency" pattern="￥.00"/></p>
									<p class="pleftcol-one-p3" rowspan="${count }">${d.doshu }</p>
									
								</li>
								<%-- </c:if> --%>
								</c:forEach>
								
							</ul>
						
					</td>
					
					<td class="pleft-col-two" rowspan="${count }">
							
							<c:if test="${x.ostates==0}">
								待付款
							</c:if>
							<c:if test="${x.ostates==1}">
								待发货
							</c:if>
							<c:if test="${x.ostates==2}">
								已取消
							</c:if>
							<c:if test="${x.ostates==3}">
								已退货
							</c:if>
							<c:if test="${x.ostates==4}">
								待收货
							</c:if> 
							<c:if test="${x.ostates==5}">
								待评价
							</c:if>  
							<c:if test="${x.ostates==6}">
								已完成
							</c:if> 
							<c:if test="${x.ostates==7}">
								退款中
							</c:if>
							<c:if test="${x.ostates==8}">
								已退款
							</c:if>
							<c:if test="${x.ostates==9}">
								退货中
							</c:if>
					</td>
					<td class="pleft-col-three" rowspan="${count }">${x.opay }</td>
					<td  class="pleft-col-four" rowspan="${count }">
						<c:if test="${x.ostates==0}">
							<a href="checkstandservlet?ono=${x.ono }"><p>立即支付</p></a>
							<a href="xhd_xiugaiservlet?ono=${x.ono }"><p>修改订单</p></a>
							<a href="orderdetailsservlet?ono=${x.ono }"><p>订单详情</p></a>
						</c:if>
						<c:if test="${x.ostates==1}">
						<a href="xhd_tuikuanservlet?ono=${x.ono }"><p>立即退款</p></a>
						<a href="xhd_xiugaiservlet?ono=${x.ono }"><p>修改订单</p></a>
							<a href="orderdetailsservlet?ono=${x.ono }"><p>订单详情</p></a>
						</c:if>
						<c:if test="${x.ostates==2}">
							<a href="xhd_ddscservlet?ono=${x.ono }"><p>删除订单</p></a>
							<a href="orderdetailsservlet?ono=${x.ono }"><p>订单详情</p></a>
						</c:if>
						<c:if test="${x.ostates==3}">
							<a href="orderdetailsservlet?ono=${x.ono }"><p>订单详情</p></a>
						</c:if>
						<c:if test="${x.ostates==4}">
							<a href="xhd_tuihuoservlet?ono=${x.ono }"><p>确认退货</p></a>
							<a href="xhd_shouhuoservlet?ono=${x.ono }"><p>确认收货</p></a>
							<a href="orderdetailsservlet?ono=${x.ono }"><p>订单详情</p></a>
						</c:if> 
						<c:if test="${x.ostates==9}">
							<a href="orderdetailsservlet?ono=${x.ono }"><p>订单详情</p></a>
						</c:if> 
						<c:if test="${x.ostates==7}">
							<a href="orderdetailsservlet?ono=${x.ono }"><p>订单详情</p></a>
						</c:if> 
						<c:if test="${x.ostates==5}">
							<a href="xhd_ddscservlet?ono=${x.ono }"><p>删除订单</p></a>
							<a href="#!" class="ping"><p>评价商品
								
								<span style="display: none;">${x.ono }</span>
							</p></a>
							<a href="orderdetailsservlet?ono=${x.ono }"><p>订单详情</p></a>
						</c:if> 
						<c:if test="${x.ostates==8}">
							<a href="xhd_ddscservlet?ono=${x.ono }"><p>删除订单</p></a>
							<a href="orderdetailsservlet?ono=${x.ono }"><p>订单详情</p></a>
						</c:if> 
						<c:if test="${x.ostates==6}">
							<a href="xhd_ddscservlet?ono=${x.ono }"><p>删除订单</p></a>
							<a href="orderdetailsservlet?ono=${x.ono }"><p>订单详情</p></a>
						</c:if>  
					</td>
					
						
				</tr>
				
			</table>

		</div>
		</c:forEach>
		<img id="aimg" style="display: none;">
		
		<script src="stylejs/q/js/jquery-3.6.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="stylejs/h/layer/layer.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript"  src="stylejs/h/public/index.js"></script>
		<script type="text/javascript">
			$(function() {
				$(".ping").click(function() {
					var ono=$(this).find("span").html();
					//alert(ono)
					layer.open({
						skin: 'demo-class',
						title: ['回复评论', 'font-size:18px;'],
					  type: 1,
					  // skin: 'layui-layer-rim', //加上边框
					  area: ['500px', '365px'], //宽高
					  content: '<form><div class="huifu-di"><label>选择商品</label><select name="type" class="gname" id="type"></select></div>  <div class="huifu-di"><label>评论的话</label><textarea class="form-control" id="seo_description" name="seo_description" rows="5" value="" placeholder="回复内容"></textarea></div>'
					  +'<div class="huifu-di"><label>评论图片</label><div id="cupload"> <div class="upload imgLog2"><span><i class="glyphicon glyphicon-open"></i>评论图</span></div> </div></div>'
					  +'<button type="button" class="btn btn-primary ajax-post prompa">确 定 回 复</button></form>'
					
					
					});
					$(".gname").load("xzspservlet?ono="+ono,function(data){});
					var img2 = new ImgUpload('.imgLog2',50,50,50);
					
					
						    $(document).on('change',".imgLog2 input",function(e){
						    	//模拟后台返回url
						    	var url = window.URL.createObjectURL(e.target.files[0]);
						    	const formData = new FormData();
						        formData.append('file', e.target.files[0]);
						        formData.append('testName', '我是传送文件标识')
								console.log(formData.get('file')+"#######");
						        $('#loading').show();
						        var aimg=$("#aimg");
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
						                	aimg.attr("src",res);
						                	console.log(res);
						                }
						            }
						        });
						        
						    	$(this).parent().css('background','url('+url+')0% 0% / cover')
							    img2.setSpan(this)
							    //console.log(e.target.files[0]+"!")
								console.log(window.URL.createObjectURL(e.target.files[0]));
					});
						    $(".prompa").click(function() {
								var plnr=$(".form-control").val();
								//alert(plnr);
								var conid=$(".gname").val();
								var str = conid.split(',');
								
								var img=$("#aimg").attr("src");
								
								$.ajax({
									url:"xhd_qdplservlet?conid="+str[0]+"&str1="+str[1]+"&plnr="
											+plnr+"&img="+img+"&ono="+ono,//访问路径
									type:"post",//请求类型
									async:true,//是否同步请求
									error:function(){
										//访问错误会执行这个方法
										//404，500，405
									},
									 success:function(data){
										if(data==0){
											location="orderdetailsservlet?ono="+ono;
										}
									} 
								});
							});
				});
			});
		</script>