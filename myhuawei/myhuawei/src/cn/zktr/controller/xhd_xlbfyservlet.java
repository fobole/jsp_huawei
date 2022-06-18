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
 * Servlet implementation class xhd_xlbfyservlet
 */
@WebServlet("/xhd_xlbfy")
public class xhd_xlbfyservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Bigtype_dao btdao=new Bigtype_dao();
	Guanggao_dao ggdao=new Guanggao_dao();
	Smshop_dao smdao=new Smshop_dao();
	Tou_caidan_dao gdao= new Tou_caidan_dao();
	xhd_grzxDao lmdao=new xhd_grzxDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xhd_xlbfyservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String c=request.getParameter("current");
		int s=Integer.parseInt(request.getParameter("smid"));
		System.out.println(s);
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
			//头部公共菜单
			List<Goods> toubtlist = btdao.bigtypeAlltou();
			request.getSession().setAttribute("toubtlist", toubtlist);
			//轮播广告
			List<Guanggao> gglist= ggdao.lunboguanggao();
			request.setAttribute("gglist",gglist);
			//轮播图上的菜单			
			List<Goods> btlist = btdao.bigtypeAll();
			request.setAttribute("btlist",btlist);
			//限时购-最后5个商品
			/*List<Goods> fivelist = smdao.fiveAll();
			request.setAttribute("fivelist",fivelist);
			//切换小类别-四个的选项卡-1
			List<Goods> smlist1=btdao.smailtypeAll1();
			request.setAttribute("smlist1",smlist1);
			//切换小类别-五个的选项卡-1
			List<Goods> smlist2=btdao.smailtypeAll2();
			request.setAttribute("smlist2",smlist2);
			//切换小类别-五个的选项卡-2
			List<Goods> smlist3=btdao.smailtypeAll3();*/
			//获得总条数
			p.setTotal(gdao.selectxlb(s));
			//获得所有的 数据
			p.setRows(gdao.selectxlbfy(current, p.getPageSize(), s));
			String btname=lmdao.selectfl1(s);
			request.setAttribute("btname", btname);
			//将整个对象保存到作用域中
			request.setAttribute("page", p);
			//request.setAttribute("smlist3",smlist3);
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
