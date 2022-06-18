package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Hou_type_dao.typeMapper;
import cn.zktr.model.dao.Users_dao.UsersMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;


/**
 * @author 后台用户_分页查询
 *
 */
public class Hou_users_dao extends BaseDao{
	
	//查询用户总条数
	public int Users_tiao(String parma) throws Exception{
			//字符串拼接
			StringBuffer sql=new StringBuffer("select * from users where 1=1 ");
			if(parma!=null){
				sql.append(" and (uid like '%"+parma+"%' or uname like '%"+parma+"%')");
			}
			sql.append(" order by uid desc");
			List<Users> list=super.selectAll(sql.toString(), new UsersMapper(),  new Object[]{});
			return list.size();
	};
	
	//查询用户_分页查询
	public List<Users> Users_paging(int c,int p,String parma) throws Exception{
			//System.out.println(parma+"********");
			//字符串拼接
			StringBuffer sql=new StringBuffer("select * from users where 1=1 ");
			if(parma!=null){
				sql.append(" and (uid like '%"+parma+"%' or uname like '%"+parma+"%')");
			}
			sql.append(" order by uid desc limit ?,?");
			return super.selectAll(sql.toString(), new UsersMapper(), new Object[]{(c-1)*p,p});
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
			u.setUregtime(rs.getTimestamp("uregtime"));
			u.setUstate(rs.getInt("ustate"));
			u.setUgrade(rs.getInt("ugrade"));
			u.setUjifen(rs.getInt("ujifen"));
			u.setUpwd(rs.getString("upwd"));
			return u;
		}
		
	}
}
