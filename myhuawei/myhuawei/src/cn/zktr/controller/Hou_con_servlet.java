package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_tianjia_shop_dao;
import cn.zktr.model.entity.Goods_details;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Hou_con_servlet
 */
@WebServlet("/hou_con_servlet")
public class Hou_con_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_tianjia_shop_dao hdao=new Hou_tianjia_shop_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hou_con_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cid=request.getParameter("cid");
		System.out.println(cid);
		try {
			List<Goods_details> list=hdao.con_name(cid);
			request.setAttribute("cid", cid);
			request.setAttribute("conlist", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.forward("hou/peizhi");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
