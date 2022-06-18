package cn.zktr.model.dao;

import java.sql.ResultSet;

import cn.zktr.model.entity.Admins;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Hou_gai_admins_state_dao extends BaseDao{
	
	// 冻结后台账号
	public int admins_state(int aid) throws Exception {
		String sql="update admins set atates=1 where aid=?";
		return super.updateAll(sql, new Object[] {aid});
	}
	
	// 解冻后台账号
	public int admins_state2(int aid) throws Exception {
		String sql="update admins set atates=0 where aid=?";
		return super.updateAll(sql, new Object[] {aid});
	}
}
