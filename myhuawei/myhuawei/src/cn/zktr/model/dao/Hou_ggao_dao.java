package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Bigtype_dao.smailtypeRowMapper;
import cn.zktr.model.dao.Hou_shop_dao.ShopRowMapper;
import cn.zktr.model.dao.Hou_users_dao.UsersMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Guanggao;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Hou_ggao_dao extends BaseDao{
		// 添加广告
		public int jiaggao(String pname,int gid) throws Exception {
			String sql="insert into picture value(null,?,null,1,?,null)";
			return super.updateAll(sql, new Object[] {pname,gid});
		}
	
		// 查询所有大类 order by btid desc
		public List<Guanggao> btname() throws Exception{
			String sql="select * from bigtype where 1=1 and bstate=0 ";
			return super.selectAll(sql, new BigtypeRowMapper(), new Object[]{});
		};
		
		class BigtypeRowMapper implements RowMapper<Guanggao> {

			@Override
			public Guanggao rowMapper(ResultSet rs) throws Exception {
				// TODO Auto-generated method stub
				Guanggao g=new Guanggao();
				g.setBtid(rs.getInt("btid"));
				g.setBtname(rs.getString("btname"));
				g.setBstate(rs.getInt("bstate"));
				return g;
			}
			
		}
		//查小类
		public List<Guanggao> smname(String btid) throws Exception{
			String sql="select * from smailtype sm WHERE sm.btid=?";
			return super.selectAll(sql, new smailtypeRowMapper(), new Object[] {btid});
		};
		
		class smailtypeRowMapper implements RowMapper<Guanggao> {

			@Override
			public Guanggao rowMapper(ResultSet rs) throws Exception {
				// TODO Auto-generated method stub
				Guanggao g=new Guanggao();
				g.setSmid(rs.getInt("smid"));
				g.setSmname(rs.getString("smname"));
				g.setSmtu(rs.getString("smtu"));
				g.setSmstate(rs.getInt("smstate"));
				g.setBtidsm(rs.getInt("btid"));
				return g;
			}
			
		}
		
	// 查商品
	public List<Guanggao> gname(String smid) throws Exception{
			String sql="select * from goods where 1=1 and smid=? order by gid desc";
			return super.selectAll(sql, new ShopRowMapper(), new Object[]{smid});
	};
	
	class ShopRowMapper implements RowMapper<Guanggao> {

		@Override
		public Guanggao rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Guanggao g=new Guanggao();
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
	
		//查询广告总条数
		public int ggao_tiao(String parma) throws Exception{
				//字符串拼接
				StringBuffer sql=new StringBuffer("select * from picture p join goods g on p.gid=g.gid WHERE 1=1  ");
				if(parma!=null){
					sql.append(" and ( p.pid like '%"+parma+"%' or g.gid like '%"+parma+"%')");
				}
				sql.append(" and ( p.cgg=2 or p.cgg=1 )");
				List<Guanggao> list=super.selectAll(sql.toString(), new GgRowMapper(), null);
				return list.size();
		};
		
		//查询广告_分页查询
		public List<Guanggao> ggao_paging(int c,int p,String parma) throws Exception{
				//字符串拼接
				StringBuffer sql=new StringBuffer("select * from picture p join goods g on p.gid=g.gid WHERE 1=1 and p.cgg=2 or p.cgg=1 ");
				if(parma!=null){
					sql.append(" and ( p.pid like '%"+parma+"%' or g.gid like '%"+parma+"%')");
				}
				sql.append(" order by p.pid desc limit ?,?");
				return super.selectAll(sql.toString(), new GgRowMapper(), new Object[]{(c-1)*p,p});
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
				gg.setGname(rs.getString("gname"));
				return gg;
			}
			
		}
}
