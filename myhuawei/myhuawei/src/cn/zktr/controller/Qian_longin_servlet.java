package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Qian_shopcar_dao;
import cn.zktr.model.dao.Users_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Qian_longin
 */
@WebServlet("/qian_longin")
public class Qian_longin_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Users_dao udao=new Users_dao();
	Qian_shopcar_dao cdao=new Qian_shopcar_dao();
    /**
     * @see HttpServlet#HttpServlet() 
     */
    public Qian_longin_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				//request.setAttribute("tips", "0");
				//1.session中是否有用户信息 session的有效期30分钟
				Users users=(Users) request.getSession().getAttribute("users");
				// 没有/的去jsp页面，有/则去servlet
				if(users==null){
				//	2.session中无用户，转发去登录页面
					this.forward("qian/q_longin");
				}else{
					//3.session中有用户，可以直接去首页（servlet的地址）
					//去首页(没有首页 直接去商品列表页)
					this.redirect("/lunboservlet");
				}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				// TODO Auto-generated method stub
				//接收数据
				String uphone=request.getParameter("uphone_d");
				String upwd=request.getParameter("upwd_d");
				try {
					List<Users> userslist=udao.oneUsers(uphone,upwd);
					System.out.println(userslist);
					if(userslist.size()==0){
						//用户名不存在
						request.setAttribute("tips", "1");
						//转发回原界面
						this.forward("qian/q_longin");
					}else if(!userslist.get(0).getUphone().equals(uphone) || !userslist.get(0).getUpwd().equals(upwd)){
						request.setAttribute("tips", "2");
						//转发回原界面
						this.forward("qian/q_longin");
					}else{
						//登录成功
						//将用户保存到session中
						request.getSession().setAttribute("users", userslist.get(0));
						//去首页
						this.redirect("/lunboservlet");
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}

}
