package cn.zktr.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Gai_shopcar_dao;
import cn.zktr.model.dao.Qian_shopcar_cha_dao;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Gwc_gaishu_servlet
 */
@WebServlet("/gwc_gaishu_servlet")
public class Gwc_gaishu_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Gai_shopcar_dao gdao=new Gai_shopcar_dao();
	Qian_shopcar_cha_dao cdao=new Qian_shopcar_cha_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Gwc_gaishu_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users users=(Users) request.getSession().getAttribute("users");
		if(users==null) {
			this.redirect("/qian_longin");
		}else{
			//System.out.println(request.getParameter("a")+"---------");
			
			int uid=users.getUid();
			try {
				String carid=request.getParameter("carid");
				String carcount=request.getParameter("carcount");
				//System.out.println(carcount+"___________________"+carid);
				int isok=gdao.checkedNum(carcount, carid);
				// System.out.println(isok);
				if(isok>0) {
					//查询总金额和总件数
					Double amount = cdao.getAmount(uid);
					//System.out.println(amount);
					Integer total = cdao.getTotal(uid);
					Double xiaoji=cdao.xiaoji(carid);
					//System.out.println(xiaoji+"--------");
					response.getWriter().println("({total:"+total+",amount:"+amount+",xiaoji:"+xiaoji+"})");
				}
					
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
