package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.entity.Order;
import cn.zktr.model.entity.Order_detail;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Set_order_dao extends BaseDao{
	/**
	 * 根据订单编号查询该订单是否存在
	 * @param orderid
	 * @return
	 * @throws Exception
	 */
	public List<Order> isOrder(String ono) throws Exception{
		String sql="select * from orders where 1=1 and ono=? ";
		//System.out.println(this.selectAll(sql, new OrderMapper(), new Object[]{ono})+"!!!!!!!!!!!");
		return super.selectAll(sql, new OrderMapper(), new Object[]{ono});
	}
	class OrderMapper implements RowMapper<Order>{

		@Override
		public Order rowMapper(ResultSet rs) throws Exception {
			Order o=new Order();
			//订单映射
			o.setOno(rs.getString("ono"));
			o.setOzongjia(rs.getDouble("ozongjia"));
			o.setOpay(rs.getDouble("opay"));
			o.setOfreight(rs.getInt("ofreight"));
			o.setOstates(rs.getInt("ostates"));
			o.setOcreatetime(rs.getTimestamp("ocreatetime"));
			o.setOpays(rs.getString("opays"));
			o.setOjifen(rs.getInt("ojifen"));
			o.setUido(rs.getInt("uid"));
			o.setOname(rs.getString("oname"));
			o.setOphone(rs.getString("ophone"));
			o.setOaddress(rs.getString("oaddress"));
			return o;
		}
	}
	/**
	 * 新增订单
	 * @param o
	 * @return
	 * @throws Exception
	 */
	public int insertOrder(Order o) throws Exception{
		String sql="insert orders VALUES(null,?,?,null,?,?,?,null,?,?,?,?,?,?,null,null,null,null)";
		//System.out.println(o);
		Object[] obj=new Object[]{o.getOno(),o.getOzongjia(),o.getOfreight(),o.getOstates()
				,o.getOcreatetime(),o.getOjifen(),o.getUido(),o.getOname(),o.getOphone(),o.getOaddress(),0};
		return super.updateAll(sql, obj);
	}
	/**
	 * 新增订单状态表
	 * @param o
	 * @return
	 * @throws Exception
	 */
	public int insertOrder_state(Order os) throws Exception{
		String sql="insert into orderstatus value(null,?,?,?)";
		//System.out.println(os);
		Object[] obj=new Object[]{os.getOstate(),os.getOstime(),os.getOnoos()};
		return super.updateAll(sql, obj);
	}
	
	/**
	 * 新增订单详情
	 * @param od
	 * @return
	 * @throws Exception
	 */
	public int insertOrderDetails(Order_detail od) throws Exception{
		String sql="insert into detailsorder value(null,?,?,?,0)";
		//System.out.println(od);
		Object[] obj=new Object[]{od.getOnodo(),od.getConiddo(),od.getDoshu()};
		return super.updateAll(sql, obj);
	}
	/**
	 * 直接删除购物车的信息
	 * @param cartId
	 * @return
	 * @throws Exception
	 */
	public int delete(Integer carid) throws Exception{
		String sql="delete from shopcar where carid=? ";
		Object[] obj=new Object[]{carid};
		return super.updateAll(sql, obj);
	}
}
