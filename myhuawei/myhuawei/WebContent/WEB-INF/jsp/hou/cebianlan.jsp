<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>侧边栏</title>
</head>
<body>
<a class="btn btn-purple m-r-5"  data-toggle="lyear-right-box" data-target="#my-box"><i class="mdi mdi-table-edit"></i>添加员工</a>
<!-- <button type="button" class="btn btn-info admin_gai">修改</button> -->
	<div class="lyear-right-box lyear-right-box-xl" id="my-box">
  <header class="lyear-right-box-header">
    <div class="lyear-right-box-title">标题</div>
    <span class="lyear-right-box-close"><i class="mdi mdi-close"></i></span>
  </header>

  <div class="lyear-right-box-body p-20">
    <form action="#!" method="post" class="row">
      <!-- <div class="form-group col-md-12">
        <label for="type">栏目</label>
        <div class="form-controls">
          <select name="type" class="form-control" id="type">
            <option value="1">小说</option>
            <option value="2">古籍</option>
            <option value="3">专辑</option>
            <option value="4">自传</option>
          </select>
        </div>
      </div> -->
      <div class="form-group col-md-12">
        <label for="title"></label>
        <input type="text" class="form-control aname" id="title" name="title" value="" placeholder="请输入标题">
      </div>
      <div class="form-group col-md-12">
        <label for="seo_keywords">关键词</label>
        <input type="text" class="form-control" id="seo_keywords" name="seo_keywords" value="" placeholder="关键词">
      </div>
      <div class="form-group col-md-12">
        <label for="seo_description">描述</label>
        <textarea class="form-control" id="seo_description" name="seo_description" rows="5" value="" placeholder="描述"></textarea>
      </div>
      <div class="form-group col-md-12">
        <label for="sort">排序</label>
        <input type="text" class="form-control" id="sort" name="sort" value="0">
      </div>
      <div class="form-group col-md-12">
        <label for="status">状态</label>
        <div class="clearfix">
          <label class="lyear-radio radio-inline radio-primary">
            <input type="radio" name="status" value="0"><span>禁用</span>
          </label>
          <label class="lyear-radio radio-inline radio-primary">
            <input type="radio" name="status" value="1" checked=""><span>启用</span>
          </label>
        </div>
      </div>
    </form>
  </div>
  
  <footer class="lyear-right-box-footer">
    <button type="submit" class="btn btn-primary" id="add-form" data-target="#my-box">添 加</button>
  </footer>
  
</div>
</body>
<script type="text/javascript" src="stylejs/h/js/jquery.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/bootstrap.min.js"></script>
<script type="text/javascript" src="stylejs/h/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript">
/*  */
$(document).ready(function(){
	/*  */
	
    new PerfectScrollbar('.lyear-right-box-body', {
		swipeEasing: false,
		suppressScrollX: true
	});
    
    $(document).on('click', '[data-toggle="lyear-right-box"]', function(e) {
        e.preventDefault();
        var target = $(this).data('target');

        if (target == false) {
            closeBox($(target).closest('.lyear-right-box'));
        } else {
            if ( $(target).hasClass('lyear-right-box-open') ) {
                closeBox($(target).closest('.lyear-right-box'));
            } else {
                $(target).addClass('lyear-right-box-open').after('<div class="lyear-right-box-backdrop" data-target="'+ target +'"></div>');;
            }
        }
    });
    
    $(document).on('click', '.lyear-right-box-backdrop', function(){
        var target = $(this).data('target');
      
        closeBox($(target).closest('.lyear-right-box'));
    });
  
    $(document).on('click', '.lyear-right-box-close', function(){
        var boxObj = $(this).closest('.lyear-right-box');
        
        closeBox(boxObj);
    });
    
    /**
     * 关闭方法
     * @param object e box对象
     */
    var closeBox = function(e) {
        $(e).removeClass('lyear-right-box-open');
        $('.lyear-right-box-backdrop').remove();
    }
    
    $(document).on('click', '#add-form', function() {
        // ajax后端交互，成功后关闭box
        alert('添加成功');
        var target = $(this).data('target');
        closeBox($(target).closest('.lyear-right-box'));
    });
});
</script>
</html>