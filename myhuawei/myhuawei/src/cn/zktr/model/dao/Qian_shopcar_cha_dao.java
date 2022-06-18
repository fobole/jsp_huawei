package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Qian_shopcar_dao.CarMapper;
import cn.zktr.model.entity.Address;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Shopcar;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Qian_shopcar_cha_dao extends BaseDao{
		//查询购物车
		public List<Shopcar> car(int uid) throws Exception {
			String sql="SELECT * FROM shopcar s LEFT JOIN configuration con on s.conid=con.conid "
					+ " LEFT JOIN colors c on con.cid=c.cid LEFT JOIN goods g on c.gid=g.gid "
					+ " WHERE 1=1 and s.uid=? ORDER BY s.carid DESC";
			return super.selectAll(sql, new CartVoMapper(), new Object[] {uid});
			
		};
		
		//结算页面
		public List<Shopcar> set_car(int uid) throws Exception {
			String sql="SELECT * FROM shopcar s LEFT JOIN configuration con on s.conid=con.conid "
					+ " LEFT JOIN colors c on con.cid=c.cid LEFT JOIN goods g on c.gid=g.gid "
					+ " WHERE 1=1 and s.caris=0 and s.uid=? ORDER BY s.carid DESC";
			return super.selectAll(sql, new CartVoMapper(), new Object[] {uid});
			
		};
	/**
	 * 获取选中商品的总金额
	 * @return
	 * @throws Exception 
	 */
	public Double getAmount(Integer uid) throws Exception {
		String sql = "SELECT * FROM shopcar s LEFT JOIN configuration con on s.conid=con.conid LEFT JOIN " + 
				" colors c on con.cid=c.cid LEFT JOIN goods g on c.gid=g.gid " + 
				"	WHERE 1=1 and s.caris=0  and s.uid=? ORDER BY s.carid DESC";
		List<Shopcar> list = this.selectAll(sql, new CartVoMapper(), new Object[] {uid});
		double total = 0;
		for (Shopcar c : list) {
			total += (c.getCarcount()*c.getConjia());
		}
		return total;
	}
	
	/**
	 * 获取选中商品 小计
	 */
	public Double xiaoji(String carid) throws Exception {
		String sql = "SELECT * FROM shopcar s LEFT JOIN configuration con on s.conid=con.conid LEFT JOIN " + 
				" colors c on con.cid=c.cid LEFT JOIN goods g on c.gid=g.gid " + 
				" WHERE 1=1 and s.carid=? ";
		List<Shopcar> list = this.selectAll(sql, new CartVoMapper(), new Object[] {carid});
		double xiaoji = 0;
		for (Shopcar c : list) {
			xiaoji += (c.getCarcount()*c.getConjia());
		}
		return xiaoji;
	}
	
	class CartVoMapper implements RowMapper<Shopcar>{

		@Override
		public Shopcar rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Shopcar g=new Shopcar();
			//购物车映射
			g.setCarid(rs.getInt("carid"));
			g.setConidcar(rs.getInt("conid"));
			g.setCarcount(rs.getInt("carcount"));
			g.setCaris(rs.getInt("caris"));
			//商品表映射
			g.setGid(rs.getInt("gid"));
			g.setGname(rs.getString("gname"));
			g.setGshangjia(rs.getInt("gshangjia"));
			g.setGtu(rs.getString("gtu"));
			g.setGjiage(rs.getDouble("gjiage"));
			g.setGkey(rs.getString("gkey"));
			g.setGnew(rs.getInt("gnew"));
			g.setGhot(rs.getInt("ghot"));
			g.setGtime(rs.getTimestamp("gtime"));
			g.setGsdate(rs.getTimestamp("gsdate"));
			g.setGxdate(rs.getTimestamp("gxdate"));
			//颜色映射
			g.setCid(rs.getInt("cid"));
			g.setCname(rs.getString("cname"));
			g.setCimg(rs.getString("cimg"));
			//配置映射
			g.setConid(rs.getInt("conid"));
			g.setConname(rs.getString("conname"));
			g.setConjia(rs.getDouble("conjia"));
			return g;
		}
		
	} 
	
	/**
	 * 获得选中总件数（未删除的）list.isEmpty()?0:list.size()
	 * @return
	 * @throws Exception 
	 */
	public Integer getTotal(Integer uid) throws Exception {
		String sql = "select * from shopcar where 1=1 and caris=0 and uid=? ";
		List<Shopcar> list=super.selectAll(sql, new CartMapper(),new Object[]{uid});
		int total=0;
		for (Shopcar c : list) {
			total += c.getCarcount();
		}
		return total;
	}
	class CartMapper implements RowMapper<Shopcar> {

		@Override
		public Shopcar rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Shopcar g=new Shopcar();
			//购物车映射
			g.setCarid(rs.getInt("carid"));
			g.setConidcar(rs.getInt("conid"));
			g.setUidcar(rs.getInt("uid"));
			g.setCarcount(rs.getInt("carcount"));
			g.setCaris(rs.getInt("caris"));
			return g;
		}
		
	}
	
	
	/**
	 * 查询所有收货地址信息
	 */
	public List<Address> dizhi(int uid)throws Exception{
		String sql="select* from address where 1=1 and adddefault=1 and uid=?";
		return this.selectAll(sql,new ReceiptPlaceMapper(),new Object[]{uid});
	}
	
	/**
	 * 查询默认收货地址信息
	 * List<Address> list=this.selectAll(sql,new ReceiptPlaceMapper(),new Object[]{uid});
		if(list.size()>0) {
			return list;
		}
		return null;
	 */
	public List<Address> selectAll(int uid)throws Exception{
		String sql="select* from address where 1=1 and adddefault=0 and uid=?";
		return this.selectAll(sql,new ReceiptPlaceMapper(),new Object[]{uid});
	}
	class ReceiptPlaceMapper implements RowMapper<Address>{
		@Override
		public Address rowMapper(ResultSet rs) throws Exception {
			Address g=new  Address();
			//地址表
			g.setAddid(rs.getInt("addid"));
			g.setAddname(rs.getString("addname"));
			g.setAddphone(rs.getString("addphone"));
			g.setAddsheng(rs.getString("addsheng"));
			g.setAddshi(rs.getString("addshi"));
			g.setAddqu(rs.getString("addqu"));
			g.setAdds(rs.getString("adds"));
			g.setAdddefault(rs.getInt("adddefault"));
			g.setUidadd(rs.getInt("uid"));
			return g;
		}
		
	}
	
	
	
}
