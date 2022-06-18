package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.entity.Guanggao;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Guanggao_dao extends BaseDao{
//	查询所有轮播广告
	public List<Guanggao> lunboguanggao() throws Exception{
		String sql="select * from picture WHERE 1=1 and cgg=1 order by pid desc ";
		return super.selectAll(sql, new GgRowMapper(), new Object[] {});
	};
	
	class GgRowMapper implements RowMapper<Guanggao> {

		@Override
		public Guanggao rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Guanggao gg=new Guanggao();
			gg.setPid(rs.getInt("pid"));
			gg.setPname(rs.getString("pname"));
			gg.setCid(rs.getInt("cid"));
			gg.setCgg(rs.getInt("cgg"));
			gg.setGid(rs.getInt("gid"));
			return gg;
		}
		
	}
}
