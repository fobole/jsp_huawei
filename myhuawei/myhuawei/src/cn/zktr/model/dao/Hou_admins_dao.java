package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Hou_users_dao.UsersMapper;
import cn.zktr.model.entity.Admins;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

/**
 * @author lkj
 *
 */
public class Hou_admins_dao extends BaseDao{
		//修改员工信息
		public int gai_admins(String atu,String aname,int asex,int agrade,String apwd,int aid) throws Exception{
			String sql="UPDATE admins SET atu=?,aname=?,asex=?,agrade=?,apwd=? WHERE aid=? ";
			return super.updateAll(sql, new Object[] {atu,aname,asex,agrade,apwd,aid});
		}
	
	
	
		//修改密码
		public int gaimima(String gaiapwd,int aid,String apwd) throws Exception{
			String sql="update admins set apwd=? where 1=1 and aid=? and apwd=? ";
			return super.updateAll(sql, new Object[] {gaiapwd,aid,apwd});
		}
		//添加员工
		public int tian_admins(Admins a) throws Exception{
			String sql="insert into admins value(null,?,?,?,null,?,?,?,?)";
			return super.updateAll(sql, new Object[] {
					a.getAname(),a.getApwd(),a.getAddtime(),a.getAtu(),a.getAtates(),a.getAgrade(),a.getAsex()
			});
		}
		
		// 修改查询单个
		public Admins oneadmins(String aid) throws Exception{
			String sql="select * from admins where 1=1 and aid=? ";
			List<Admins> list=super.selectAll(sql, new adminsMapper(), new Object[] {aid});
			if(list.size()>0) {
				return list.get(0);
			}
			return null;
		};
		
		// 登录查询单个后台用户
		public List<Admins> one_admins(String aname,String apwd) throws Exception{
			String sql="select * from admins where 1=1  and aname=? and (atates=0 or atates=3) ";
			return super.selectAll(sql, new adminsMapper(), new Object[] {aname});
		};
	
		//查询管理员总条数
		public int admins_tiao(String parma) throws Exception{
			//System.out.println(parma+"********");
			//字符串拼接
			StringBuffer sql=new StringBuffer("select * from admins where 1=1 ");
			if(parma!=null){
				sql.append(" and (aid like '%"+parma+"%' or aname like '%"+parma+"%')");
			}
			sql.append(" order by aid desc");
			List<Admins> list=super.selectAll(sql.toString(), new adminsMapper(), new Object[] {});
			return list.size();
		};
		// 分页查询管理员、
		public List<Admins> admins_paging(int c,int p,String parma) throws Exception{
			//字符串拼接
			StringBuffer sql=new StringBuffer("select * from admins where 1=1  ");
			if(parma!=null){
				sql.append(" and (aid like '%"+parma+"%' or aname like '%"+parma+"%')");
			}
			sql.append(" order by aid desc limit ?,?");
			return super.selectAll(sql.toString(), new adminsMapper(), new Object[]{(c-1)*p,p});
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
}
