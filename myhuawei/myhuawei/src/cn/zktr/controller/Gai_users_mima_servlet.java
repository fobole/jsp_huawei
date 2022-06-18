package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Gai_users_dao;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Gai_users_mima_servlet
 */
@WebServlet("/gai_users_mima_servlet")
public class Gai_users_mima_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Gai_users_dao gdao=new Gai_users_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gai_users_mima_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users u=(Users)request.getSession().getAttribute("users");
		if(u==null){
			this.redirect("/qian_longin");
		}else{
			int uid=u.getUid();
			String upwd=request.getParameter("upwd");
			String upwds=request.getParameter("upwds");
			try {
				int key=gdao.gaimima(upwds, upwd, uid);
				if(key>0) {
					response.getWriter().print("1");
				}else{
					response.getWriter().print("0");
				}
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
