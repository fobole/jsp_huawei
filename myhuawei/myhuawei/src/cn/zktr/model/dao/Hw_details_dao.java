package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Goods_details;
import cn.zktr.model.entity.Likess;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;


/**
 * @author lkj
 *
 */
public class Hw_details_dao extends BaseDao{
	
	/**
	 * @author 有用户查商品 是否收藏
	 *
	 */
	public Likess like_goods(Integer gid,int uid) throws Exception{
		String sql="SELECT * FROM likess where 1=1 and gid=? and uid=? ";
		List<Likess> list=super.selectAll(sql, new LikeMapper(), new Object[] {gid,uid});
		if(list.size()>0) {
			return list.get(0);
		}
		return null;
	}
	class LikeMapper implements RowMapper<Likess> {

		@Override
		public Likess rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Likess g=new Likess();
			// 收藏表
			g.setLid(rs.getInt("lid"));
			g.setConidl(rs.getInt("conid"));
			g.setUidl(rs.getInt("uid"));
			g.setGidl(rs.getInt("gid"));
			return g;
		}
		
	}
	
	/**
	 * 根据商品编号查询出商品所有信息
	 * @throws Exception 
	 */
	public Goods_details detail_one(int gid) throws Exception {
		String sql="SELECT * FROM goods g  " + 
				"left join smailtype sm on g.smid=sm.smid  " + 
				"left join bigtype bt on sm.btid=bt.btid " + 
				"LEFT JOIN colors c on g.gid=c.gid  " + 
				"left JOIN configuration con on c.cid=con.cid  " + 
				"LEFT JOIN picture p on p.cid=c.cid  " + 
				"WHERE 1=1 and g.gid=? ";
		List<Goods_details> list=super.selectAll(sql, new DetailMapper(), new Object[] {gid});
		if(!list.isEmpty()) {
			return list.get(0);
		}
		return null;
	};
	class DetailMapper implements RowMapper<Goods_details> {

		@Override
		public Goods_details rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods_details g=new Goods_details();
			//商品表映射
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
			//大类别
			g.setBtid(rs.getInt("btid"));
			g.setBtname(rs.getString("btname"));
			g.setBstate(rs.getInt("bstate"));
			//小类别
			g.setSmid(rs.getInt("smid"));
			g.setSmname(rs.getString("smname"));
			g.setSmtu(rs.getString("smtu"));
			g.setSmstate(rs.getInt("smstate"));
			g.setBtidsm(rs.getInt("btid"));
			//颜色映射
			g.setCid(rs.getInt("cid"));
			g.setCname(rs.getString("cname"));
			g.setCimg(rs.getString("cimg"));
			//配置映射
			g.setConid(rs.getInt("conid"));
			g.setConname(rs.getString("conname"));
			g.setConjia(rs.getDouble("conjia"));
			//图片映射
			g.setPid(rs.getInt("pid"));
			g.setPname(rs.getString("pname"));
			return g;
		}
		
	}
	/**
	 * 根据商品 详情图
	 * @throws Exception 
	 */
	public List<Goods_details> xiangtu(int cgoods,int gid) throws Exception{
		String sql="SELECT * FROM picture WHERE 1=1 and pgoods=? and gid=? ";
		return super.selectAll(sql, new ImgxiangMapper(), new Object[] {cgoods,gid});
	}

	
	class ImgxiangMapper implements RowMapper<Goods_details> {

		@Override
		public Goods_details rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods_details g=new Goods_details();
			//图片映射
			g.setPid(rs.getInt("pid"));
			g.setPname(rs.getString("pname"));
			return g;
		}
		
	}
	
	
	
	/**
	 * 根据商品编号查询大图片
	 * @throws Exception 
	 */
	public List<Goods_details> datu(int gid) throws Exception{
		String sql="SELECT * FROM goods g JOIN colors c on g.gid=c.gid  " + 
				"JOIN picture p on p.cid=c.cid " + 
				"WHERE 1=1 and g.gid=? and p.cid=1 and p.pgoods=0 GROUP BY p.pname ";
		return super.selectAll(sql, new ImgMapper(), new Object[] {gid});
	}
	
	class ImgMapper implements RowMapper<Goods_details> {

		@Override
		public Goods_details rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods_details g=new Goods_details();
			//商品表映射
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
			//颜色映射
			g.setCid(rs.getInt("cid"));
			g.setCname(rs.getString("cname"));
			//图片映射
			g.setPid(rs.getInt("pid"));
			g.setPname(rs.getString("pname"));
			return g;
		}
		
	}
	
	
	//	查询所有颜色
	public List<Goods_details> color_name(int gid) throws Exception {
		String sql="SELECT * FROM goods g JOIN colors c on g.gid=c.gid WHERE 1=1 and g.gid=?";
		return super.selectAll(sql, new colorMapper(), new Object[] {gid});
	}
	
	class colorMapper implements RowMapper<Goods_details> {

		@Override
		public Goods_details rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods_details g=new Goods_details();
			//商品表映射
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
			//颜色映射
			g.setCid(rs.getInt("cid"));
			g.setCname(rs.getString("cname"));
			g.setCimg(rs.getString("cimg"));
			return g;
		}
		
	}
	
	
	
}
