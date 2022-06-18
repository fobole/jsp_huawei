package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Configuration_dao;
import cn.zktr.model.dao.Detail_img_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Configuration_josn_servlet
 */
@WebServlet("/configuration_josn_servlet")
public class Configuration_josn_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Configuration_dao condao=new Configuration_dao();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Configuration_josn_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cid=request.getParameter("cid");
		//System.out.println(cid);
		try {
			List<Goods> conlist=null;
			//查配置
			
			if(cid!=null && !cid.equals("undefined")) {
				conlist=condao.con_all(Integer.parseInt(cid));
			}
			
			//System.out.println(conlist);
			request.setAttribute("conlist",conlist);
			this.forward("qian/configuration_list");
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
