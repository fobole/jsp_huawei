package cn.zktr.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.zktr.model.dao.Qian_shopcar_cha_dao;
import cn.zktr.model.dao.Set_order_dao;
import cn.zktr.model.entity.Address;
import cn.zktr.model.entity.Order;
import cn.zktr.model.entity.Order_detail;
import cn.zktr.model.entity.Shopcar;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseServlet;

/**
 * Servlet implementation class Settlement
 */
@WebServlet("/settlement2")
public class Settlement_servlet2 extends BaseServlet {
	private static final long serialVersionUID = 1L;
	Qian_shopcar_cha_dao cdao=new Qian_shopcar_cha_dao();
	Set_order_dao sdao=new Set_order_dao();
	
	String oname;
	String oaddress;
	String ophone;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Settlement_servlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*try {
			//用户id
			Users u=(Users)request.getSession().getAttribute("users");
			if(u==null){
				this.redirect("/qian_longin");
			}else{
				int userid=u.getUid();
				//			结算页面查询
				List<Shopcar> list = cdao.set_car(userid);
				//查询总金额和总件数
				Double goodsAmount = cdao.getAmount(userid);
				Integer goodsNum = cdao.getTotal(userid);
				
				//默认地址
				List<Address> mrdzlist=cdao.selectAll(userid);
				request.setAttribute("mrdzlist", mrdzlist);
				System.out.println(mrdzlist+"mrdzlist");
				for (Address r : mrdzlist) {
					oname=r.getAddname();
					//省市区+详细地址
					oaddress=r.getAddsheng()+" "+r.getAddshi()+" "+r.getAddqu()+" "+r.getAdds();
					ophone=r.getAddphone();
				}
				//不是默认地址
				List<Address> dzlist=cdao.dizhi(userid);
				request.setAttribute("dzlist", dzlist);
				if(mrdzlist.size()==0) {
					for (int i=0;i<dzlist.size();i++) {
						oname=dzlist.get(0).getAddname();
						//省市区+详细地址
						oaddress=dzlist.get(0).getAddsheng()+" "+dzlist.get(0).getAddshi()+" "+dzlist.get(0).getAddqu()+" "+dzlist.get(0).getAdds();
						ophone=dzlist.get(0).getAddphone();
					}
				}
				
				request.setAttribute("list", list);
				request.setAttribute("name", oname);
				request.setAttribute("address", oaddress);
				request.setAttribute("phone", ophone);
				request.setAttribute("goodsAmount", goodsAmount);
				request.setAttribute("goodsNum", goodsNum);
				this.forward("qian/settlement");
			}
			
		} catch (Exception e) {s
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//用户id
		Users u=(Users) request.getSession().getAttribute("users");
		int uid=u.getUid();
		
		//订单编号
		String ono=request.getParameter("ono");
		//当前时间
		Timestamp otime=Timestamp.valueOf(request.getParameter("otime"));
		//订单状态(默认为0，未付款)
		int oState=0;
		//订单总金额
		double ozongjia=Double.valueOf(request.getParameter("ozongjia"));
		
		//收货人，收货地址，联系方式
		String oname=request.getParameter("oname");
		String oaddress=request.getParameter("oaddress");
		String ophone=request.getParameter("ophone");
		
		//详表数量
		int doshu=Integer.parseInt(request.getParameter("doshu"));
		int conid=Integer.parseInt(request.getParameter("conid"));
		
		/*//删除掉购物车的商品
		String carid=request.getParameter("carid");*/
		System.out.println(ono+" "+otime+" "+ozongjia+" "+oname+" "+oaddress+" "+ophone+" ");
		
		//将信息存到订单表     订单id   下单时间，用户id，订单总金额，订单状态，收获地址，收货人，联系方式
		Order o=new Order();
		o.setOno(ono);
		o.setOaddress(oaddress);
		o.setOzongjia(ozongjia);
		o.setOfreight(0);
		o.setOstates(oState);
		o.setOcreatetime(otime);
		o.setUido(uid);
		o.setOname(oname);
		o.setOphone(ophone);
		o.setOaddress(oaddress);
		try {
			int order=sdao.insertOrder(o);
			
			//将信息存入订单详情表订单编号 商品id 数量
			//这个地方建议大家分开两个实体写，我是共用之前的类
			Order_detail od=new Order_detail();
			od.setOnodo(ono);
			od.setConiddo(conid);
			od.setDoshu(doshu);
			int orderDetails=sdao.insertOrderDetails(od);
			System.out.println(orderDetails);
			
			response.getWriter().println("1");
			/**/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/*try {
			//System.out.println(ono+"#");
			List<Order> lo=sdao.isOrder(ono);
			System.out.println(lo.size()+"^^^^^^^");
			if(lo.size()<=0){
				
				//状态表
				Order os=new Order();
				os.setOstate(oState);
				os.setOstime(otime);
				os.setOnoos(ono);
				int order_d=sdao.insertOrder_state(os);
				
				
				if(carid!=null) {
					if(order>0 && order_d>0 && orderDetails>0){
						// response.getWriter().println(0);
						
						//购物车删除完已选中的
						List<Shopcar> linglist = cdao.set_car(uid);
						System.out.println(linglist.size()+"购物车 ");
						if(linglist.size()==0) {
							response.getWriter().println("0");
						}
					}
				}
				
			}else{
				//将信息存入订单详情表订单编号 商品id 数量
				Order_detail od=new Order_detail();
				od.setOnodo(ono);
				od.setConiddo(conid);
				od.setDoshu(doshu);
				int orderDetails=sdao.insertOrderDetails(od);
				//删除掉购物车的商品
				if(carid!=null) {
					int d=sdao.delete(Integer.parseInt(carid));
					//购物车删除完已选中的
					
					if(linglist.size()==0) {
						response.getWriter().println("0");
					}
				}
				// response.getWriter().println("({ono:"+ono+",orderamount:"+ozongjia+"})");
			}
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	}

}
