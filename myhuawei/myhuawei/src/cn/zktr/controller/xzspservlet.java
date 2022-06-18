package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.xhd_ddbdao;
import cn.zktr.model.entity.Users;
import cn.zktr.model.entity.xhd_dindan;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class xzspservlet
 */
@WebServlet("/xzspservlet")
public class xzspservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	xhd_ddbdao xdao=new xhd_ddbdao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xzspservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users users=(Users) request.getSession().getAttribute("users");
		if(users==null) {
//			2.session中无用户，转发去登录页面
			this.redirect("/qian_longin");
		}else {
			int uid=users.getUid();
			String ono = request.getParameter("ono");
			System.out.println(ono);
			try {
				List<xhd_dindan> list = xdao.findDetai(uid, ono);
				System.out.println(list.size());
				request.setAttribute("list",list);
				this.forward("qian/xuanzesp");
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
