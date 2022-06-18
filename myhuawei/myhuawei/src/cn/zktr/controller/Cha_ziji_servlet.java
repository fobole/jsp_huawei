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
 * Servlet implementation class Cha_ziji_servlet
 */
@WebServlet("/cha_ziji_servlet")
public class Cha_ziji_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_admins_dao hdao=new Hou_admins_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cha_ziji_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aid=request.getParameter("aid");
		if(aid!=null) {
			//System.out.println(aid);
			try {
				Admins a=hdao.oneadmins(aid);
				//System.out.println(a);
				request.setAttribute("a",a);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		this.forward("hou/admins_ziji");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
