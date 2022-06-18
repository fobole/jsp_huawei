package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Qian_shopcar_cha_dao.CartVoMapper;
import cn.zktr.model.entity.Li_gou;
import cn.zktr.model.entity.Shopcar;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Set_lijigoumai_dao extends BaseDao{
	public List<Shopcar> ligou(String conid) throws Exception {
		String sql = "SELECT * FROM configuration con LEFT JOIN " + 
				" colors c on con.cid=c.cid LEFT JOIN goods g on c.gid=g.gid " + 
				" WHERE 1=1 and con.conid=? ";
		return this.selectAll(sql, new LigouMapper(), new Object[] {conid});
	}
	
	class LigouMapper implements RowMapper<Shopcar>{

		@Override
		public Shopcar rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Shopcar g=new Shopcar();
			//商品表映射
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
			//颜色映射
			g.setCid(rs.getInt("cid"));
			g.setCname(rs.getString("cname"));
			g.setCimg(rs.getString("cimg"));
			//配置映射
			g.setConid(rs.getInt("conid"));
			g.setConname(rs.getString("conname"));
			g.setConjia(rs.getDouble("conjia"));
			return g;
		}
		
	} 
}
