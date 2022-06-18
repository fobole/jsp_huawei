package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Gai_users_dao;
import cn.zktr.model.dao.Users_dao;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Gai_touxiang_servlet
 */
@WebServlet("/gai_touxiang_servlet")
public class Gai_touxiang_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Gai_users_dao gdao=new Gai_users_dao();
	Users_dao udao=new Users_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gai_touxiang_servlet() {
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
			String uimg=request.getParameter("uimg");
			try {
				int ok=gdao.gaitouxiang(uimg, uid);
				if(ok>0) {
					List<Users> list=udao.oneUsers(uid);
					request.getSession().setAttribute("users", list.get(0));
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
