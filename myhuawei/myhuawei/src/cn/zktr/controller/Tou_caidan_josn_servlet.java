package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Tou_caidan_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet 头部下拉菜单
 */
@WebServlet("/tou_caidan")
public class Tou_caidan_josn_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	 Tou_caidan_dao toudao=new Tou_caidan_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tou_caidan_josn_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String btid=request.getParameter("btid");
		//System.out.println(btid);
		try {
			List<Goods> toulist1=toudao.tousmshop(Integer.parseInt(btid));
			//	System.out.println(toulist1);
			request.setAttribute("toulist1", toulist1);
			this.forward("qian/xiala_caidan");
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
