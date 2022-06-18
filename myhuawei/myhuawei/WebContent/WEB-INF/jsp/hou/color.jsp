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
<title>颜色</title>
</head>
<body>
		<div class="col-lg-12 alert alert-info">
							    <div class="card">
							      <div class="card-toolbar clearfix">
							        <form class="pull-right search-bar" method="get" action="#!" role="form">
							          <div class="input-group">
							            
							            <input type="text" class="form-control" value="" name="keyword" placeholder="请输入名称">
							  					<div class="input-group-btn">
							  					  <input type="hidden" name="search_field" id="search-field" value="title">
							  					  <button class="btn btn-default dropdown-toggle" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
							  						<i class="mdi mdi-magnify"></i>搜索
							  					  </button>
							  					
							  					</div>
							  				  </div>
							        </form>
							  			<div class="toolbar-btn-action">
							  					<h4>${gid }号商品所有颜色</h4>
							  			</div>
							      </div>
							      <div class="card-body">
							        
							        <div class="table-responsive">
							          <table class="table table-bordered">
							            <thead>
							              <tr>
							                <th>颜色编号</th>
							                <th>商品名称</th>
							                <th>颜色图片</th>
							                <th>操作</th>
							              </tr>
							            </thead>
							            <tbody>
							            <c:forEach items="${clist }" var="c">
							            	<tr class="conpeizhi">
							                <td>
							                  	${c.cid }
							                </td>
							                <td>
							  					${c.cname }		
							  				</td>
							                <td>
							  						<img class="goods-img1" src="${c.cimg }" >
							  				</td>
							                
							                <td>
							  					<div class="toolbar-btn-action">
								                    <a class="btn btn-purple m-r-5 con" href="#!"><i class="mdi mdi-table-edit"></i> 查看配置
								                    	<span style="display: none;">${c.cid }</span>
								                    
								                    </a>
							  							
							                  	</div>
							  				</td>
							               
							              </tr>
										  <tr class="conpeizhi conpeizhi1">
											  <td colspan="4"></td>
										  </tr>
							            </c:forEach>
							              
							            </tbody>
							          </table>
							        </div>
							       
							         
							      </div>
							    </div>
							  </div>
</body>

<script type="text/javascript">
$(function(){

	/* 点击出现ys */
	$(".con").click(function(){
		var c=$(this).parent().parent().parent().index();
		var cid=$(this).find("span").html();
		console.log(cid);
		$(this).parent().parent().parent().siblings(".conpeizhi:eq("+(c)+")").unbind().toggle();
		$(this).parent().parent().parent().siblings(".conpeizhi:eq("+(c)+")").find("td").load("hou_con_servlet?cid="+cid,function(data){});
	});
})
</script>

</html>