package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_ggao_dao;
import cn.zktr.model.entity.Admins;
import cn.zktr.model.entity.Guanggao;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Btname_josn_servlet
 */
@WebServlet("/btname_josn_servlet3")
public class Btname_josn_servlet3 extends BaseServlet{
	private static final long serialVersionUID = 1L;
	Hou_ggao_dao hdao=new Hou_ggao_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Btname_josn_servlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Admins admins=(Admins)request.getSession().getAttribute("admins");
		if(admins==null) {
			this.forward("hou/ht_login");
		}else {
			try {
				String smid=request.getParameter("smid");
				List<Guanggao> list= hdao.gname(smid);
				request.setAttribute("glist", list);
				this.forward("hou/btname_josn3");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
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
