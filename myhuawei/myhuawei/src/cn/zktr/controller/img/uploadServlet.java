package cn.zktr.controller.img;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class uploadServlet
 */
@WebServlet("/upload")
//文件上传必须加注解
@MultipartConfig
public class uploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		//设置字符编码
//		request.setCharacterEncoding("utf-8");
//		//接收文件
//		Part p = request.getPart("file");
//		//位置
//		//文件名
//		String filename=p.getSubmittedFileName();
//		//获得文件上传的位置
//		String path=request.getServletContext().getRealPath("/image");
//		//拼接地址
//		String savapath=path+"//"+filename;
//		//将文件写入该地址下
//		p.write(savapath); 
//		
//		//图片回显
//		response.setContentType("text/html;charset=utf-8");
//		PrintWriter out=response.getWriter();
//		String f = "image/"+filename;
//		out.print("<img src='"+f+"'>");
		
		String content = request.getParameter("editorValue");
		//这个content就可以作为产品的详细描述直接显示在你的产品页
		
		System.out.println("编辑器中的内容是："+content);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
