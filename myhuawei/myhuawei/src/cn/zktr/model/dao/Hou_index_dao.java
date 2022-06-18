package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.xhd_ddbdao.SmshopRowMapper1;
import cn.zktr.model.entity.Admins;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Guanggao;
import cn.zktr.model.entity.Hou_order;
import cn.zktr.model.entity.Users;
import cn.zktr.model.entity.xhd_dindan;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Hou_index_dao extends BaseDao{
		// 查商品上架总数
		public List<Goods> shangjiashu() throws Exception{
			String sql="select * from goods where 1=1 and gshangjia=0";
			return super.selectAll(sql, new ShopRowMapper(), new Object[]{});
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
	
		// 查询广告总数 p.cgg=2 or
		public List<Guanggao> ggao_shu() throws Exception{
			String sql="select * from picture p join goods g on p.gid=g.gid WHERE 1=1 and p.cgg=1 ";
			return super.selectAll(sql, new GgRowMapper(), new Object[]{});
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
	
		// 查询会员总数
		public List<Users> users_shu() throws Exception{
				String sql="select * from users where 1=1 and ustate=0";
				return super.selectAll(sql, new UsersMapper(), new Object[]{});
		};
		
		//保密性别
		public int ushu_baomi() throws Exception{
			String sql="select * from users where 1=1 and ustate=0 and usex=0 ";
			List<Users> list=super.selectAll(sql, new UsersMapper(), new Object[]{});
			return list.size();
		};
		//男
		public int ushu_nan() throws Exception{
			String sql="select * from users where 1=1 and ustate=0 and usex=1 ";
			List<Users> list=super.selectAll(sql, new UsersMapper(), new Object[]{});
			return list.size();
		};
		//女
		public int ushu_nv() throws Exception{
			String sql="select * from users where 1=1 and ustate=0 and usex=2 ";
			List<Users> list=super.selectAll(sql, new UsersMapper(), new Object[]{});
			return list.size();
		};
		
		
		
		class UsersMapper implements RowMapper<Users> {

			@Override
			public Users rowMapper(ResultSet rs) throws Exception {
				// TODO Auto-generated method stub
				Users u=new Users();
				u.setUid(rs.getInt("uid"));
				u.setUname(rs.getString("uname"));
				u.setUsex(rs.getInt("usex"));
				u.setUphone(rs.getString("uphone"));
				u.setUbirth(rs.getString("ubirth"));
				u.setUimg(rs.getString("uimg"));
				u.setUstate(rs.getInt("ustate"));
				u.setUgrade(rs.getInt("ugrade"));
				u.setUjifen(rs.getInt("ujifen"));
				u.setUpwd(rs.getString("upwd"));
				return u;
			}
			
		}
	
		// 查询后台员工数量
		public List<Admins> admins_shu() throws Exception{
			String sql="select * from admins where 1=1 and (atates=0 or atates=3) ";
			return super.selectAll(sql, new adminsMapper(), new Object[]{});
		};
		
		
		//男
		public int ashu_nan() throws Exception{
			String sql="select * from admins where 1=1 and (atates=0 or atates=3) and asex=0 ";
			List<Admins> list=super.selectAll(sql,  new adminsMapper(), new Object[]{});
			return list.size();
		};
		//女
		public int ashu_nv() throws Exception{
			String sql="select * from admins where 1=1 and atates=0 and asex=1 ";
			List<Admins> list=super.selectAll(sql,  new adminsMapper(), new Object[]{});
			return list.size();
		};
		
		class adminsMapper implements RowMapper<Admins> {

			@Override
			public Admins rowMapper(ResultSet rs) throws Exception {
				// TODO Auto-generated method stub
				Admins a=new Admins();
				a.setAid(rs.getInt("aid"));
				a.setAname(rs.getString("aname"));
				a.setApwd(rs.getString("apwd"));
				a.setAddtime(rs.getTimestamp("addtime"));
				a.setAlogintime(rs.getTimestamp("alogintime"));
				a.setAtu(rs.getString("atu"));
				a.setAtates(rs.getInt("atates"));
				a.setAgrade(rs.getInt("agrade"));
				a.setAsex(rs.getInt("asex"));
				return a;
			}

			
			
		}
		
		
		// 订单状态查询
		public int ostates(int ostates) throws Exception{
			String sql="SELECT * FROM orders WHERE 1=1 and ostates=?";
			List<Hou_order> list=super.selectAll(sql, new SmshopRowMapper1(),new Object[] {ostates} );
			return list.size();
		}
		
		// 收入情况and (ostates=1 or ostates=4 )
		public List<Hou_order> shou() throws Exception{
			String sql="SELECT * FROM orders WHERE 1=1  order by oid desc limit 5 ";
			return super.selectAll(sql, new SmshopRowMapper1(),new Object[] {} );
			
		}
		
		
		class SmshopRowMapper1 implements RowMapper<Hou_order> {

			@Override
			public Hou_order rowMapper(ResultSet rs) throws Exception {
				Hou_order x = new Hou_order();
				x.setOid(rs.getInt("oid"));
				x.setOno(rs.getString("ono"));
				x.setOzongjia(rs.getDouble("ozongjia"));
				x.setOpay(rs.getDouble("opay"));
				x.setOfreight(rs.getDouble("ofreight"));
				x.setOstates(rs.getInt("ostates"));
				x.setOcreatetime(rs.getTimestamp("ocreatetime"));
				x.setOpays(rs.getString("opays"));
				x.setOjifen(rs.getInt("ojifen"));
				x.setUido(rs.getInt("uid"));
				x.setOname(rs.getString("oname"));
				x.setOphone(rs.getString("ophone"));
				x.setOaddress(rs.getString("oaddress"));
				return x;
			}

			
			
		}
		
		
		
		
		
}
