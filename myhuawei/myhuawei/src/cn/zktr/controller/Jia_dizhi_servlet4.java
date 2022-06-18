package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Set_dizhi_dao;
import cn.zktr.model.entity.Set_address;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Jia_dizhi_servlet
 */
@WebServlet("/jia_dizhi_servlet4")
public class Jia_dizhi_servlet4 extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Set_dizhi_dao sdao=new Set_dizhi_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Jia_dizhi_servlet4() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//用户id
				Users u=(Users)request.getSession().getAttribute("users");
				String addname=request.getParameter("addname");
				String addphone=request.getParameter("addphone");
				String addsheng=request.getParameter("addsheng");
				String addshi=request.getParameter("addshi");
				String addqu=request.getParameter("addqu");
				String adds=request.getParameter("adds");
				System.out.println(" "+addname+" "+addphone+" "+addsheng+" "+addshi+" "+addqu+" "+adds );
				if(u==null){
					this.redirect("/qian_longin");
				}else{
					int uid=u.getUid();
					try {
						int isok=sdao.gai_adddefault(uid);
						Set_address sa=new Set_address(addname, addphone, addsheng, addshi, addqu, adds,uid);
						int isok1=sdao.zeng_dizhi(sa);
						if(isok>0 && isok1>0) {
							response.getWriter().println("0");
						}
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
