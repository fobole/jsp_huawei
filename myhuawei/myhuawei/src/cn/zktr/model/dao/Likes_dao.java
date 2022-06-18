package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Bigtype_dao.BigtypeRowMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Lcy_likes;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Likes_dao extends BaseDao{
	public List<Lcy_likes> lcylike(int uid) throws Exception{
		String sql="select * from likess k LEFT JOIN goods g on k.gid=g.gid " + 
				" LEFT JOIN colors c on g.gid=c.gid " + 
				" LEFT JOIN configuration con on c.cid=con.cid WHERE 1=1 and k.uid=? and g.gshangjia=0 " + 
				" GROUP BY  g.gid ORDER BY k.lid desc " ;
		return super.selectAll(sql, new BigtypeRowMapper(), new Object[] {uid});
	
	}
	class BigtypeRowMapper implements RowMapper<Lcy_likes> {

		@Override
		public Lcy_likes rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Lcy_likes g=new Lcy_likes();
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
			g.setUid(rs.getInt("uid"));
			g.setConid(rs.getInt("conid"));
			g.setLid(rs.getInt("Lid"));
			g.setCid(rs.getInt("cid"));
			g.setConname(rs.getString("conname"));
			g.setConjia(rs.getString("conjia"));
			g.setCshu(rs.getInt("cshu"));
			g.setCname(rs.getString("cname"));
			g.setCimg(rs.getString("cimg"));
			
			
			return g;
			
		}
		
	}
	//删除
	public int  ly(int lid) throws Exception{
		String sql="DELETE from likess where lid=?" ;
		return super.updateAll(sql,  new Object[] {lid});
	
	}
	
	
	
}
