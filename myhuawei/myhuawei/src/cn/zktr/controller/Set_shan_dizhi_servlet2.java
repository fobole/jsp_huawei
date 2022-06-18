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
 * Servlet implementation class Set_shan_dizhi_servlet
 */
@WebServlet("/set_shan_dizhi_servlet2")
public class Set_shan_dizhi_servlet2 extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Set_dizhi_dao sdao=new Set_dizhi_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Set_shan_dizhi_servlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//用户id
		Users u=(Users)request.getSession().getAttribute("users");
		if(u==null){
			this.redirect("/qian_longin");
		}else{
			int uid=u.getUid();
			try {
				String addid=request.getParameter("addid");
				//System.out.println(addid);
				int isok=sdao.shan_dizhi(Integer.parseInt(addid));
				if(isok>0) {
					response.getWriter().print("0");
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
