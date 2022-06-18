<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="m" uri="http://cn.gso.com/jsp/jstl/mytag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单详情</title>
<style type="text/css">
		li{
			cursor: pointer;
		}
</style>
</head>
<body>
	<!-- <div class="col-lg-12"> -->
            <div class="table-responsive alert alert-info">
              <div class="card-toolbar clearfix">
                <form class="pull-right search-bar" method="get" action="#!" role="form">
                  <div class="input-group">
                    
                    <input type="text" class="form-control" value="" name="keyword1" placeholder="请输入名称">
                	<div class="input-group-btn">
                	  <input type="hidden" name="search_field" id="search-field" value="title">
                	  <button class="btn btn-cyan dropdown-toggle souss" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
                		<i class="mdi mdi-magnify"></i> 搜索 <span class="oonn"  style="display: none;">${oonn }</span>
                	  </button>
                	
                	</div>
                  </div>
                </form>
				<!-- 新增按钮 -->
                <div class="toolbar-btn-action">
					<h4>订单详情-(<span id="ono2">${oonn }</span>)</h4>
				</div>
              </div>
              <div class="card-body">
                
                <div class="table-responsive">
                <%-- <c:if test="${page.rows!=null and page.rows.size()>0 }"> --%>
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <!-- <th>订单编号</th> -->
                        <th>商品名称</th>
                        <th>商品颜色</th>
                        <th>商品配置</th>
                        <th>商品单价</th>
                        <th>数量</th>
                      </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${page.rows }" var="p">
                    	<tr>
	                        <%-- <td>${p.getOnodo() }</td> --%>
	                        <td>${p.gname }</td>
	                        <td>${p.cname }</td>
	                        <td>${p.conname }</td>
	                        <td>${p.conjia }</td>
							<td>${p.doshu }</td>
                      	</tr>
                    </c:forEach>
                      
                    </tbody>
                  </table>
                </div>
                <ul class="pagination">
                  <li class="shang1"><a href="#!">«</a></li>
                 		<m:pages_houtai2 url_houtai2="ht_smail_servlet" page_houtai2="${page }"/>
                  <li class="xia1"><a href="#!">»</a></li>
                </ul>
       			<span id="bttypeid" style="display:none;">${oonn }</span>
              </div>
            </div>
       <%--    </c:if> --%>
   <!--   </div> -->
</body>
<script type="text/javascript" src="stylejs/h/js/jquery.min.js"></script>
<script type="text/javascript">
		$(function() {
			/* 点击小类别的分页  */
			$(".ym2").click(function(){
				var current=$(this).html();
				console.log(current);
				var xq=$(this).parent().parent().parent().parent().parent();
				var ono=$(this).parent().parent().parent().find("#bttypeid").html();
				console.log(ono);
				xq.load("hou_dingdan_xiangqing_servlet?ono="+ono+"&current="+current,function(data){});
			});
			
			
			/* 下一页 */
			$(".xia1").click(function() {
				var current=$(this).parent().find('#yema2').find("a").html();
				var ym=parseInt(current)+1;
				var ymmax=$(this).parent().find('.ym2').length;
				console.log(ymmax,ym);
				if(ym<=ymmax){
					var ono=$(this).parent().parent().parent().find("#bttypeid").html();
					console.log(ono,ym);
					
					$(this).parent().parent().parent().parent().load("hou_dingdan_xiangqing_servlet?ono="+ono+"&current="+ym,function(data){});
					
					//location.href="table_dingdanservlet?current="+ym;
				}else{
					layer.msg('已经是最后一页了！');
				}
				
			});
			/* 上一页 */
			$(".shang1").click(function() {
				var current=$(this).parent().find('#yema2').find("a").html();
				var ym=parseInt(current)-1;
				var ymmax=$(this).parent().find('.ym2').length;
				console.log(ymmax,ym);
				
				if(ym>0){
					var ono=$(this).parent().parent().parent().find("#bttypeid").html();
					console.log(ono,ym);
					$(this).parent().parent().parent().parent().load("hou_dingdan_xiangqing_servlet?ono="+ono+"&current="+ym,function(data){});
					//location.href="table_dingdanservlet?current="+ym;
				}else{
					layer.msg('已经是第一页了！');
				}
				
			});
			
			
			
			
			
			/* 详情搜索  */
			$(".souss").click(function() {
				var sou=$(this).parent().parent().find('input[name="keyword1"]').val();
				var ono=$(this).find(".oonn").html();
				console.log(sou,ono);
				if(ono!="" || ono!=null){
					$(this).parent().parent().parent().parent().parent().parent()
					.load("hou_dingdan_xiangqing_servlet?ono="+ono+"&parma="+sou,function(data){});
				}else{
					layer.msg('没有东西', {time: 500, icon:6},function(){
					});
				}
				
			})
		});
		
		
		
</script>
</html>