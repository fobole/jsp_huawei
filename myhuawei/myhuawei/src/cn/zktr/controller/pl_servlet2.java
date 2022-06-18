package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.pl_dao2;
import cn.zktr.model.entity.Users;
import cn.zktr.model.entity.pl_entity2;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class pl_servlet2
 */
@WebServlet("/pl_servlet2")
public class pl_servlet2 extends BaseServlet{
	private static final long serialVersionUID = 1L;
	pl_dao2 d=new pl_dao2();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pl_servlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users users=(Users) request.getSession().getAttribute("users");

		if(users==null) {
			this.redirect("/qian_longin");
		}else {
			int uid = users.getUid();
			int conid = Integer.parseInt(request.getParameter("conid"));
			String s = request.getParameter("plnr");
			String t = request.getParameter("img");
			int cmid=Integer.parseInt(request.getParameter("cmid"));
			
			System.out.println(" "+uid+" "+conid+" "+s+" "+t);
			pl_entity2 e=new pl_entity2(uid,conid,s,t);
			
			try {
				int isok=d.pp(e);
				int isok1=d.dd(cmid);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
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
