package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Hw_details_dao.ImgMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Configuration_dao extends BaseDao{
	
	//颜色下面的版本配置
	public List<Goods> con_all(int cid) throws Exception{
		String sql="SELECT * FROM colors c left join configuration con on c.cid=con.cid WHERE 1=1 and c.cid=? ";
		return super.selectAll(sql, new ConMapper(), new Object[] {cid});
	}
	
	class ConMapper implements RowMapper<Goods> {

		@Override
		public Goods rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods g=new Goods();
			//颜色映射
			g.setCid(rs.getInt("cid"));
			g.setCname(rs.getString("cname"));
			//配置映射
			g.setConid(rs.getInt("conid"));
			g.setConname(rs.getString("conname"));
			g.setConjia(rs.getDouble("conjia"));
			g.setCshu(rs.getInt("cshu"));
			return g;
		}
		
	}
}
