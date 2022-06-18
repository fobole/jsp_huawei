<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	//配置工程根目录
	String basePath=request.getScheme()+"://"+request.getServerName()+
	":"+request.getServerPort()+request.getContextPath()+"/";
    %>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>">
<!-- 百度编辑器ueditor需要的脚本 -->
<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
//实例化编辑器
//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，
//直接调用UE.getEditor('editor')就能拿到相关的实例
var ue = UE.getEditor('editor');
</script>
<!-- 百度编辑器ueditor需要的脚本   ****结束***-->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <form action="upload" method="post" enctype="multipart/form-data">
		<input type="file" name="file"><br>
		<input type="submit" value="提交"> 
	</form> -->
	 <!-- <h3>百度编辑器，主要处理产品详情</h3>  
	 
	 String content = request.getParameter("editorValue");
				//这个content就可以作为产品的详细描述直接显示在你的产品页
				
				System.out.println("编辑器中的内容是："+content);-->
       <form action="upload">
           <!-- 以form表单形式提交 -->
           <div class="detail">
               <script id="editor" type="text/plain" style="width:800px;height:500px;"></script>
           </div>
           <input type="submit" value="我是form提交按钮"/>
       </form>
</body>
</html>