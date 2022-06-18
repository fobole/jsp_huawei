package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_gaidizhi_dao;

/**
 * Servlet implementation class Table_quedinggdz
 */
@WebServlet("/table_quedinggdz_servlet")
public class Table_quedinggdz_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hou_gaidizhi_dao gdao=new Hou_gaidizhi_dao();
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Table_quedinggdz_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oname=request.getParameter("oname");
		String ophone=request.getParameter("ophone");
		String oaddress=request.getParameter("oaddress");
		String ono=request.getParameter("ono");
		String did=request.getParameter("did");
		System.out.println(oname);
		System.out.println(ophone);
		System.out.println(ono);
		System.out.println(oaddress);
		System.out.println(did);
		int dyes=1;
		try {
			
			int yesok=gdao.xiugai(oname, ophone, oaddress, ono);
			gdao.dizhizt(dyes, Integer.parseInt(did));
			if(yesok>0) {
				response.getWriter().print("1");
			}else {
				response.getWriter().print("2");
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
