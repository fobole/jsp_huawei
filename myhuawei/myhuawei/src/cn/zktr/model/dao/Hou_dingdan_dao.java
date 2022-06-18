package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.Date;
import java.util.List;

import cn.zktr.model.dao.Hou_admins_dao.adminsMapper;
import cn.zktr.model.dao.Hou_shop_dao.ShopRowMapper;
import cn.zktr.model.entity.Admins;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Hou_order;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Hou_dingdan_dao extends BaseDao{
		//发货
		public int fahuo(int ostates,String ono) throws Exception {
			String sql="update orders set ostates=?,ofhtime=? where ono=? ";
			return super.updateAll(sql, new Object[] {ostates,new Date(),ono});
		}
		//退款
		public int tuikuan(int ostates,String ono) throws Exception {
			String sql="update orders set ostates=?,ofhtime=? where ono=? ";
			return super.updateAll(sql, new Object[] {ostates,new Date(),ono});
		}
		//退货new Date()
		public int tuihuo(int ostates,String ono) throws Exception {
			String sql="update orders set ostates=?,owctime=? where ono=? ";
			return super.updateAll(sql, new Object[] {ostates,new Date(),ono});
		}
		//拒绝退款
		public int jujuetk(int ostates,String ono) throws Exception {
			String sql="update orders set ostates=? where ono=? ";
			return super.updateAll(sql, new Object[] {ostates,ono});
		}
		//拒绝退款
		public int jujueth(int ostates,String ono) throws Exception {
			String sql="update orders set ostates=? where ono=? ";
			return super.updateAll(sql, new Object[] {ostates,ono});
		}
		//后台确认收货
		public int queren(int ostates,String ono) throws Exception {
			String sql="update orders set ostates=?,oshtime=?,owctime=? where ono=?";
			return super.updateAll(sql, new Object[] {ostates,new Date(),new Date(),ono});
		}
	
	
		//查询商品总条数
		public int dd_tiao(String parma) throws Exception{
				//字符串拼接
				StringBuffer sql=new StringBuffer("SELECT * FROM orders o LEFT join orderstatus os on o.ono=os.ono where 1=1 ");
				if(parma!=null){
					sql.append(" and (o.ono like '%"+parma+"%' or o.oname like '%"+parma+"%')");
				}
				//sql.append(" order by uid desc");
				List<Hou_order> list=super.selectAll(sql.toString(), new ShopRowMapper(), new Object[]{});
				return list.size();
		};
		
		//查询商品_分页查询
		public List<Hou_order> dd_paging(int c,int p,String parma) throws Exception{
				//字符串拼接
				StringBuffer sql=new StringBuffer("SELECT * FROM orders o LEFT join orderstatus os on o.ono=os.ono where 1=1  ");
				if(parma!=null){
					sql.append(" and (o.ono like '%"+parma+"%' or o.oname like '%"+parma+"%')");
				}
				sql.append(" order by o.oid desc limit ?,?");
				return super.selectAll(sql.toString(), new ShopRowMapper(), new Object[]{(c-1)*p,p});
		};
		
		class ShopRowMapper implements RowMapper<Hou_order> {

			@Override
			public Hou_order rowMapper(ResultSet rs) throws Exception {
				// TODO Auto-generated method stub
				Hou_order g=new Hou_order();
				// 订单表
				g.setOno(rs.getString("ono"));
				g.setOzongjia(rs.getDouble("ozongjia"));
				g.setOname(rs.getString("oname"));
				g.setOphone(rs.getString("ophone"));
				g.setOaddress(rs.getString("oaddress"));
				g.setOcreatetime(rs.getTimestamp("ocreatetime"));
				g.setOstates(rs.getInt("ostates"));
				//状态表
				g.setOsid(rs.getInt("osid"));
				g.setOstate(rs.getInt("ostate"));
				g.setOstime(rs.getTimestamp("ostime"));
				return g;
			}
			
		}	
}
