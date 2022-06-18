<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="m" uri="http://cn.gso.com/jsp/jstl/mytag" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>华为商城后台管理系统</title>
<!-- rel 默认样式图标 -->
<link rel="shortcut icon" href="stylejs/h/img/华为1.png">
<meta name="keywords" content="LightYear,光年,后台模板,后台管理系统,光年HTML模板">
<meta name="description" content="LightYear是一个基于Bootstrap v3.3.7的后台管理系统的HTML模板。">
<meta name="author" content="yinqi">
<link href="stylejs/h/css/bootstrap.min.css" rel="stylesheet">
<link href="stylejs/h/css/materialdesignicons.min.css" rel="stylesheet">
<link href="stylejs/h/css/style.min.css" rel="stylesheet">
</head>
  
<body>
<div class="lyear-layout-web">
  <div class="lyear-layout-container">
    <!--左侧导航-->
    <!--左侧导航-->
    <aside class="lyear-layout-sidebar">
      
      <!-- logo -->
      <div id="logo" class="sidebar-header">
        <a href="indexservlet"><img  class="ht-home-logo"  src="stylejs/h/img/huawei_logo.png" title="LightYear" alt="LightYear" /></a>
      </div>
      <div class="lyear-layout-sidebar-scroll"> 
        
        <nav class="sidebar-main">
          <ul class="nav nav-drawer">
            <li class="nav-item  active"> <a href="indexservlet"><i class="mdi mdi-home"></i>后台首页</a> </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-cart-outline"></i>商品管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_shopservlet">全部商品</a></li>
                <li> <a href="add_shopservlet">添加商品</a></li>
              </ul>
            </li>
            
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-package-variant"></i>订单管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_dingdanservlet">查看订单</a></li>
				<li> <a href="table_gaidizhi_servlet">修改地址管理</a></li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-account"></i>会员管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_usersservlet">全部会员</a></li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-lock-pattern"></i>类别管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_typeservlet">类别管理</a> </li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-forum"></i>评价管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_pinglunservlet">评价管理</a></li>
              </ul>
            </li>
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-comment-alert-outline"></i>广告管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_ggaoservlet">广告管理</a> </li>
              </ul>
            </li>
            <!-- <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-transcribe"></i>地址管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_dizhi.html">地址管理</a> </li>
              </ul>
            </li> -->
            <li class="nav-item nav-item-has-subnav">
              <a href="javascript:void(0)"><i class="mdi mdi-account-network"></i>用户管理</a>
              <ul class="nav nav-subnav">
                <li> <a href="table_adminsservlet">后台账号</a> </li>
              </ul>
            </li>
          </ul>
        </nav>
        
        <div class="sidebar-footer">
          <p class="copyright">Copyright &copy; 2022. <a target="_blank" href="lunboservlet">点击进入华为商城首页</a> All rights reserved.</p>
        </div>
      </div>
      
    </aside>
    <!--End 左侧导航-->
    <!--End 左侧导航-->
    
    <!--头部信息-->
    <jsp:include page="h_head.jsp"></jsp:include>
    <!--End 头部信息-->
    
    <!--页面主要内容-->
    <main class="lyear-layout-content">
      
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-sm-6 col-lg-3">
            <div class="card bg-primary">
              <div class="card-body clearfix">
                <div class="pull-right">
                  <p class="h6 text-white m-t-0">商品上架数</p>
                  <p class="h3 text-white m-b-0">${shopshu }</p>
                </div>
                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-decagram fa-1-5x"></i></span> </div>
              </div>
            </div>
          </div>
          
          <div class="col-sm-6 col-lg-3">
            <div class="card bg-danger">
              <div class="card-body clearfix">
                <div class="pull-right">
                  <p class="h6 text-white m-t-0">广告总数</p>
                  <p class="h3 text-white m-b-0">${ggaoshu }</p>
                </div>
                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-comment-multiple-outline fa-1-5x"></i></span> </div>
              </div>
            </div>
          </div>
          
          <div class="col-sm-6 col-lg-3">
            <div class="card bg-success">
              <div class="card-body clearfix">
                <div class="pull-right">
                  <p class="h6 text-white m-t-0">前台会员总量</p>
                  <p class="h3 text-white m-b-0">${usershu }</p>
                </div>
                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-human fa-1-5x"></i></span> </div>
              </div>
            </div>
          </div>
          
          <div class="col-sm-6 col-lg-3">
            <div class="card bg-purple">
              <div class="card-body clearfix">
                <div class="pull-right">
                  <p class="h6 text-white m-t-0">后台用户总数</p>
                  <p class="h3 text-white m-b-0">${adminshu }</p>
                </div>
                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-human-child fa-1-5x"></i></span> </div>
              </div>
            </div>
          </div>
        </div>
        
        <div class="row">
        	
          
          <div class="col-lg-6"> 
            <div class="card">
              <div class="card-header">
                <h4>订单管理</h4>
              </div>
              <div class="card-body">
                <canvas class="js-chartjs-bars"></canvas>
              </div>
            </div>
          </div>
          
          <div class="col-lg-6"> 
            <div class="card">
              <div class="card-header">
                <h4>订单历史记录</h4>
              </div>
              <div class="card-body">
                <canvas class="js-chartjs-lines"></canvas>
              </div>
            </div>
          </div>
           
           
           
           
           
           <div class="col-lg-6">
            <div class="card">
              <div class="card-header"><h4>会员</h4></div>
              <div class="card-body">
                <canvas id="chart-pie" width="280" height="280"></canvas>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="card">
              <div class="card-header"><h4>员工</h4></div>
              <div class="card-body">
                <canvas id="chart-doughnut" width="280" height="280"></canvas>
              </div>
            </div>
          </div>
        </div>
        
        
        
        
        <div class="row">
          
          <!-- <div class="col-lg-12">
            <div class="card">
              <div class="card-header">
                <h4>项目信息</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>项目名称</th>
                        <th>开始日期</th>
                        <th>截止日期</th>
                        <th>状态</th>
                        <th>进度</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>设计新主题</td>
                        <td>10/02/2019</td>
                        <td>12/05/2019</td>
                        <td><span class="label label-warning">待定</span></td>
                        <td>
                          <div class="progress progress-striped progress-sm">
                            <div class="progress-bar progress-bar-warning" style="width: 45%;"></div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>网站重新设计</td>
                        <td>01/03/2019</td>
                       <td>12/04/2019</td>
                        <td><span class="label label-success">进行中</span></td>
                        <td>
                          <div class="progress progress-striped progress-sm">
                            <div class="progress-bar progress-bar-success" style="width: 30%;"></div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>模型设计</td>
                         <td>10/10/2019</td>
                         <td>12/11/2019</td>
                        <td><span class="label label-warning">待定</span></td>
                        <td>
                          <div class="progress progress-striped progress-sm">
                            <div class="progress-bar progress-bar-warning" style="width: 25%;"></div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>后台管理系统模板设计</td>
                        <td>25/01/2019</td>
                        <td>09/05/2019</td>
                        <td><span class="label label-success">进行中</span></td>
                        <td>
                          <div class="progress progress-striped progress-sm">
                            <div class="progress-bar progress-bar-success" style="width: 55%;"></div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td>前端设计</td>
                        <td>10/10/2019</td>
                        <td>12/12/2019</td>
                        <td><span class="label label-danger">未开始</span></td>
                        <td>
                          <div class="progress progress-striped progress-sm">
                            <div class="progress-bar progress-bar-danger" style="width: 0%;"></div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>6</td>
                        <td>桌面软件测试</td>
                        <td>10/01/2019</td>
                        <td>29/03/2019</td>
                        <td><span class="label label-success">进行中</span></td>
                        <td>
                          <div class="progress progress-striped progress-sm">
                            <div class="progress-bar progress-bar-success" style="width: 75%;"></div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>7</td>
                        <td>APP改版开发</td>
                        <td>25/02/2019</td>
                        <td>12/05/2019</td>
                        <td><span class="label label-danger">暂停</span></td>
                        <td>
                          <div class="progress progress-striped progress-sm">
                            <div class="progress-bar progress-bar-danger" style="width: 15%;"></div>
                          </div>
                        </td>
                      </tr>
                      <tr>
                        <td>8</td>
                        <td>Logo设计</td>
                        <td>10/02/2019</td>
                        <td>01/03/2019</td>
                        <td><span class="label label-warning">完成</span></td>
                        <td>
                          <div class="progress progress-striped progress-sm">
                            <div class="progress-bar progress-bar-success" style="width: 100%;"></div>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div> -->
          
        </div>
        
      </div>
      
    </main>
    <!--End 页面主要内容-->
  </div>
</div>




<script type="text/javascript" src="stylejs/h/js/jquery.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/bootstrap.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/main.min.js"></script>

<!--图表插件-->
<script type="text/javascript" src="stylejs/h/js/Chart.js"></script>
<script type="text/javascript">
$(document).ready(function(e) {
    var $dashChartBarsCnt  = jQuery( '.js-chartjs-bars' )[0].getContext( '2d' ),
        $dashChartLinesCnt = jQuery( '.js-chartjs-lines' )[0].getContext( '2d' );
    
    new Chart($("#chart-vbar-1"), {
        type: 'bar',
        data: {
        	labels: ['待付款', '未发货', '已发货', '已完成', '已退货'],
            datasets: [{
                label: "收入",
                backgroundColor: "rgba(51,202,185,0.5)",
                borderColor: "rgba(0,0,0,0)",
                hoverBackgroundColor: "rgba(51,202,185,0.7)",
                hoverBorderColor: "rgba(0,0,0,0)",
                data: [${dfk }, ${dfh }, ${yfh }, ${ywc }, ${ytk }]
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
    
    
    var $dashChartBarsData = {
		labels: ['待付款', '未发货', '已发货', '已完成', '已退货'],
		datasets: [
			{
				label: '订单',
                borderWidth: 2,
                borderColor: 'rgba(0,0,0,0)',
				backgroundColor: 'rgba(51,202,185,0.5)',
                hoverBackgroundColor: "rgba(51,202,185,0.7)",
                hoverBorderColor: "rgba(0,0,0,0)",
				data: [${dfk }, ${dfh }, ${yfh }, ${ywc }, ${ytk }]
			}
		]
	};
    var $dashChartLinesData = {
		labels: [<c:forEach items="${soulist }" var="s">'<fmt:formatDate value="${s.ocreatetime }" type="date" pattern="yyyy-MM-dd HH:mm:ss"/>',</c:forEach>],
		datasets: [
			{
				label: '交易资金',
				data: [<c:forEach items="${soulist }" var="s">'${s.opay }',</c:forEach>],
				borderColor: '#358ed7',
				backgroundColor: 'rgba(53, 142, 215, 0.175)',
                borderWidth: 1,
                fill: false,
                lineTension: 0.5
			}
		]
	};
    
    new Chart($dashChartBarsCnt, {
        type: 'bar',
        data: $dashChartBarsData
    });
    
    var myLineChart = new Chart($dashChartLinesCnt, {
        type: 'line',
        data: $dashChartLinesData,
    });
    
    
    
    
    
    new Chart($("#chart-pie"), {
        type: 'pie',
        data: {
            labels: ["保密", "男", "女"],
            datasets: [{
                data: [${ubaomi}, ${unan }, ${unv }],
                backgroundColor: ['rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)']
            }]
        },
        options: {
            responsive: false
        }
    });

    new Chart($("#chart-doughnut"), {
        type: 'doughnut',
        data: {
            labels: ["男员工", "女员工"],
            datasets: [{
                data: [${anan}, ${anv}],
                backgroundColor: ['rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)',]
            }]
        },
        options: {
            responsive: false
        }
    });
    
    
    
    
    
    
    
});
</script>
</body>
</html>