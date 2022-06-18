package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;


import cn.zktr.model.entity.HJY_hwdetails_entity;

import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;


public class HJY_hwdetails_dao extends BaseDao{
	
	public List<HJY_hwdetails_entity> Hjy_h(int gid) throws Exception{
		String sql="SELECT * FROM comments cm LEFT JOIN reply r on cm.cmid=r.cmid " + 
				"	join users u on cm.uid=u.uid left join admins a on r.aid=a.aid " + 
				" join configuration con on con.conid=cm.conid  " + 
				"	JOIN colors c on con.cid=c.cid LEFT join goods g on c.gid=g.gid WHERE 1=1 and g.gid=? order by cm.cmid desc";
		return super.selectAll(sql,new pppRawMapper() ,new Object[] {gid});
		
	}
	class pppRawMapper implements RowMapper<HJY_hwdetails_entity> {

		@Override
		public HJY_hwdetails_entity rowMapper(ResultSet rs) throws Exception {
			
			HJY_hwdetails_entity h=new HJY_hwdetails_entity();
			//映射
			h.setCmid(rs.getInt("cmid"));
			h.setCid(rs.getInt("cid"));
			h.setUid(rs.getInt("uid"));
			h.setUname(rs.getString("uname"));
			h.setUimg(rs.getString("uimg"));
			h.setCmstar(rs.getInt("cmstar"));
			h.setCmnr(rs.getString("cmnr")); 
			h.setCmimg(rs.getString("cmimg"));
			h.setCmtime(rs.getTimestamp("cmtime"));
			
			h.setRid(rs.getInt("rid"));
			h.setRnr(rs.getString("rnr"));
			h.setRimg(rs.getString("rimg"));
			h.setRtime(rs.getTimestamp("rtime"));
			h.setAid(rs.getInt("aid"));
			
			h.setCname(rs.getString("cname"));
			h.setCimg(rs.getString("cimg"));
			h.setGid(rs.getInt("gid"));
			h.setGname(rs.getString("gname"));
			h.setConid(rs.getInt("conid"));
			h.setConname(rs.getString("conname"));
			h.setConjia(rs.getDouble("conjia"));
			h.setCshu(rs.getInt("cshu"));
			
			return h;
		}
		
		
	}

	
}
