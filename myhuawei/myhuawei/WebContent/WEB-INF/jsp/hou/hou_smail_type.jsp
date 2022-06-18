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
<title>后台小类别</title>
<style type="text/css">
		li{
			cursor: pointer;
		}
</style>
</head>
<body>
	<div class="table-responsive alert alert-info">
		<div class="card-toolbar clearfix">
			
                        <form class="pull-right search-bar" method="get" action="#!" role="form">
                          <div class="input-group">
                            
                            <input type="text" class="form-control" value="" name="keyword1" placeholder="请输入名称">
                        	<div class="input-group-btn">
                        	  <input type="hidden" name="search_field" id="search-field" value="title">
                        	  <button class="btn btn-info dropdown-toggle souss" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
                        		<i class="mdi mdi-magnify"></i> 搜索 <span class="bbttid"  style="display: none;">${btid }</span>
                        	  </button>
                        	
                        	</div>
                          </div>
                        </form>
                      				<!-- 新增按钮 <a class="btn btn-primary m-r-5 an-xiaoshi1" href="#!"><i class="mdi mdi-plus"></i> 新增</a> -->
                        <div class="toolbar-btn-action">
                      					<h3>小类别 </h3>
										
                      	</div>
                </div>
                
                <div class="card-body">
                
                <div class="table-responsive">
                <%-- <c:if test="${page.rows!=null and page.rows.size()>0 }"> --%>
      <table class="table table-striped">
        <thead>
          <tr>
            <th>小类别编号</th>
            <th>小类别名称</th>
            <th>图片</th>
            <th>状态</th>
            <th>操作</th>
          </tr>
        </thead>
        <tbody>
	<c:forEach items="${page.rows }" var="p">
			<tr>
	            <td>${p.smid } </td>
	            <td>${p.smname }</td>
	            <td>
					<img class="goods-img1" src="${p.smtu }" >
				</td>
				<td>
					<c:if test="${p.smstate==0 }" var="s">
												
						<span class="label label-success">上架中</span>
					
					</c:if>
					<c:if test="${p.smstate==1 }">
					
							<span class="label label-danger">下架中</span>
					
					</c:if>
				</td>
	            <td>
		  			
		  			<c:if test="${p.smstate==0 }" var="s">
						<div class="btn-group">
			  			  <a class="btn btn-dark m-r-5 smxiajia">
			  			  	<span id="smtypeid" style="display:none;">${p.smid }</span>
			  			  	<i class="mdi mdi-arrow-down-bold-box-outline"></i>下架</a>
			  			</div>
					</c:if>
					<c:if test="${p.smstate==1 }">
						<div class="btn-group">
			  			  <a class="btn btn-info m-r-5 smxiajia2" href="#!">
			  			  <span id="smtypeid" style="display:none;">${p.smid }</span>
			  			  <i class="mdi mdi-arrow-down-bold-box-outline"></i>上架</a>
			  			</div>
					</c:if>
	  			</td>
			</tr>
	</c:forEach>
	</tbody>
	      </table>
		  <ul class="pagination">
		    <li class="shang1"><span>«</span></li>
		    	<m:pages_houtai2 url_houtai2="ht_smail_servlet" page_houtai2="${page }"/>
		    	
		    <li class="xia1"><a href="#!">»</a></li>
		  </ul>
		  
		  	<span id="bttypeid" style="display:none;">${btid }</span>
		  <%-- </c:if> --%>
		  </div>
		  </div>
	   </div>
	
</body>
<script type="text/javascript" src="stylejs/h/js/jquery.min.js"></script>

<script type="text/javascript">

</script>
<script type="text/javascript">
	$(function() {
		/* 下一页 */
		$(".xia1").click(function() {
			var current=$(this).parent().find('#yema2').find("a").html();
			var ym=parseInt(current)+1;
			var ymmax=$(this).parent().find('.ym2').length;
			console.log(ymmax);
			if(ym<=ymmax){
				var btid=$(this).parent().parent().parent().parent().parent().find("#bttypeid").html();
				console.log(btid,ym);
				
				$(this).parent().parent().parent().parent().parent().load("ht_smail_servlet?btid="+btid+"&current="+ym,function(data){});
				
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
			console.log(ymmax);
			
			if(ym>0){
				var btid=$(this).parent().parent().parent().parent().parent().find("#bttypeid").html();
				console.log(btid,ym);
				$(this).parent().parent().parent().parent().parent().load("ht_smail_servlet?btid="+btid+"&current="+ym,function(data){});
				//location.href="table_dingdanservlet?current="+ym;
			}else{
				layer.msg('已经是第一页了！');
			}
			
		});
		
		// 下架小类
		$(".smxiajia").click(function(){
			//console.log($(this).parent().parent().parent().parent().parent().parent().parent());
			//console.log($(this).parent().parent().parent().parent().parent().parent().find("#bttypeid").html());
			//console.log($(this).find("#smtypeid").html());
			var current=$(this).parent().parent().parent().parent().parent().parent().parent().parent().find('#yema2').find("a").html();//页码
			var btid=$(this).parent().parent().parent().parent().parent().parent().parent().parent().find("#bttypeid").html();
			var smid=$(this).find("#smtypeid").html();
			var shuaxin=$(this).parent().parent().parent().parent().parent().parent().parent().parent().parent();
			layer.msg('下架成功', {time: 500, icon:6},function(){
				shuaxin.load("hou_gai_smailtype_state_servlet?btid="+btid+"&current="+current+"&smid="+smid,function(data){});
			});
			
		});
		
		// 上架小类
		$(".smxiajia2").click(function(){
			//console.log($(this).parent().parent().parent().parent().parent().parent().parent());
			//console.log($(this).parent().parent().parent().parent().parent().parent().find("#bttypeid").html());
			//console.log($(this).find("#smtypeid").html());
			var current=$(this).parent().parent().parent().parent().parent().parent().parent().parent().find('#yema2').find("a").html();//页码
			var btid=$(this).parent().parent().parent().parent().parent().parent().parent().parent().find("#bttypeid").html();
			var smid=$(this).find("#smtypeid").html();
			var shuaxin=$(this).parent().parent().parent().parent().parent().parent().parent().parent().parent();
			layer.msg('上架成功', {time: 500, icon:6},function(){
				shuaxin.load("hou_gai_smailtype_state_servlet2?btid="+btid+"&current="+current+"&smid="+smid,function(data){});
			});
			
		});
		
		/* 点击小类别的分页  */
		$(".ym2").click(function(){
			var current=$(this).html();
			console.log(current);
			var btid=$(this).parent().parent().parent().parent().parent().find("#bttypeid").html();
			console.log(btid);
			var index=$(this).parent().parent().parent().parent().parent().parent().parent().index();
			console.log(index);
			$(".big_type_tr1:eq("+(index)+")>td").load("ht_smail_servlet?btid="+btid+"&current="+current,function(data){});
		});
		
		
		
		
		/* 小类收索 */
		$(".souss").click(function() {
			var sou=$(this).parent().parent().find('input[name="keyword1"]').val();
			var btid=$(this).find(".bbttid").html();
			console.log(sou,btid);
			if(btid!="" || btid!=null){
				$(this).parent().parent().parent().parent().parent().parent()
				.load("ht_smail_servlet?btid="+btid+"&parma="+sou,function(data){});
			}
			
		})
	});
</script>
</html>