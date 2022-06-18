package cn.zktr.model.dao;

import cn.zktr.utilts.BaseDao;

public class Sms_gai_mima_dao extends BaseDao{
	//忘记密码 ——改密码
	public int gaimm(String upwd,String uphone) throws Exception {
		String sql="update users set upwd=? where uphone=?";
		return super.updateAll(sql, new Object[] {upwd,uphone});
	}
}
