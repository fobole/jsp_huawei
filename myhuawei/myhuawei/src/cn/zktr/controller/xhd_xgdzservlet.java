package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.xhd_xgdz;
import cn.zktr.model.entity.Users;
import cn.zktr.model.entity.xhd_xiugaidizhi;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class xhd_xgdzservlet
 */
@WebServlet("/xhd_xgdzservlet")
public class xhd_xgdzservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	xhd_xgdz xdao = new xhd_xgdz();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xhd_xgdzservlet() {
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
			String ono=request.getParameter("ono");
			String dname=request.getParameter("addname");
			String dphone=request.getParameter("addphone");
			String addsheng=request.getParameter("addsheng");
			String addshi=request.getParameter("addshi");
			String addqu=request.getParameter("addqu");
			String adds=request.getParameter("adds");
			String xxdz=addsheng+" "+addshi+" "+addqu+" "+adds;
			System.out.println(xxdz);
			System.out.println(" "+dname+" "+dphone+" "+xxdz+" "+ono );
			xhd_xiugaidizhi xg = new xhd_xiugaidizhi(ono,dname,dphone,xxdz);
			try {
				int isok1=xdao.zhuangtai(uid, ono);
				int isok=xdao.xiugai(xg);
				if(isok>0 && isok1>0) {
					response.getWriter().println("0");
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
