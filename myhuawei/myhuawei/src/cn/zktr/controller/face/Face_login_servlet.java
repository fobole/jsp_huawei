package cn.zktr.controller.face;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.utilts.BaseServlet;
import faceLogin.faceSearch;

/**
 * Servlet implementation class Face_login
 */
@WebServlet("/face_login_servlet")
public class Face_login_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Face_login_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.forward("hou/face_login");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String despath = request.getParameter("message");  //从前端接受到的图片base64数据
		System.out.println(despath);
		/*faceMatch match = new faceMatch();  //两种图片人脸比对
		String score = match.match(despath);
		System.out.println("score:"+score);*/
		faceSearch search = new faceSearch();
		String result = search.search(despath);
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().println(result);
		
	}
	
	
	

}
