package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Smshop_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet 点击小类别下的商品 
 */
@WebServlet("/smshop_json")
public class Smshop_json_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Smshop_dao smdao=new Smshop_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Smshop_json_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		if(request.getParameter("smid").equals("undefined")) {
			return;
		}
		int smid=Integer.parseInt(request.getParameter("smid"));
		//System.out.println(smid);
		try {
			List<Goods> smlist=smdao.smshopAll(smid);
			request.setAttribute("smlist",smlist);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//	将信息转发到一个新的子页面上
		this.forward("qian/smshop_list");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
