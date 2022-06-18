package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Qian_shopcar_cha_dao;
import cn.zktr.model.dao.Set_dizhi_dao;
import cn.zktr.model.entity.Address;
import cn.zktr.model.entity.Set_address;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Settlement_add_servlet
 */
@WebServlet("/settlement_add_servlet")
public class Settlement_add_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Set_dizhi_dao sdao=new Set_dizhi_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Settlement_add_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//用户id
		Users u=(Users)request.getSession().getAttribute("users");
		if(u==null){
			this.redirect("/qian_longin");
		}else{
			int uid=u.getUid();
			try {
				String addid=request.getParameter("addid");
				//System.out.println(addid);
				Set_address set_address=sdao.gaiadd_cha(uid, Integer.parseInt(addid));
				request.setAttribute("set_address", set_address);
				this.forward("qian/settlement_add");
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
