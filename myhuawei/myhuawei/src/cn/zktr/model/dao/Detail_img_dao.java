package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Hw_details_dao.ImgMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Detail_img_dao extends BaseDao{
	
	
	//查大图
	public List<Goods> datu(int cid) throws Exception{
		String sql="SELECT * FROM colors c join picture p on c.cid=p.cid where 1=1 and c.cid=? and p.pgoods=0";
		return super.selectAll(sql, new ImgMapper(), new Object[] {cid});
	}
	
	class ImgMapper implements RowMapper<Goods> {

		@Override
		public Goods rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods g=new Goods();
			//颜色映射
			g.setCid(rs.getInt("cid"));
			g.setCname(rs.getString("cname"));
			//图片映射
			g.setPid(rs.getInt("pid"));
			g.setPname(rs.getString("pname"));
			return g;
		}
		
	}
}
