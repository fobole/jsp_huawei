package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Checkstand_dao;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Quxiao_dingdan_servlet
 */
@WebServlet("/quxiao_dingdan_servlet")
public class Quxiao_dingdan_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Checkstand_dao cdao=new Checkstand_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Quxiao_dingdan_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				String ono=request.getParameter("ono");
				int ostates=2;
				try {
					int key=cdao.quxiao(ostates, ono);
					if(key>0) {
						response.getWriter().print("1");
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
