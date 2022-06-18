package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.Date;
import java.util.List;

import cn.zktr.model.entity.plnr;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class plnrDao extends BaseDao{
	public int plnr1(plnr pl) throws Exception {
		String sql="insert comments values(null,?,?,0,?,?,?)";
		return super.updateAll(sql, new Object[] {pl.getConid(),pl.getUid(),pl.getCmnr(),pl.getCmimg(),new Date()});
	}
	
	public int wcpl(int uid,String ono) throws Exception {
		String sql="update orders set ostates=6,owctime=? where uid=? and ono=?";
		return super.updateAll(sql, new Object[] {new Date(),uid,ono});
	}
	public int wcpl1(int doid,String ono) throws Exception {
		String sql="update detailsorder set dstate=1 where doid=? and ono=?";
		return super.updateAll(sql, new Object[] {doid,ono});
	}
	class plnrRowMapper implements RowMapper<plnr>{

		@Override
		public plnr rowMapper(ResultSet rs) throws Exception {
			plnr p = new plnr();
			p.setCmid(rs.getInt("cmid"));
			p.setConid(rs.getInt("conid"));
			p.setUid(rs.getInt("uid"));
			p.setCmstar(rs.getInt("cmstar"));
			p.setCmnr(rs.getString("cmnr"));
			p.setCmimg(rs.getString("cmimg"));
			p.setCmtime(rs.getTimestamp("cmtime"));
			return p;
		}
		
		}
	}
