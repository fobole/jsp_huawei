package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hjy_pinglun;
import cn.zktr.model.entity.Hjy_pinglun_emtity;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class H_pingl_servlet
 */
@WebServlet("/h_pingl_servlet")
public class H_pingl_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hjy_pinglun hdao=new Hjy_pinglun();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public H_pingl_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users users=(Users) request.getSession().getAttribute("users");
		int cmid=Integer.parseInt(request.getParameter("cmid"));
		System.out.println(cmid+"1111111111");
		if(users==null) {
//			2.session中无用户，转发去登录页面
			this.redirect("/qian_longin");
		}else {
			int uid=users.getUid();
			try {
				List<Hjy_pinglun_emtity> list=hdao.Hjy_h1(uid);
				request.setAttribute("list", list);
				System.out.println(list.size());
				this.forward("qian/H_pingl");
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
