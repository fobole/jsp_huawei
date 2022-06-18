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
<title>员工</title>
<style type="text/css">
	.gaitu{
		width: 40px;
		height: 40px;
		float: left;
	}
	.gaituinput{
		width: 10px;
		float: left;
	}
</style>
</head>
<body>
	<div class="yg-touxiang gaia"><label class="la1">我的头像</label><img class="gaitu" alt="" src="${a.atu }"></div>
	<div class="yg-touxiang"><label class="la1">我的名称</label><input class="form-control gainame" type="text" value="${a.aname }" readonly="readonly"></div>
	<div class="yg-touxiang"><label class="la1">我的性别</label>
		<select name="type" class="form-control gaisex" id="type">
			<c:if test="${a.asex==0 }">
				<option value="0">男</option>
				
			</c:if>
			<c:if test="${a.asex==1 }">
				<option value="1">女</option>
				
			</c:if>
			
			
		</select>
	</div>
	<div class="yg-touxiang"><label class="la1">我的类型</label>
		<select name="gaigrade" class="form-control" id="type">
			<c:if test="${a.agrade==1 }">
				<option value="1">普通员工</option>
			</c:if>
			<c:if test="${a.agrade==2 }">
				<option value="2">人事</option>
			</c:if>
			<c:if test="${a.agrade==3 }">
				<option value="3">销售</option>
			</c:if> 
			<c:if test="${a.agrade==0 }">
				<option value="0">超级管理员</option>
			</c:if>
		</select>
	</div>
	<div class="yg-touxiang"><label class="la1">我的密码</label><input class="form-control gaimima" name="pwd" type="password" placeholder="" value="${a.apwd }"  disabled="true"></div>
	
	
</body>
<script type="text/javascript">

/* function showFileInput(){
    var fileInput=document.getElementById("fileInput");
    fileInput.click();
}

function upload(event) {
    const formData = new FormData();
    formData.append('file', event.target.files[0]);
    var img=$(".gaitu");
    $.ajax({    
		type: "post",
		url: "wenjian_shangchuan",
		data: formData,
		processData: false,//告诉jq不要处理发送的数据
		contentType: false,//告诉jq不要设置content-Type请求头
		success: function(res) {
            console.log(res)
            img.attr('src',res);
        }
    });
    
    
    
    
    } */


/* function xiugai(aid) {
	var img=$(".gaitu").attr('src');
	var aname=$(".gainame").val();
	var asex=$('.gaisex').val();
	var agrade=$("select[name='gaigrade']").val();
	var amm=$('input[name="pwd"]').val();
	console.log(amm+'mima');
	var current=$('#yema').find("a").html();
	console.log(img,aname,asex,agrade);
	
	$.ajax({
		url:"admins_xiugai_servlet",//访问路径
		data:{
			atu:img,
			aname:aname,
			agrade:agrade,
			asex:asex,
			aid:aid,
			apwd:amm,
		},
		type:"post",//请求类型
		async:true,//是否同步请求
		error:function(){
			//访问错误会执行这个方法
			//404，500，405
		},
		success:function(data){
			layer.msg("修改成功！！！", {time: 500, icon:6},function(){
				location.href="table_adminsservlet?current="+current;
			});
		}
	}); 
} */



</script>
</html>