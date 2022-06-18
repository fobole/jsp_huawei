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
<title>Insert title here</title>
</head>
<body>
	<div class="col-lg-12 alert alert-success">
							    <div class="card">
							      <div class="card-toolbar clearfix">
							        <!-- <form class="pull-right search-bar" method="get" action="#!" role="form">
							          <div class="input-group">
							            
							            <input type="text" class="form-control" value="" name="keyword" placeholder="请输入名称">
							  					<div class="input-group-btn">
							  					  <input type="hidden" name="search_field" id="search-field" value="title">
							  					  <button class="btn btn-default dropdown-toggle" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
							  						<i class="mdi mdi-magnify"></i>搜索
							  					  </button>
							  					
							  					</div>
							  				  </div>
							        </form> -->
							  				<div class="toolbar-btn-action">
							  					<h4>${cid }号颜色的配置</h4>
							  				</div>
							      </div>
							      <div class="card-body">
							        
							        <div class="table-responsive">
							          <table class="table table-bordered">
							            <thead>
							              <tr>
							                <th>配置编号</th>
							  				<th>配置名称</th>
							                <th>配置价格</th>
							                <th>配置库存</th>
							                
							              </tr>
							            </thead>
							            <tbody>
							            <c:forEach items="${conlist }" var="c">
							            	<tr class="conpeizhi">
								                <td>
								                  ${c.conid }
								                </td>
								                <td>
								  					${c.conname }		
								  				</td>
								                <td>
								  					${c.conjia }	
								  				</td>
								                <td>
								  					${c.cshu }
								  				</td>
							              	</tr>
							            </c:forEach>
							              
							              
							              
							            </tbody>
							          </table>
							        </div>
							        <!-- <ul class="pagination">
							          <li class="disabled"><span>«</span></li>
							          <li class="active"><span>1</span></li>
							          <li><a href="#1">2</a></li>
							          <li><a href="#1">3</a></li>
							          <li><a href="#1">4</a></li>
							          <li><a href="#1">5</a></li>
							          <li><a href="#1">6</a></li>
							          <li><a href="#1">7</a></li>
							          <li><a href="#1">8</a></li>
							          <li class="disabled"><span>...</span></li>
							          <li><a href="#!">14452</a></li>
							          <li><a href="#!">14453</a></li>
							          <li><a href="#!">»</a></li>
							        </ul> -->
							         
							      </div>
							    </div>
							  </div>
</body>
</html>