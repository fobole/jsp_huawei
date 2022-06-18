package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_dingdan_dao;

/**
 * Servlet implementation class Fahuo_servlet
 */
@WebServlet("/fahuo_servlet")
public class Fahuo_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hou_dingdan_dao hdao=new Hou_dingdan_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fahuo_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ono=request.getParameter("ono");
		int ostates=4;
		try {
			int key=hdao.fahuo(ostates, ono);
			if(key>0) {
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
