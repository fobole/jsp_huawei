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
 * Servlet implementation class Demoservlet
 */
@WebServlet("/hwheadservlet")
public class Hwheadservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Bigtype_dao btdao=new Bigtype_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hwheadservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//查询头部菜单
		this.forward("qian/hwhead");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
