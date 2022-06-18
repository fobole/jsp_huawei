package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Souso_goods_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Sousuo_xiala_servlet
 */
@WebServlet("/sousuo_xiala_servlet")
public class Sousuo_xiala_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Souso_goods_dao sdao=new Souso_goods_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sousuo_xiala_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				List<Goods> list=sdao.sougoods();
				for (Goods g : list) {
					response.getWriter().print(g.getGkey());
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
