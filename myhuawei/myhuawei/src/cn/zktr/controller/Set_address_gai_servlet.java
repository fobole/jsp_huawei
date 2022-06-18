package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Set_dizhi_dao;
import cn.zktr.model.entity.Set_address;

/**
 * Servlet implementation class Set_address_gai_servlet
 */
@WebServlet("/set_address_gai_servlet")
public class Set_address_gai_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Set_dizhi_dao sdao=new Set_dizhi_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Set_address_gai_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String addid=request.getParameter("addid");
		String addname=request.getParameter("addname");
		String addphone=request.getParameter("addphone");
		String addsheng=request.getParameter("addsheng");
		String addshi=request.getParameter("addshi");
		String addqu=request.getParameter("addqu");
		String adds=request.getParameter("adds");
		System.out.println(addid+" "+addname+" "+addphone+" "+addsheng+" "+addshi+" "+addqu+" "+adds );
		Set_address sa=new Set_address(Integer.parseInt(addid), addname, addphone, addsheng, addshi, addqu, adds);
		try {
			int isok=sdao.gai_dizhi(sa);
			if(isok>0) {
				response.getWriter().print("0");
			}
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
