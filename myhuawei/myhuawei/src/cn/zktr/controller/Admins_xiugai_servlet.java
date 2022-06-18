package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_admins_dao;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Admins_xiugai_servlet
 */
@WebServlet("/admins_xiugai_servlet")
public class Admins_xiugai_servlet extends BaseServlet{
	private static final long serialVersionUID = 1L;
	Hou_admins_dao hdao=new Hou_admins_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admins_xiugai_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String aid=request.getParameter("aid");
				String atu=request.getParameter("atu");
				String aname=request.getParameter("aname");
				String asex=request.getParameter("asex");
				String agrade=request.getParameter("agrade");
				String apwd=request.getParameter("apwd");
				try {
					int isok=hdao.gai_admins(atu, aname, Integer.parseInt(asex), Integer.parseInt(agrade), apwd, Integer.parseInt(aid));
					if(isok>0) {
						response.getWriter().print("1");
					}else{
						response.getWriter().print("2");
					}
				} catch (NumberFormatException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
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
