package cn.zktr.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Sousuo_Dao;
import cn.zktr.model.entity.Admins;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.SouSuo_;
import cn.zktr.utilts.BaseServlet;
import cn.zktr.utilts.Page;

/**
 * Servlet implementation class Sousuo_xiala_servlet
 */
@WebServlet("/sousuo_servlet")
public class Sousuo_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Sousuo_Dao sslcy=new Sousuo_Dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sousuo_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String parma=request.getParameter("sou");
			System.out.println(parma);
			request.setAttribute("sou", parma);
				// 搜索
							String saixuan=request.getParameter("saixuan");
							//获得当前的页面数
							String c=request.getParameter("current");
							int current=1;
							if(c!=null && !c.equals("")){
								current=Integer.parseInt(c);
							}
							//创建一个Page对象
							Page p=new Page();
							//设置页码
							p.setCurrent(current);
							//页大小重新赋值
							p.setPageSize(4);
							//System.out.println(parma+"**************");
							try {
								 List<SouSuo_> list=new ArrayList<SouSuo_>();
								int tiao=0;
								/*
								 * List<SouSuo_> biglist=sslcy.cha_dabiao(); List<SouSuo_> smlist=null;
								 * if(biglist!=null && biglist.size()>0) {
								 * smlist=sslcy.cha_xiaobiao(biglist.get(0).getBtid()); }
								 * 
								 * System.out.println(biglist.size()); request.setAttribute("biglists",
								 * biglist); request.setAttribute("smlists", smlist);
								 * 
								 * System.out.println(biglist); System.out.println(smlist);
								 */
								
								if(saixuan==null || saixuan.equals("综合")) {
									list=sslcy.cha_sou(current, p.getPageSize(),parma,0);
									tiao=sslcy.cha_sstiao(parma);
									request.setAttribute("sx", 0);
								}else if(saixuan.equals("价格")){
									list=sslcy.cha_sou(current, p.getPageSize(),parma,1);
									tiao=sslcy.cha_sstiao(parma);
									request.setAttribute("sx", 1);
								}else if(saixuan.equals("名称")) {
									list=sslcy.cha_sou(current, p.getPageSize(),parma,2);
									tiao=sslcy.cha_sstiao(parma);
									request.setAttribute("sx", 2);
								}
								
								
									//获得总条数
									p.setTotal(tiao);
									// System.out.println(hgdao.ggao_tiao());
									//System.out.println(current+"**************");
									
									
									//获得所有的数据
									p.setRows(list);
								
									//将整个对象保存到作用域中
									request.setAttribute("page", p);
									this.forward("qian/tou_souso");
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
