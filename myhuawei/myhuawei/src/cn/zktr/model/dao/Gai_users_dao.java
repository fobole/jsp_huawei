package cn.zktr.model.dao;

import cn.zktr.utilts.BaseDao;

public class Gai_users_dao extends BaseDao{
		// 改头像 update users set uimg='/image/1645929436709.png' where uid=1
		public int gaitouxiang(String uimg,int uid) throws Exception {
			String sql="update users set uimg=? where uid=? ";
			return super.updateAll(sql, new Object[] {uimg,uid});
		}
		// 改昵称 
		public int gaiusers(String uname,int usex,int uid) throws Exception {
			String sql="update users set uname=?,usex=? where uid=? ";
			return super.updateAll(sql, new Object[] {uname,usex,uid});
		}
		// 改密码
		public int gaimima(String upwds,String upwd,int uid) throws Exception {
			String sql="update users set upwd=? where upwd=? and uid=? ";
			return super.updateAll(sql, new Object[] {upwds,upwd,uid});
		}
}
