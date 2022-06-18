package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.Date;
import java.util.List;

import cn.zktr.model.dao.Hou_shop_dao.ShopRowMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Pinglun;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Hou_pinglun_dao extends BaseDao{
		// 回复评论
		public int huifu(int cmid,String rnr,String rimg,int aid) throws Exception {
			String sql="insert into reply value(null,?,?,?,?,?)";
			return super.updateAll(sql, new Object[] {cmid,rnr,rimg,new Date(),aid});
		}
		
	
		//评论总条数
		public int pinglun_tiao(String parma) throws Exception{
				StringBuffer sql=new StringBuffer("SELECT * FROM comments cm LEFT JOIN reply r on cm.cmid=r.cmid " + 
						" join users u on cm.uid=u.uid left join admins a on r.aid=a.aid " + 
						" join configuration con on con.conid=cm.conid  " + 
						" JOIN colors c on con.cid=c.cid LEFT join goods g on c.gid=g.gid WHERE 1=1 ");
				if(parma!=null){
					sql.append(" and (cm.cmid like '%"+parma+"%' or g.gname like '%"+parma+"%')");
				}
				//sql.append(" order by uid desc");
				List<Pinglun> list=super.selectAll(sql.toString(), new PlRowMapper(), new Object[]{});
				return list.size();
		};
		
		//评论_分页查询
		public List<Pinglun> pinglun_paging(int c,int p,String parma) throws Exception{
				StringBuffer sql=new StringBuffer("SELECT * FROM comments cm LEFT JOIN reply r on cm.cmid=r.cmid " + 
						" join users u on cm.uid=u.uid left join admins a on r.aid=a.aid " + 
						" join configuration con on con.conid=cm.conid " + 
						" JOIN colors c on con.cid=c.cid LEFT join goods g on c.gid=g.gid WHERE 1=1 ");
				if(parma!=null){
					sql.append(" and (cm.cmid like '%"+parma+"%' or g.gname like '%"+parma+"%')");
				}
				sql.append(" order by cm.cmid desc limit ?,?");
				return super.selectAll(sql.toString(), new PlRowMapper(), new Object[]{(c-1)*p,p});
		};
		
		class PlRowMapper implements RowMapper<Pinglun> {

			@Override
			public Pinglun rowMapper(ResultSet rs) throws Exception {
				// TODO Auto-generated method stub
				Pinglun g=new Pinglun();
				// 评论映射
				g.setCmid(rs.getInt("cmid"));
				//g.setCidcm(rs.getInt("cid"));
				g.setCmstar(rs.getInt("cmstar"));//几星好评
				g.setCmnr(rs.getString("cmnr"));
				g.setCmimg(rs.getString("cmimg"));
				g.setCmtime(rs.getTimestamp("cmtime"));
				// 评论人
				g.setUname(rs.getString("uname"));
				// 回复映射
				g.setRid(rs.getInt("rid"));
				g.setRnr(rs.getString("rnr"));
				g.setRimg(rs.getString("rimg"));
				g.setRtime(rs.getTimestamp("rtime"));
				//回复人
				g.setAname(rs.getString("aname"));
				//颜色映射
				g.setCid(rs.getInt("cid"));
				g.setCname(rs.getString("cname"));
				// 商品表
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
				return g;
			}
			
		}
}
