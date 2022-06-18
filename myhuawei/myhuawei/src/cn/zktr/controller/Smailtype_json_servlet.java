package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Bigtype_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseServlet;

/**
 *       头部悬浮出现商品
 */
@WebServlet("/smailtype_json")
public class Smailtype_json_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       Bigtype_dao btdao=new Bigtype_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Smailtype_json_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int btid=Integer.parseInt(request.getParameter("btid"));
		// System.out.println(btid);
		try {
			
			List<Goods> smlist=btdao.smailtypeAll(btid);
			// System.out.println(smlist);
//			将集合存入作用域中
			request.setAttribute("smlist",smlist);
//			将信息转发到一个新的子页面上
			this.forward("qian/smailtype_list");
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
