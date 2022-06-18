package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.xhd_ddxqdao;
import cn.zktr.model.entity.Users;
import cn.zktr.model.entity.xhd_ddxq;
import cn.zktr.utilts.BaseServlet;
import cn.zktr.utilts.Page;

/**
 * Servlet implementation class Orderdetailsservlet
 */
@WebServlet("/orderdetailsservlet")
public class Orderdetailsservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	xhd_ddxqdao xdao=new xhd_ddxqdao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Orderdetailsservlet() {
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
			Page p =new Page();
			int uid=users.getUid();
			String ono = request.getParameter("ono");
			System.out.println(uid);
			System.out.println(ono);
			try {
				List<xhd_ddxq> list = xdao.selectdz(uid, ono);
				System.out.println(list.size());
				List<xhd_ddxq> list1 = xdao.selectddxq(uid, ono);
				//p.setRows(list1);
				request.setAttribute("list", list);
				request.setAttribute("list1", list1);
				this.forward("qian/orderdetails");
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
