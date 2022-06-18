package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.Date;
import java.util.List;

import cn.zktr.model.dao.Bigtype_dao.BigtypeRowMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Smshop_dao extends BaseDao{
	//	查询小类中的商品
	public List<Goods> smshopAll(int smid) throws Exception{
		String sql="select * from smailtype sm join goods g on sm.smid=g.smid " + 
				" where 1=1 and sm.smid=? and sm.smstate=0 and g.gshangjia=0  order by g.gid desc limit 8";
		return super.selectAll(sql, new SmshopRowMapper(), new Object[] {smid});
	};
	//	查询小类中的商品
	public List<Goods> smshopAll2(int smid) throws Exception{
		String sql="select * from smailtype sm join goods g on sm.smid=g.smid " + 
				" WHERE 1=1  sm.smid=? and sm.smstate=0 and g.gshangjia=0 order by g.gid desc limit 12";
		return super.selectAll(sql, new SmshopRowMapper(), new Object[] {smid});
	};
	//查询最后5条信息
	public List<Goods> fiveAll() throws Exception{
		String sql="select * from goods g LEFT JOIN smailtype sm on sm.smid=g.smid LEFT JOIN bigtype bt on sm.btid=bt.btid  WHERE 1=1 and bt.bstate=0 and sm.smstate=0 and g.gshangjia=0 order by g.gid desc limit 5 ";
		return super.selectAll(sql, new SmshopRowMapper(), new Object[] {});
	};
	//查询限时购时间
	public Date xianshi(int ge) throws Exception{
		String sql="select * from goods  WHERE 1=1 and gshangjia=0 limit ?,1";
		List<Goods> list=super.selectAll(sql, new SmshopRowMapper(), new Object[] {ge});
		return list.get(0).getGtime();
	};
	
	class SmshopRowMapper implements RowMapper<Goods> {

		@Override
		public Goods rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods g=new Goods();
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
			return g;
		}
		
	}
}
