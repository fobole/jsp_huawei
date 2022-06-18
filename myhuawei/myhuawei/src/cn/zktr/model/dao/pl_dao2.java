package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.Date;

import cn.zktr.model.entity.pl_entity2;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class pl_dao2 extends BaseDao{
     public int pp(pl_entity2 e) throws Exception {
    	 String sql="insert comments values(null,?,?,1,?,?,?)";
    	 return super.updateAll(sql, new Object[] {e.getConid(),e.getUid(),e.getCmnr(),e.getCmimg(),new Date() });
     }
     
     public int dd(int uid) throws Exception {
    	 String sql="update comments set cmstar=1 where cmid=?";
    	 return super.updateAll(sql, new Object[] {uid});
     }
     
	 class pl implements RowMapper<pl_entity2>{

		@Override
		public pl_entity2 rowMapper(ResultSet rs) throws Exception {
			pl_entity2 p=new pl_entity2();
			
			p.setCmid(rs.getInt("cmid"));
			p.setConid(rs.getInt("conid"));
			p.setUid(rs.getInt("uid"));
			p.setCmstar(rs.getInt("cmstar"));
			p.setCmnr(rs.getString("cmnr"));
			p.setCmimg(rs.getString("cmimg"));
			p.setCmtime(rs.getDate("cmtime"));
			return p;
		}
		 
	 }
}
