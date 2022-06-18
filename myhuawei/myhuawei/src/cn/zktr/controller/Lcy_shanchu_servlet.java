package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Likes_dao;

/**
 * Servlet implementation class Lcy_shanchunew
 */
@WebServlet("/lcy_shanchu")
public class Lcy_shanchu_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Likes_dao ldao=new Likes_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Lcy_shanchu_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String lid=request.getParameter("lid");
			System.out.println(lid);
			try {
				int key=ldao.ly(Integer.parseInt(lid));
				if(key>0) {
					response.getWriter().print("0");
				}else {
					response.getWriter().print("1");
				}
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
