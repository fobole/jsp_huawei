package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Bigtype_dao;
import cn.zktr.model.dao.Hjy_pinglun;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;
import cn.zktr.utilts.Page;

/**
 * Servlet implementation class Personal_pinglunservlet
 */
@WebServlet("/Personal_pinglunservlet") 
public class Personal_pinglunservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Bigtype_dao btdao=new Bigtype_dao();
	Hjy_pinglun h=new Hjy_pinglun();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Personal_pinglunservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	Users users=(Users) request.getSession().getAttribute("users");
	String a=request.getParameter("current");
	
	if(users==null) {
		this.redirect("/qian_longin");
	}else {
		try {
			int current=1;
			int uid=users.getUid();
	  
	  //创建一个page对象
	  Page p=new Page();
	    
	    p.setRows(h.Hjy_h(uid));
	
      //存值
	    request.setAttribute("page", p);
	    

		this.forward("qian/personal_pinglun");
		}catch (Exception e) {
			// TODO: handle exception
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
