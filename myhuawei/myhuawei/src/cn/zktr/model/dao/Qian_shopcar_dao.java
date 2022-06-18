package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Hw_details_dao.DetailMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Qian_shopcar_dao extends BaseDao{
	/*
	 * 根据用户id和商品版本id查询商品是否存在
	 */
	public List<Goods> selectByid(int uid,int conid) throws Exception{
		String sql="SELECT * FROM shopcar WHERE 1=1 and uid=? and conid=? ";
		return super.selectAll(sql, new CartMapper(), new Object[]{uid,conid});
	}
	class CartMapper implements RowMapper<Goods> {

		@Override
		public Goods rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods g=new Goods();
			//购物车映射
			g.setCarid(rs.getInt("carid"));
			g.setConidcar(rs.getInt("conid"));
			g.setUidcar(rs.getInt("uid"));
			g.setCarcount(rs.getInt("carcount"));
			g.setCaris(rs.getInt("caris"));
			return g;
		}
		
	}
	
	//改购物车已有商品的数量
	public int updateNum(int carid,int number) throws Exception{
		String sql="update shopcar set carcount=? where carid=? ";
		return super.updateAll(sql, new Object[]{number,carid});
	}
	
	//在购物车新建一条数据
	public int gwc_insert(Goods g) throws Exception {
		String sql="INSERT shopcar VALUES(null,?,?,?,?)";
		return super.updateAll(sql, new Object[] {g.getConidcar(),g.getUidcar(),g.getCarcount(),g.getCaris()});
	}
	
	
	
	//查询购物车
	public List<Goods> car(int uid) throws Exception {
		String sql="SELECT * FROM shopcar s LEFT JOIN configuration con on s.conid=con.conid "
				+ " LEFT JOIN colors c on con.cid=c.cid LEFT JOIN goods g on c.gid=g.gid "
				+ " WHERE 1=1 and s.uid=? ORDER BY s.carid DESC";
		return super.selectAll(sql, new CarMapper(), new Object[] {uid});
		
	};
	class CarMapper implements RowMapper<Goods> {

		@Override
		public Goods rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods g=new Goods();
			//购物车映射
			g.setCarid(rs.getInt("carid"));
			g.setConidcar(rs.getInt("conid"));
			g.setCarcount(rs.getInt("carcount"));
			g.setCaris(rs.getInt("caris"));
			//商品表映射
			g.setGid(rs.getInt("gid"));
			g.setGname(rs.getString("gname"));
			g.setSmid(rs.getInt("smid"));
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
			//配置映射
			g.setConid(rs.getInt("conid"));
			g.setConname(rs.getString("conname"));
			g.setConjia(rs.getDouble("conjia"));
			return g;
		}
		
	}
}
