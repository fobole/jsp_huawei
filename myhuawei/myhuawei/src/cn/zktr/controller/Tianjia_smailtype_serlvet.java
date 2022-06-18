package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_type_dao;
import cn.zktr.model.entity.Admins;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Tianjia_smailtype_serlvet
 */
@WebServlet("/tianjia_smailtype_serlvet")
public class Tianjia_smailtype_serlvet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_type_dao hdao=new Hou_type_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tianjia_smailtype_serlvet() {
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
			String btid=request.getParameter("btid");
			String smname=request.getParameter("smname");
			String smimg=request.getParameter("smimg");
			System.out.println(btid+"*****"+smname+"***"+smimg);
			try {
				int key=hdao.jia_smtype(Integer.parseInt(btid),smname, smimg);
				if(key>0) {
					response.getWriter().print("0");
				}else {
					response.getWriter().print("1");
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
