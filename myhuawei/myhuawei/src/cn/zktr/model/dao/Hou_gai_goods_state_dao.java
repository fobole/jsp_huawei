package cn.zktr.model.dao;

import cn.zktr.utilts.BaseDao;

public class Hou_gai_goods_state_dao extends BaseDao{
	// 下架商品
	public int goods_state(int gid) throws Exception {
		String sql="update goods set gshangjia=1 where gid=? ";
		return super.updateAll(sql, new Object[] {gid});
	}
	
	// 上架商品
	public int goods_state2(int gid) throws Exception {
		String sql="update goods set gshangjia=0 where gid=? ";
		return super.updateAll(sql, new Object[] {gid});
	}	
}
