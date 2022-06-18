package cn.zktr.controller.img;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Wenjian_shangchuan
 */
@WebServlet("/wenjian_shangchuan2")
@MultipartConfig
public class Wenjian_shangchuan2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Wenjian_shangchuan2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取文件,参数为前台的name
	    Part part = request.getPart("file");
	    //判断是否选择了文件
	    if (part.getSize() == 0) {
	    	 response.getWriter().print("1");
	      return;	//不再执行后续操作
	    }
	    //获取文件名，获取到文件名的格式如：a.jpg
	    String fileName = part.getSubmittedFileName();
	    //System.out.println(fileName);
	    /**
	     截取文件名的后缀名：D:\Git\myhuawei\myhuawei\WebContent\img
	     photo.lastIndexOf('.')的返回值为"."的位置，加1表示后缀名的起始位置。D:\Tomcat\apache-tomcat-8.0.15\work\Catalina\localhost\myhuawei
	     photo.substring(photo.lastIndexOf('.')+1)，表示从后缀名的起始位置截取到结束位置。
	     * */
	    String fileType = fileName.substring(fileName.lastIndexOf('.') + 1);
	    //判断该文件是不是图片格式
	   if (!("jpg".equalsIgnoreCase(fileType) || "jpeg".equalsIgnoreCase(fileType) || "png".equalsIgnoreCase(fileType) || "webp".equalsIgnoreCase(fileType))) {
	      //不是图片格式,停止下一步，并将信息反馈给前台页面
	    	 response.getWriter().print("2");
	      return;
	    }
	    //是图片类型，构建一个上传图片的存储路径
	    String path = "D:\\upload";
	    File file = new File(path);
	    if (!file.exists()) {
	      file.mkdirs(); //创建文件和文件夹
	    }
	    //将part内容写到文件夹内，生成一个文件
	    part.write(path + "\\" + fileName);
	    System.out.println(path + "\\" + fileName);
	    response.getWriter().print("/image/"+fileName);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
