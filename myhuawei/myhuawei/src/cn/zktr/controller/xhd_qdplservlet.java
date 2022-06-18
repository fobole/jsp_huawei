package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.plnrDao;
import cn.zktr.model.dao.xhd_ddbdao;
import cn.zktr.model.entity.Users;
import cn.zktr.model.entity.plnr;
import cn.zktr.model.entity.xhd_dindan;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class xhd_qdplservlet
 */
@WebServlet("/xhd_qdplservlet")
public class xhd_qdplservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	plnrDao pdao= new plnrDao();
	xhd_ddbdao xdao=new xhd_ddbdao();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xhd_qdplservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Users users=(Users) request.getSession().getAttribute("users");
		if(users==null) {
//			2.session中无用户，转发去登录页面
			this.redirect("/qian_longin");
		}else {
			int conid=Integer.parseInt(request.getParameter("conid"));
			int str = Integer.parseInt(request.getParameter("str1"));
			String plnr=request.getParameter("plnr");
			String img = request.getParameter("img");
			String ono=request.getParameter("ono");
			//System.out.println(ono);
			int uid=users.getUid();
			System.out.println(" "+conid+" "+uid+" "+plnr+" "+img+" "+str);
			plnr pl = new plnr(conid,uid,plnr,img);
			
			try {
				int isok=pdao.plnr1(pl);
				if(isok>0) {
					response.getWriter().print("0");
				}
				List<xhd_dindan> list = xdao.findDetai(uid, ono);
				if(list.size()>=1 ) {
					int isok1 = pdao.wcpl1(str,ono);
					if(isok1>0) {
						response.getWriter().print("0");
					}
					if(list.size()==1) {
						int isok2 = pdao.wcpl(uid,ono);
						if(isok2>0) {
							response.getWriter().print("0");
						}
					}
					
				}else {
						System.out.println("程序错误");
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
