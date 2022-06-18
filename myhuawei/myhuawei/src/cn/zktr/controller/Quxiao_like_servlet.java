package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Likess_dao;
import cn.zktr.model.entity.Users;

/**
 * Servlet implementation class Quxiao_like_servlet
 */
@WebServlet("/quxiao_like_servlet")
public class Quxiao_like_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Likess_dao ldao=new Likess_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Quxiao_like_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			Users u=(Users) request.getSession().getAttribute("users");
			if(u!=null) {
				int uid=u.getUid();
				String lid=request.getParameter("lid");
				try {
					int isok=ldao.shan_xihuan(uid, Integer.parseInt(lid));
					if(isok>0) {
						response.getWriter().println("0");
					}
				} catch (NumberFormatException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
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
