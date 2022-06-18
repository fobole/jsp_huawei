package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base32;

import cn.zktr.model.dao.Gai_shopcar_dao;
import cn.zktr.model.dao.Qian_shopcar_cha_dao;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Change_checked_servlet
 */
@WebServlet("/change_checked_servlet")
public class Change_checked_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Gai_shopcar_dao gdao=new Gai_shopcar_dao();
	Qian_shopcar_cha_dao cdao=new Qian_shopcar_cha_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Change_checked_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users users=(Users) request.getSession().getAttribute("users");
		if(users==null) {
			this.redirect("/qian_longin");
		}else{
			//System.out.println(request.getParameter("a")+"---------");
			String ischecked=request.getParameter("ischecked");
			int uid=users.getUid();
			try {
				int isok=gdao.isChecked(ischecked, uid);
				if(isok > 0) {
					//查询总金额和总件数
					Double amount = cdao.getAmount(uid);
					//System.out.println(amount);
					Integer total = cdao.getTotal(uid);
					response.getWriter().println("({total:"+total+",amount:"+amount+"})");
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
