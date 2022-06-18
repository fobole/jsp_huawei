package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Smshop_dao.SmshopRowMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Tou_caidan_dao extends BaseDao{
	
	
	//	根据大类查询小类中的商品
	public List<Goods> tousmshop(int btid) throws Exception{
		String sql="select * from bigtype bt join smailtype sm on bt.btid=sm.btid join goods g on sm.smid=g.smid "
				+ " where  1=1  and sm.smstate=0 and g.gshangjia=0 and bt.btid=?  order by g.gid desc  limit 14";
		return super.selectAll(sql, new SmshopRowMapper(), new Object[] {btid});
	};
	//大类别商品分页查询总条数
			public int selectBygoods(int b) throws Exception {
				//System.out.println(b);
				String sql = "SELECT * FROM goods g INNER JOIN smailtype s INNER JOIN bigtype b on g.smid=s.smid and s.btid=b.btid where 1=1 and gshangjia=0 and b.btid=?";
				List<Goods> list=super.selectAll(sql, new SmshopRowMapper(),new Object[] {b});
				return list.size();
			}
			/**
			 * 大类别分页查询
			 * 当前页面 current
			 * 页大小 pageSize
			 * @author ASUS
			 * @throws Exception 
			 *
			 */
			public List<Goods> selectByCurrent(int c,int p,int b) throws Exception{
//				System.out.println(b);
				String sql="SELECT * FROM goods g INNER JOIN smailtype s INNER JOIN bigtype b on g.smid=s.smid and s.btid=b.btid where 1=1 and gshangjia=0 and b.btid=? LIMIT ?,?";
				return super.selectAll(sql, new SmshopRowMapper(), new Object[]{b,(c-1)*p,p});
			}
			
			//小类别商品分页查询总条数
			public int selectxlb(int s) throws Exception {
				String sql="SELECT * FROM goods g INNER JOIN smailtype s  on g.smid=s.smid where 1=1 and gshangjia=0 and s.smid=?";
				List<Goods> list=super.selectAll(sql, new SmshopRowMapper(),new Object[] {s});
				return list.size();
			}
			
			public List<Goods> selectxlbfy(int a,int b,int s) throws Exception{
//				System.out.println(b);
				String sql="SELECT * FROM goods g INNER JOIN smailtype s  on g.smid=s.smid where 1=1 and gshangjia=0 and s.smid=? LIMIT ?,?";
				return super.selectAll(sql, new SmshopRowMapper(), new Object[]{s,(a-1)*b,b});
			}
	
	
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
