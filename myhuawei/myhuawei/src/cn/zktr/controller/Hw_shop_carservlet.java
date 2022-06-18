package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Qian_shopcar_cha_dao;
import cn.zktr.model.dao.Qian_shopcar_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Shopcar;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Hw_shop_car
 */
@WebServlet("/hw_shop_carservlet")
public class Hw_shop_carservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Qian_shopcar_cha_dao cdao=new Qian_shopcar_cha_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hw_shop_carservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.session中是否有用户信息 session的有效期30分钟
		Users users=(Users) request.getSession().getAttribute("users");
		// 没有/的去jsp页面，有/则去servlet
		if(users==null){
			//	2.session中无用户，转发去登录页面
			this.redirect("/qian_longin");
		}else{
			int uid=users.getUid();
			try {
				List<Shopcar> shopcarlist=cdao.car(uid);
				request.getSession().setAttribute("shopcarlist",shopcarlist);
				//查询总金额和总件数
				Double amount = cdao.getAmount(uid);
				//System.out.println(amount);
				Integer total = cdao.getTotal(uid);
				//System.out.println(amount+"~"+total);
				request.setAttribute("amount", amount);
				request.setAttribute("total", total);
				this.forward("qian/hw_shop_car");
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
