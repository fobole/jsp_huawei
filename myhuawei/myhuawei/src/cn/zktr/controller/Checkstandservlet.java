package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Checkstand_dao;
import cn.zktr.model.entity.Order;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Checkstand
 */
@WebServlet("/checkstandservlet")
public class Checkstandservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Checkstand_dao cdao=new Checkstand_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Checkstandservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 查询订单
		String ono=request.getParameter("ono");
		System.out.println(ono+"付款界面单号");
		try {
			Order order=cdao.oneOrder(ono);
			System.out.println(order);
			request.setAttribute("order",order);
			forward("qian/checkstand");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String ono=request.getParameter("ono");
			String pays=request.getParameter("pays");
			int ostates=1;
			System.out.println(ono+"  "+pays);
			try {
				Order o=cdao.oneOrder(ono);
				int key=cdao.fukuan(o.getOzongjia(), pays, ostates, ono);
				if(key>0) {
					response.getWriter().print("1");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
	}

}
