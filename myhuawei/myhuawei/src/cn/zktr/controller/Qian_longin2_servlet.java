package cn.zktr.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Users_dao;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Qian_longin2_servlet
 */
@WebServlet("/qian_longin2")
public class Qian_longin2_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Users_dao udao=new Users_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Qian_longin2_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String uname=request.getParameter("uname");
		String uphone=request.getParameter("uphone");
		String usex=request.getParameter("usex");
//		String ubirth=request.getParameter("ubirth");
		String upwd=request.getParameter("upwd");
		Users u=new Users(uname, Integer.parseInt(usex), uphone,  "2000-1-1", "/image/1645970362047.png", new Date(), 0, upwd);
		try {
			int key=udao.zhuce(u);
			System.out.println(uname);
			if(key>0) {
				response.getWriter().print("0");
			}
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
