package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.zktr.model.dao.Hou_admins_dao;
import cn.zktr.model.entity.Admins;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet 后台的登录
 */
@WebServlet("/ht_login")
public class Ht_login_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_admins_dao hadao=new Hou_admins_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ht_login_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		Admins admins=(Admins) request.getSession().getAttribute("admins");
		// 没有/的去jsp页面，有/则去servlet
		if(admins==null){
		//	2.session中无用户，转发去登录页面
			
			this.forward("hou/ht_login");
		}else{
			//3.session中有用户，可以直接去首页（servlet的地址）
			//去首页(后台)
			this.redirect("/indexservlet");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		// TODO Auto-generated method stub !list.get(0).getAname().equals(aname) || !list.get(0).getApwd().equals(apwd)
		String aname=request.getParameter("aname");
		System.out.println(aname+"后台用户");
		String apwd=request.getParameter("apwd");
		System.out.println(apwd+"后台用户");
		//System.out.println(aname+"===="+apwd);
		try {
			List<Admins> list = hadao.one_admins(aname, apwd);
			System.out.println(list);
			if(list.size()==0) {
				request.setAttribute("err", "1");
				this.forward("hou/ht_login");
			}if(!list.get(0).getAname().equals(aname) || !list.get(0).getApwd().equals(apwd)) {
				request.setAttribute("err", "2");
				this.forward("hou/ht_login");
			}else{
				session.setAttribute("admins", list.get(0));
				/*//设置有效期
				int t=1800;
				session.setMaxInactiveInterval(t);*/
				this.redirect("/indexservlet");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
