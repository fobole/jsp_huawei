package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Tou_gouwuche_dao;
import cn.zktr.model.entity.Shopcar;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Tou_gouwuche_josn_servlet
 */
@WebServlet("/tou_gouwuche_josn_servlet")
public class Tou_gouwuche_josn_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Tou_gouwuche_dao tdao=new Tou_gouwuche_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tou_gouwuche_josn_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Users users=(Users) request.getSession().getAttribute("users");
		// 没有/的去jsp页面，有/则去servlet
		if(users==null){
			this.forward("qian/gouwuche");
		}else{
			try {
				int listshu=tdao.toucar(users.getUid());
				request.setAttribute("tg", listshu);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			this.forward("qian/gouwuche");
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
