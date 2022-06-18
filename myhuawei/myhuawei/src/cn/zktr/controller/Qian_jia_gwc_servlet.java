package cn.zktr.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSeparatorUI;

import cn.zktr.model.dao.Qian_shopcar_dao;
import cn.zktr.model.dao.Qian_shopcar_cha_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Qian_jia_gwc_servlet
 */
@WebServlet("/qian_jia_gwc_servlet")
public class Qian_jia_gwc_servlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Qian_shopcar_cha_dao indao=new Qian_shopcar_cha_dao();
	Qian_shopcar_dao cdao=new Qian_shopcar_dao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Qian_jia_gwc_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users u=(Users)request.getSession().getAttribute("users");
		//System.err.println(u);
		if(u==null){
			//未登录先去登录
			this.redirect("/qian_longin");
		}else{
			try {
				//有用户，先获得用户的编号
				int uid=u.getUid();
				//获得配置id编号
				String carcount=request.getParameter("carcount");
				String conid=request.getParameter("conid");
				System.out.println(carcount+"~"+conid);
				//根据用户编号和商品编号去购物车表查询所有的商品
				List<Goods> list=cdao.selectByid(uid, Integer.parseInt(conid));
				if(list.size()>0){
					//如果商品已经有 则修改数量
					int carid=list.get(0).getCarid();
					int count=list.get(0).getCarcount();
					int isok=cdao.updateNum(carid, count+Integer.parseInt(carcount));
					if(isok>0){
						response.getWriter().print("0");
					}
				}else{
					//商品不存在，要获得新商品的信息，新增一条数据到购物车表
					Goods g=new Goods();
					g.setUidcar(uid);
					g.setConidcar(Integer.parseInt(conid));
					g.setCarcount(Integer.parseInt(carcount));
					g.setCaris(0);
					int isok=cdao.gwc_insert(g);
					System.out.println(isok);
					if(isok>0){
						response.getWriter().print("0");
					}
				}
			} catch (NumberFormatException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		
		//int uid=users.getUid();
		/*List<Goods> shopcarlist=(List)request.getSession().getAttribute("shopcarlist");
		for (Goods g : shopcarlist) {
			//System.out.println(g.getConidcar());
			if(g.getConidcar()==Integer.parseInt(conid)) {
				//System.out.println("购物车已存在");
				
				return;
			}
		}
		try {
			int key=indao.gwc_insert(Integer.parseInt(conid), users.getUid(), Integer.parseInt(carcount));
			if(key>0) {
				System.out.println("加入购物车成功");
				List<Goods> shopcarlist1=cdao.car(users.getUid());
				request.getSession().setAttribute("shopcarlist",shopcarlist1);
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
