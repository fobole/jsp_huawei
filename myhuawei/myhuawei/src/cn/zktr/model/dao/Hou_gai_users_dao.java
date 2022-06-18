package cn.zktr.model.dao;

import cn.zktr.utilts.BaseDao;

public class Hou_gai_users_dao extends BaseDao{
			// 冻结用户
			public int users_state(int uid) throws Exception {
				String sql="update users set ustate=1 where uid=?";
				return super.updateAll(sql, new Object[] {uid});
			}
			
			// 解冻用户
			public int users_state2(int uid) throws Exception {
				String sql="update users set ustate=0 where uid=?";
				return super.updateAll(sql, new Object[] {uid});
			}
}
