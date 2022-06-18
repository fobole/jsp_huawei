package cn.zktr.controller.img;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Upload_servlet
 */
@WebServlet(name = "TestServlet", urlPatterns = "/test")
@MultipartConfig
public class TestServlet extends BaseServlet {
	
	
	
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //获取文件,参数为前台的name
    Part part = request.getPart("photo");
    	//判断是否选择了文件
    if (part.getSize() == 0) {
      request.setAttribute("msg", "请选择用户头像");
      request.getRequestDispatcher("/register.jsp").forward(request, response);
      return;	//不再执行后续操作
    }
    //获取文件名，获取到文件名的格式如：a.jpg
    String fileName = part.getSubmittedFileName();
    /**
     截取文件名的后缀名：
     photo.lastIndexOf('.')的返回值为"."的位置，加1表示后缀名的起始位置。
     photo.substring(photo.lastIndexOf('.')+1)，表示从后缀名的起始位置截取到结束位置。
     * */
    String fileType = fileName.substring(fileName.lastIndexOf('.') + 1);
    //判断该文件是不是图片格式
    if (!("jpg".equalsIgnoreCase(fileType) || "jpeg".equalsIgnoreCase(fileType) || "png".equalsIgnoreCase(fileType))) {
      //不是图片格式,停止下一步，并将信息反馈给前台页面
      return;
    }
    //是图片类型，构建一个上传图片的存储路径
    String path = "D:\\upload";
    File file = new File(path);
    if (!file.exists()) {
      file.mkdirs(); //创建文件和文件夹
    }
    //将part内容写到文件夹内，生成一个文件
    part.write(path + "/" + fileName);
    System.out.println(fileName);
  }
}