package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_dingdan_xiangqing_dao;
import cn.zktr.utilts.BaseServlet;
import cn.zktr.utilts.Page;

/**
 * Servlet implementation class Hou_dingdan_xiangqing_servlet
 */
@WebServlet("/hou_dingdan_xiangqing_servlet")
public class Hou_dingdan_xiangqing_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_dingdan_xiangqing_dao xqdao=new Hou_dingdan_xiangqing_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hou_dingdan_xiangqing_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ono=request.getParameter("ono");
		//System.out.println(ono);
		// 搜索
		String parma=request.getParameter("parma");
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
		p.setPageSize(2);
		try {
				//获得总条数
				p.setTotal(xqdao.xq_tiao(ono,parma));
				//获得所有的数据
				p.setRows(xqdao.xq_paging(ono,current, p.getPageSize(),parma));
				//将整个对象保存到作用域中
				request.setAttribute("page", p);
				request.setAttribute("oonn", ono);
				this.forward("hou/dingdan_xiangqing");
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
