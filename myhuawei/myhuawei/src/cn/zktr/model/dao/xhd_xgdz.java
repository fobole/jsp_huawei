package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import cn.zktr.model.entity.xhd_xiugaidizhi;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class xhd_xgdz extends BaseDao{
	
	public int xiugai(xhd_xiugaidizhi xg) throws Exception {
		Date a = new Date();
		SimpleDateFormat b=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");	//获取的时间形式
		Timestamp time=Timestamp.valueOf(b.format(a)) ;
		System.out.println(time);
		String sql = "insert gaidz values(null,?,?,?,?,?,0)";
		return super.updateAll(sql, new Object[] {xg.getOno(),xg.getDname(),xg.getDphone(),xg.getDadd(),time});
	}
	
	public int zhuangtai(int uid,String ono) throws Exception {
		String sql="update orders set did=1 where uid=? and ono=?";
		return super.updateAll(sql, new Object[] {uid,ono});
	}
	
	
	class xgdzhopRowMapper implements RowMapper<xhd_xiugaidizhi>{

		@Override
		public xhd_xiugaidizhi rowMapper(ResultSet rs) throws Exception {
			xhd_xiugaidizhi h = new xhd_xiugaidizhi();
			h.setDid(rs.getInt("did"));
			h.setOno(rs.getString("ono"));
			h.setDname(rs.getString("dname"));
			h.setDphone(rs.getString("dphone"));
			h.setDadd(rs.getString("dadd"));
			h.setDtime(rs.getTimestamp("dtime"));
			h.setDyes(rs.getInt("dyes"));
			return h;
		}
		
	}
}
