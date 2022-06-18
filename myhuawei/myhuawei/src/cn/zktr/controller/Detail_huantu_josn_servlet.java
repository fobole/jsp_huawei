package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Detail_img_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Detail_huantu_josn_servlet
 */
@WebServlet("/detail_huantu_josn_servlet")
public class Detail_huantu_josn_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Detail_img_dao imgdao=new Detail_img_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Detail_huantu_josn_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//
		String cid=request.getParameter("cid");
		//System.out.println(cid);
		try {
			//	根据颜色id 查图片
			if(cid.equals("undefined")) {
				return;
			}
			List<Goods> imglist=imgdao.datu(Integer.parseInt(cid));
			request.setAttribute("imglist",imglist);
			if(imglist.size()>0) {
				request.setAttribute("pname", imglist.get(0).getPname());
			}
			this.forward("qian/details_img_list");
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
