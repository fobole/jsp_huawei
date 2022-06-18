package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_gai_ggao_state_dao;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Hou_gai_ggao_state_servlet
 */
@WebServlet("/hou_gai_ggao_state_servlet")
public class Hou_gai_ggao_state_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_gai_ggao_state_dao hgdao=new Hou_gai_ggao_state_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hou_gai_ggao_state_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String pid=request.getParameter("pid");
		String current=request.getParameter("current");
		try {
			hgdao.ggao_state(Integer.parseInt(pid));
			this.redirect("/table_ggaoservlet?current="+current);
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
