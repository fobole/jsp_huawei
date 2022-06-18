package cn.zktr.model.dao;

import cn.zktr.utilts.BaseDao;

public class Hou_gai_ggao_state_dao extends BaseDao{
		
		// 下架广告
		public int ggao_state(int pid) throws Exception {
			String sql="update picture set cgg=2 where pid=?";
			return super.updateAll(sql, new Object[] {pid});
		}
		
		// 上架广告
		public int ggao_state2(int pid) throws Exception {
			String sql="update picture set cgg=1 where pid=?";
			return super.updateAll(sql, new Object[] {pid});
		}
}
