package cn.zktr.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.zktr.model.dao.Bigtype_dao;
import cn.zktr.model.dao.Guanggao_dao;
import cn.zktr.model.dao.Smshop_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Guanggao;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Lunboservlet
 */
@WebServlet("/lunboservlet")
public class Lunboservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Bigtype_dao btdao=new Bigtype_dao();
	Guanggao_dao ggdao=new Guanggao_dao();
	Smshop_dao smdao=new Smshop_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Lunboservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			//HttpSession session = request.getSession();
			//session.setMaxInactiveInterval(10);//单位为秒
			//轮播广告
			List<Guanggao> gglist= ggdao.lunboguanggao();
			request.setAttribute("gglist",gglist);
			//轮播图上的菜单			
			List<Goods> btlist = btdao.bigtypeAll();
			request.setAttribute("btlist",btlist);
			
			
			//限时购-最后5个商品
			List<Goods> fivelist = smdao.fiveAll();
			request.setAttribute("fivelist",fivelist);
			
			/*// 查询限时抢购时间
			Date sj=smdao.xianshi(fivelist.size());
			int xianshi=(int) ((new Date().getTime()-sj.getTime())/1000/60);
			System.out.println(xianshi);
			request.setAttribute("sj", xianshi);*/
			
			
			int one=btdao.onebtid();
			int two=btdao.twobtid();
			int three=btdao.threebtid();
			//int four=btdao.fourbtid();
			
			System.out.println(one+"#"+two+"#"+three+"#");
			request.setAttribute("one",btdao.onename());
			request.setAttribute("two",btdao.twoname());
			request.setAttribute("three",btdao.threename());
			//request.setAttribute("four",four);
			
			//切换小类别-四个的选项卡-1
			List<Goods> smlist1=btdao.smailtypeAll1(one);
			request.setAttribute("smlist1",smlist1);
			//切换小类别-四个的选项卡-2
			//List<Goods> smlist4=btdao.smailtypeAll4(four);
			//request.setAttribute("smlist4",smlist4);
			//切换小类别-五个的选项卡-1
			List<Goods> smlist2=btdao.smailtypeAll2(two);
			request.setAttribute("smlist2",smlist2);
			//切换小类别-五个的选项卡-2
			List<Goods> smlist3=btdao.smailtypeAll3(three);
			request.setAttribute("smlist3",smlist3);
			this.forward("qian/lunbo");
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
