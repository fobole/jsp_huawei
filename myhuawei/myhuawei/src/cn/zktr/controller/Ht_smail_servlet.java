package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_type_dao;
import cn.zktr.utilts.BaseServlet;
import cn.zktr.utilts.Page;

/**
 * Servlet 后台根据大类查小类
 */
@WebServlet("/ht_smail_servlet")
public class Ht_smail_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_type_dao htdao=new Hou_type_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ht_smail_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 获取大类别
		String btid=request.getParameter("btid");
		
		/*if(btid==null || btid.equals("")) {
			btid="1";
		}*/
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
			System.out.println(btid+ " "+current);
				//获得总条数
				p.setTotal(htdao.smailtype_tiao(Integer.parseInt(btid),parma));
				//获得所有的数据
				p.setRows(htdao.smailtype_paging(Integer.parseInt(btid),current, p.getPageSize(),parma));
				//将整个对象保存到作用域中
				request.setAttribute("page", p);
				request.setAttribute("btid", btid);
				this.forward("hou/hou_smail_type");
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
