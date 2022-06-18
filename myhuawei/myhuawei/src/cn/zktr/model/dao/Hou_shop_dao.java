package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Hou_shop_dao extends BaseDao{
	
	//查询商品总条数
	public int goods_tiao(String parma) throws Exception{
			StringBuffer sql=new StringBuffer("select * from goods where 1=1 ");
			if(parma!=null){
				sql.append(" and (gid like '%"+parma+"%' or gname like '%"+parma+"%')");
			}
			//sql.append(" order by uid desc");
			List<Goods> list=super.selectAll(sql.toString(), new ShopRowMapper(), new Object[]{});
			return list.size();
	};
	
	//查询商品_分页查询
	public List<Goods> goods_paging(int c,int p,String parma) throws Exception{
			StringBuffer sql=new StringBuffer("select * from goods where 1=1 ");
			if(parma!=null){
				sql.append(" and (gid like '%"+parma+"%' or gname like '%"+parma+"%')");
			}
			sql.append(" order by gid desc limit ?,? ");
			return super.selectAll(sql.toString(), new ShopRowMapper(), new Object[]{(c-1)*p,p});
	};
	
	class ShopRowMapper implements RowMapper<Goods> {

		@Override
		public Goods rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods g=new Goods();
			g.setGid(rs.getInt("gid"));
			g.setGname(rs.getString("gname"));
			g.setSmid(rs.getInt("smid"));
			g.setGshangjia(rs.getInt("gshangjia"));
			g.setGtu(rs.getString("gtu"));
			g.setGjiage(rs.getDouble("gjiage"));
			g.setGkey(rs.getString("gkey"));
			g.setGnew(rs.getInt("gnew"));
			g.setGhot(rs.getInt("ghot"));
			g.setGtime(rs.getTimestamp("gtime"));
			g.setGsdate(rs.getTimestamp("gsdate"));
			g.setGxdate(rs.getTimestamp("gxdate"));
			return g;
		}
		
	}
}
