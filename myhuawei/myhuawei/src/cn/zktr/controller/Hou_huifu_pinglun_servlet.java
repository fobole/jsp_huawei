package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_pinglun_dao;
import cn.zktr.model.entity.Admins;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Hou_huifu_pinglun_servlet
 */
@WebServlet("/hou_huifu_pinglun_servlet")
public class Hou_huifu_pinglun_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_pinglun_dao hdao=new Hou_pinglun_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hou_huifu_pinglun_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Admins admins=(Admins)request.getSession().getAttribute("admins");
		if(admins==null) {
			this.forward("hou/ht_login");
		}else {
			String cmid=request.getParameter("cmid");
			String rnr=request.getParameter("rnr");
			String rimg=request.getParameter("rimg");
			System.out.println(cmid+"*"+rnr+" "+rimg);
			try {
				int isok=hdao.huifu(Integer.parseInt(cmid), rnr, rimg, admins.getAid());
				if(isok>0) {
					response.getWriter().print("0");
				}
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
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
