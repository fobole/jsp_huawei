package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_index_dao;
import cn.zktr.model.entity.Admins;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Guanggao;
import cn.zktr.model.entity.Hou_order;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Indexservlet
 */
@WebServlet("/indexservlet")
public class Indexservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_index_dao idao=new Hou_index_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Indexservlet() {
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
				List<Goods> list1=idao.shangjiashu();
				List<Guanggao> list2=idao.ggao_shu();
				List<Users> list3=idao.users_shu();
				List<Admins> list4=idao.admins_shu();
				request.setAttribute("shopshu", list1.size());
				request.setAttribute("ggaoshu", list2.size());
				request.setAttribute("usershu", list3.size());
				request.setAttribute("adminshu", list4.size());
				// 待付款
				int dfk=idao.ostates(0);
				// 待发货
				int dfh=idao.ostates(1);
				// 已发货
				int yfh=idao.ostates(4);
				// 已完成
				int ywc=idao.ostates(6);
				// 已退款
				int ytk=idao.ostates(3);
				request.setAttribute("dfk", dfk);
				request.setAttribute("dfh", dfh);
				request.setAttribute("yfh", yfh);
				request.setAttribute("ywc", ywc);
				request.setAttribute("ytk", ytk);
				
				// 收入情况
				List<Hou_order> soulist=idao.shou();
				request.setAttribute("soulist", soulist);
				
				int ubaomi=idao.ushu_baomi();
				int unan=idao.ushu_nan();
				int unv=idao.ushu_nv();
				request.setAttribute("ubaomi", ubaomi);
				request.setAttribute("unan", unan);
				request.setAttribute("unv", unv);
				
				
				int anan=idao.ashu_nan();
				int anv=idao.ashu_nv();
				request.setAttribute("anan", anan);
				request.setAttribute("anv", anv);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			this.forward("hou/index");
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
