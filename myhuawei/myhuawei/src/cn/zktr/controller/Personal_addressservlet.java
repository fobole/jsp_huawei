package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Qian_shopcar_cha_dao;
import cn.zktr.model.dao.Set_dizhi_dao;
import cn.zktr.model.entity.Address;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Personal_addressservlet
 */
@WebServlet("/personal_addressservlet")
public class Personal_addressservlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Qian_shopcar_cha_dao qdao=new Qian_shopcar_cha_dao();
	Set_dizhi_dao sdao=new Set_dizhi_dao();
       
	String oname;
	String oaddress;
	String ophone;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Personal_addressservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.session中是否有用户信息 session的有效期30分钟
		Users users=(Users) request.getSession().getAttribute("users");
		// 没有/的去jsp页面，有/则去servlet
		if(users==null){
			//	2.session中无用户，转发去登录页面
			this.redirect("/qian_longin");
		}else{
			int uid=users.getUid();
			try {
				List<Address> dzlist1=qdao.selectAll(uid);
				request.setAttribute("dzlist1", dzlist1);
//				for (Address r : dzlist) {
//					oname=r.getAddname();
//					//省市区+详细地址
//					oaddress=r.getAddsheng()+" "+r.getAddshi()+" "+r.getAddqu()+" "+r.getAdds();
//					ophone=r.getAddphone();
//				}
				List<Address> dzlist2=qdao.dizhi(uid);
				request.setAttribute("dzlist2", dzlist2);
				this.forward("qian/personal_address");
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
