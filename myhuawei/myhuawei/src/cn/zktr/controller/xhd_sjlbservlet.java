package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Bigtype_dao;
import cn.zktr.model.dao.Guanggao_dao;
import cn.zktr.model.dao.Smshop_dao;
import cn.zktr.model.dao.Tou_caidan_dao;
import cn.zktr.model.dao.xhd_grzxDao;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Guanggao;
import cn.zktr.utilts.BaseServlet;
import cn.zktr.utilts.Page;

/**
 * Servlet implementation class xhd_sjlbservlet
 */
@WebServlet("/xhd_sjlbservlet")
public class xhd_sjlbservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Bigtype_dao btdao=new Bigtype_dao();
	Guanggao_dao ggdao=new Guanggao_dao();
	Smshop_dao smdao=new Smshop_dao();
	Tou_caidan_dao gdao= new Tou_caidan_dao();
	xhd_grzxDao lmdao=new xhd_grzxDao();
    /**
     * @see HttpServlet#HttpServlet()
     */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获得当前的页面数
		String c=request.getParameter("current");
		int b=Integer.parseInt(request.getParameter("gid"));
//		System.out.println(b);
		int current=1;
		if(c!=null && !c.equals("")){
			current=Integer.parseInt(c);
		}
		
		//创建一个Page对象--+*++`a
		Page p=new Page();
		//设置页码
		p.setCurrent(current);
		//页大小重新赋值
		p.setPageSize(20);
		try {
			
			//获得总条数
			p.setTotal(gdao.selectBygoods(b));
			//获得所有的 数据
			p.setRows(gdao.selectByCurrent(current, p.getPageSize(),b));
			String btname=lmdao.selectfl(b);
			request.setAttribute("btname", btname);
			//将整个对象保存到作用域中
			request.setAttribute("page", p);
			/*request.setAttribute("smlist3",smlist3);*/
			this.forward("qian/xhd_sjlb");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
