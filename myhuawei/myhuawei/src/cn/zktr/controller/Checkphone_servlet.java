package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Users_dao;
import cn.zktr.model.entity.Users;

/**
 * Servlet implementation class Checkphone_servlet
 */
@WebServlet("/checkphone")
public class Checkphone_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 Users_dao  udao=new  Users_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Checkphone_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//接收前台传入的参数
		String uphone=request.getParameter("uphone");
		try {
			List<Users> list=udao.selectphone(uphone);
				if(list.size()>0){
						//如果用户存在，则返回用户名已注册
						//获取out对象
					response.getWriter().print("2");
				}else{
						//如果用户名不存在，则返回数字1,表示成功
					response.getWriter().print("1");
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
