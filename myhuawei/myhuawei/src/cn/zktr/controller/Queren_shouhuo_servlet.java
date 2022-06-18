package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_dingdan_dao;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Queren_shouhuo_servlet
 */
@WebServlet("/queren_shouhuo_servlet")
public class Queren_shouhuo_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_dingdan_dao hdao=new Hou_dingdan_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Queren_shouhuo_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ono=request.getParameter("ono");
		int ostates=5;
		try {
			int key=hdao.queren(ostates, ono);
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
