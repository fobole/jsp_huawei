package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.Date;
import java.util.List;

import cn.zktr.model.dao.Set_order_dao.OrderMapper;
import cn.zktr.model.entity.Order;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;


public class Checkstand_dao extends BaseDao{
	//	付款
	public int fukuan(double opay,String opays,int ostates,String ono) throws Exception {
		String sql="update orders set opay=?,ostates=?,ofktime=?,opays=? where ono=? ";
		return super.updateAll(sql, new Object[] {opay,ostates,new Date(),opays,ono});
	}
	
	// 取消订单 
	public int quxiao(int ostates,String ono) throws Exception {
		String sql="update orders set ostates=?,ocreatetime=? where ono=? ";
		return super.updateAll(sql, new Object[] {ostates,new Date(),ono});
	}
	
	/**
	 * 查询单个订单
	 *
	 */
	public Order oneOrder(String ono) throws Exception{
		String sql="select * from orders where 1=1 and ono=? ";
		//System.out.println(this.selectAll(sql, new OrderMapper(), new Object[]{ono})+"!!!!!!!!!!!");
		List<Order> list= super.selectAll(sql, new OrderMapper(), new Object[]{ono});
		/*if(list.size()>0) {
			return list.get(0);
		}*/
		return list.get(0);
	}
	class OrderMapper implements RowMapper<Order>{

		@Override
		public Order rowMapper(ResultSet rs) throws Exception {
			Order o=new Order();
			//订单映射
			o.setOid(rs.getInt("oid"));
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
}
