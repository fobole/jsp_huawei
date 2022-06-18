package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.xhd_ddxqdao;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class xhd_qxthservlet
 */
@WebServlet("/xhd_qxthservlet")
public class xhd_qxthservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	xhd_ddxqdao xdao = new xhd_ddxqdao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xhd_qxthservlet() {
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
			try {
				int isok=xdao.qxth(uid, ono);
				if(isok>0) {
					response.getWriter().print("0");
				}
				this.redirect("/orderdetailsservlet?ono="+ono);
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
