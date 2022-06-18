package cn.zktr.model.dao;

import cn.zktr.utilts.BaseDao;

public class Hou_gai_bigtype_dao extends BaseDao{
	// 下架大类别
	public int bt_state(int btid) throws Exception {
		String sql="update bigtype set bstate=1 where btid=? ";
		return super.updateAll(sql, new Object[] {btid});
	}
	
	// 上架大类别
	public int bt_state2(int btid) throws Exception {
		String sql="update bigtype set bstate=0 where btid=? ";
		return super.updateAll(sql, new Object[] {btid});
	}
}
