package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_gai_smailtype_state_dao;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Hou_gai_smailtype_state_servlet
 */
@WebServlet("/hou_gai_smailtype_state_servlet2")
public class Hou_gai_smailtype_state_servlet2 extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_gai_smailtype_state_dao hgdao=new Hou_gai_smailtype_state_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hou_gai_smailtype_state_servlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String btid=request.getParameter("btid");
		String current=request.getParameter("current");
		String smid=request.getParameter("smid");
		System.out.println(btid+"+"+current+"+"+smid);
		try {
			hgdao.sm_state2(Integer.parseInt(smid));
			this.redirect("/ht_smail_servlet?current="+current+"&btid="+btid);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
