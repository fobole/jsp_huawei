package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.entity.Hjy_pinglun_emtity;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Hjy_pinglun extends BaseDao{

	public List<Hjy_pinglun_emtity> Hjy_h(int uid) throws Exception{
		String sql="SELECT * from comments c INNER JOIN configuration o on c.conid=o.conid INNER JOIN colors l on o.cid=l.cid INNER JOIN goods g on l.gid=g.gid LEFT JOIN reply r ON c.cmid=r.cmid WHERE c.uid=? and cmstar=0";
		return super.selectAll(sql, new QRowMapper(),new Object[] {uid});
		
	}
	public List<Hjy_pinglun_emtity> Hjy_h1(int a) throws Exception{
		String sql="SELECT *from comments c INNER JOIN colors o INNER JOIN configuration f INNER JOIN reply r INNER JOIN goods g on c.conid=f.conid and o.cid=f.cid and c.cmid=r.cmid and g.gid=o.gid WHERE c.uid=?";
		return super.selectAll(sql, new QRowMapper(),new Object[] {a});
		
	}
	public int Hjy_j(int cmid) throws Exception{
		String sql="DELETE FROM comments WHERE cmid=?";
		return super.updateAll(sql,new Object[] {cmid});
		
	 }
	
	
   class QRowMapper implements RowMapper<Hjy_pinglun_emtity> {
         
	@Override 
	public Hjy_pinglun_emtity rowMapper(ResultSet rs) throws Exception {
	
		Hjy_pinglun_emtity p=new Hjy_pinglun_emtity();
		//评论映射
		p.setCmid(rs.getInt("cmid"));
		p.setCid(rs.getInt("cid"));
		p.setUid(rs.getInt("uid"));
		p.setCmstar(rs.getInt("cmstar"));
		p.setCmnr(rs.getString("cmnr"));
		p.setCmimg(rs.getString("cmimg"));
		p.setCmtime(rs.getTimestamp("cmtime"));
		p.setCimg(rs.getString("cimg"));
		p.setCname(rs.getString("cname"));
		p.setGid(rs.getInt("gid"));
		p.setGname(rs.getString("gname"));
		p.setConid(rs.getInt("conid"));
		p.setComname(rs.getString("conname"));
		return p;
	}
   }
   class QRowMapper1 implements RowMapper<Hjy_pinglun_emtity> {

	@Override
	public Hjy_pinglun_emtity rowMapper(ResultSet rs) throws Exception {
		Hjy_pinglun_emtity p=new Hjy_pinglun_emtity();
		//评论映射
		p.setCmid(rs.getInt("cmid"));
		p.setCid(rs.getInt("cid"));
		p.setUid(rs.getInt("uid"));
		p.setCmstar(rs.getInt("cmstar"));
		p.setCmnr(rs.getString("cmnr"));
		p.setCmimg(rs.getString("cmimg"));
		p.setCmtime(rs.getTimestamp("cmtime"));
		
		return p;
	}
	   
   }
   
}
