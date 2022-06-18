package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Users_dao extends BaseDao{
	public List<Users> oneUsers(int uid) throws Exception{
		String sql="select * from users where 1=1 and uid=? ";
		return super.selectAll(sql, new UsersMapper(), new Object[] {uid});
	};
	
	public int zhuce(Users u) throws Exception {
		String sql="INSERT users VALUES(null,?,?,?,?,?,?,0,0,1000,?)";
		return super.updateAll(sql, new Object[] {u.getUname(),u.getUsex(),u.getUphone(),u.getUbirth(),u.getUimg(),u.getUregtime(),u.getUpwd()});
	}
	//查询用户
	public List<Users> oneUsers(String uphone,String upwd) throws Exception{
		String sql="select * from users where 1=1 and uphone=? and ustate=0";
		return super.selectAll(sql, new UsersMapper(), new Object[] {uphone});
	};
	
	//查询电话号码是否已注册
	public List<Users> selectphone(String uphone) throws Exception{
		String sql="select * from users where uphone=?";
		return super.selectAll(sql, new UsersMapper(), new Object[]{uphone});
	}
	
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
}
