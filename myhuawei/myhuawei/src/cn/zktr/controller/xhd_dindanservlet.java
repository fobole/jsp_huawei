package cn.zktr.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.xhd_ddbdao;
import cn.zktr.model.entity.Users;
import cn.zktr.model.entity.xhd_dindan;
import cn.zktr.utilts.BaseServlet;
import cn.zktr.utilts.Page;

/**
 * Servlet implementation class xhd_dindanservlet
 */
@WebServlet("/xhd_dindanservlet")
public class xhd_dindanservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	xhd_ddbdao xdao= new xhd_ddbdao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xhd_dindanservlet() {
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
			String state=request.getParameter("st");
			try {
			
			System.out.println(state);
			Page page = new Page();
			int uid=users.getUid();
			List<xhd_dindan> list = new ArrayList<xhd_dindan>(); 
			if(state==null || state.equals("全部有效订单")) {
			    list=xdao.seletono(uid);
			}else if( state.equals("已退款")) {
				
				list=xdao.seletono1(uid, 8);
			}else if(state.equals("待付款")) {
				
				list=xdao.seletono1(uid, 0);
			}else if(state.equals("待发货")) {
				
				list=xdao.seletono1(uid, 1);
			}else if(state.equals("已取消")) {
				
				list=xdao.seletono1(uid, 2);
			}else if(state.equals("待收货")) {
				
				list=xdao.seletono1(uid, 4);
			}else if(state.equals("待评价")) {
				
				list=xdao.seletono1(uid, 5);
			}else if( state.equals("已退货")) {
				list=xdao.seletono1(uid, 3);
			}
			page.setRows(list);
			Map<String, List<xhd_dindan>> map=new HashMap<>();
			for (xhd_dindan x : list) {
				map.put(x.getOno(), xdao.findDetail(uid, x.getOno()));
			}
			request.setAttribute("page", page);
			request.setAttribute("map", map);
			this.forward("qian/orders");
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
