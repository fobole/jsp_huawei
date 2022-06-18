package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hjy_pinglun;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class shanchuservlet
 */
@WebServlet("/shanchu")
public class shanchuservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hjy_pinglun h=new Hjy_pinglun();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shanchuservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cmid=Integer.parseInt(request.getParameter("a"));
		System.out.println(cmid);
		try {
			int isok=h.Hjy_j(cmid);
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
