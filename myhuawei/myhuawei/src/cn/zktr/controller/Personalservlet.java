package cn.zktr.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Bigtype_dao;
import cn.zktr.model.dao.Guanggao_dao;
import cn.zktr.model.dao.Set_dizhi_dao;
import cn.zktr.model.dao.Smshop_dao;
import cn.zktr.model.dao.xhd_ddbdao;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Users;
import cn.zktr.model.entity.xhd_dindan;
import cn.zktr.utilts.BaseServlet;
import cn.zktr.utilts.Page;

/**
 * Servlet implementation class Personalservlet
 */
@WebServlet("/personalservlet")
public class Personalservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Bigtype_dao btdao=new Bigtype_dao();
	Guanggao_dao ggdao=new Guanggao_dao();
	Smshop_dao smdao=new Smshop_dao();
	Set_dizhi_dao sdao=new Set_dizhi_dao();
	xhd_ddbdao xdao= new xhd_ddbdao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Personalservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users users=(Users) request.getSession().getAttribute("users");
		if(users==null){
			//	2.session中无用户，转发去登录页面
			this.redirect("/qian_longin");
		}else{
			try {
				
				
				//创建一个Page对象--+*++`a
				Page p=new Page();
				
				
				int uid=users.getUid();
				//头部下拉商品列表
			
				//所有有效订单
				//获得所有的 数据
				List<xhd_dindan> list1=xdao.seletono(uid);
				List<xhd_dindan> list=xdao.selertdindan(uid);
				p.setRows(list1); 
				
				Map<String, List<xhd_dindan>> map=new HashMap<>();
				for (xhd_dindan x : list) {
					map.put(x.getOno(), xdao.findDetail(uid, x.getOno()));
				}
				request.setAttribute("page", p);
				request.setAttribute("map", map);
				this.forward("qian/personal");
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
