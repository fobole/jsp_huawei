package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_ggao_dao;

/**
 * Servlet implementation class Tianjia_ggao_servlet
 */
@WebServlet("/tianjia_ggao_servlet")
public class Tianjia_ggao_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Hou_ggao_dao hdao=new Hou_ggao_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tianjia_ggao_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pimg=request.getParameter("pimg");
		String gid=request.getParameter("gid");
		try {
			int key=hdao.jiaggao(pimg, Integer.parseInt(gid));
			if(key>0) {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
