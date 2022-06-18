package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Likes_dao;
import cn.zktr.model.entity.Lcy_likes;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Personal_likesservlet
 */
@WebServlet("/personal_likesservlet")
public class Personal_likesservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Likes_dao likedao=new Likes_dao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Personal_likesservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users users=(Users) request.getSession().getAttribute("users");
		// 没有/的去jsp页面，有/则去servlet
		if(users==null){
			//	2.session中无用户，转发去登录页面
			this.redirect("/qian_longin");
		}else{
			int uid=users.getUid();
			try {
				List<Lcy_likes> list=likedao.lcylike(uid);
				request.setAttribute("likelist", list);
				forward("qian/personal_likes");			
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
