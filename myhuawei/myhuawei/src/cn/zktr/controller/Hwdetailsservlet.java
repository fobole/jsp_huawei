package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Bigtype_dao;
import cn.zktr.model.dao.HJY_hwdetails_dao;
import cn.zktr.model.dao.Hw_details_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Goods_details;
import cn.zktr.model.entity.HJY_hwdetails_entity;
import cn.zktr.model.entity.Likess;
import cn.zktr.model.entity.Users;
import cn.zktr.model.service.Hw_details_service;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet 商品详情
 */
@WebServlet("/hwdetailsservlet")
public class Hwdetailsservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
		Hw_details_dao hdao=new Hw_details_dao();
		Bigtype_dao btdao=new Bigtype_dao();
		
		HJY_hwdetails_dao jdao=new HJY_hwdetails_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hwdetailsservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users users=(Users) request.getSession().getAttribute("users");
		//商品id
		String gid = request.getParameter("gid");
//		System.out.println(gid);
		if(gid != null && gid != "") {
			//查询商品评价
			//商品对象
			try {
				//查询商品信息
				Goods_details Goods_details=hdao.detail_one(Integer.parseInt(gid));
				//System.out.println(Goods_details);
				request.setAttribute("goods",Goods_details);
				//查颜色
				List<Goods_details> colorlist=hdao.color_name(Integer.parseInt(gid));
				request.setAttribute("colorlist",colorlist);
				// 查详情图
				List<Goods_details> xiangtulist=hdao.xiangtu(1,Integer.parseInt(gid));
				request.setAttribute("xiangtulist",xiangtulist);
				if(users!=null) {
					Likess like=hdao.like_goods(Integer.parseInt(gid), users.getUid());
					//System.out.println(like);
					request.setAttribute("like",like);
				}
				// 规格
				List<Goods_details> gglist=hdao.xiangtu(2,Integer.parseInt(gid));
				request.setAttribute("gglist",gglist);
				
				// 包装
				List<Goods_details> bzlist=hdao.xiangtu(3,Integer.parseInt(gid));
				request.setAttribute("bzlist",bzlist);
				
				// 评论
				List<HJY_hwdetails_entity> hwde=jdao.Hjy_h(Integer.parseInt(gid));
				System.err.println(hwde.size()+"评论长度");
				request.setAttribute("hwde", hwde);
				this.forward("qian/hwdetails");
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			this.redirect("/lunboservlet");
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
