package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_admins_dao;
import cn.zktr.model.entity.Admins;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Gai_admins_mima_servlet
 */
@WebServlet("/gai_admins_mima_servlet")
public class Gai_admins_mima_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_admins_dao hdao=new Hou_admins_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gai_admins_mima_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Admins admins=(Admins) request.getSession().getAttribute("admins");
		// 没有/的去jsp页面，有/则去servlet
		if(admins==null){
		//	2.session中无用户，转发去登录页面
			
			this.forward("hou/ht_login");
		}else{
			int aid=admins.getAid();
			String apwd=request.getParameter("apwd");
			String gaiapwd=request.getParameter("gaiapwd");
			try {
				int isok=hdao.gaimima(gaiapwd, aid, apwd);
				if(isok>0) { 
					response.getWriter().print("1");
				}else {
					response.getWriter().print("2");
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
