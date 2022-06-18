package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Hou_gaidizhi_dao;
import cn.zktr.model.entity.Admins;
import cn.zktr.model.entity.Gaidizhi;
import cn.zktr.utilts.BaseServlet;
import cn.zktr.utilts.Page;

/**
 * Servlet implementation class Table_gaidizhi_servlet
 */
@WebServlet("/table_gaidizhi_servlet")
public class Table_gaidizhi_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Hou_gaidizhi_dao dz=new Hou_gaidizhi_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Table_gaidizhi_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Admins admins=(Admins)request.getSession().getAttribute("admins");
		if(admins==null) {
			this.forward("hou/ht_login");
		}else {
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
						p.setPageSize(5);
						//System.out.println(parma+"**************");
						try {
								//获得总条数
								p.setTotal(dz.cha_tiao(parma));
								// System.out.println(hgdao.ggao_tiao());
								System.out.println(current+"**************");
								//获得所有的数据
								p.setRows(dz.cha_lcy(current, p.getPageSize(),parma));
								//将整个对象保存到作用域中
								request.setAttribute("page", p);
								this.forward("hou/table_gaidizhi");
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
