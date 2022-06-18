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
@WebServlet("/smshop_json3")
public class Smshop_json_servlet3 extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Smshop_dao smdao=new Smshop_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Smshop_json_servlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		if(request.getParameter("smid3").equals("undefined")) {
			return;
		}
		String  aa= request.getParameter("smid3");
		//System.out.println(aa);
		int smid=Integer.parseInt(aa);
		
		try {
			List<Goods> smlist=smdao.smshopAll(smid);
			request.setAttribute("smlist",smlist);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//	将信息转发到一个新的子页面上
		this.forward("qian/smshop_list3");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
