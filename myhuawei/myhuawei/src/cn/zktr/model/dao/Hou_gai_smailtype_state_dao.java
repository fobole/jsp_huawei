package cn.zktr.model.dao;

import cn.zktr.utilts.BaseDao;

public class Hou_gai_smailtype_state_dao extends BaseDao {
		// 下架大类别
		public int sm_state(int smid) throws Exception {
			String sql="update smailtype set smstate=1 where smid=? ";
			return super.updateAll(sql, new Object[] {smid});
		}
		
		// 上架大类别
		public int sm_state2(int smid) throws Exception {
			String sql="update smailtype set smstate=0 where smid=? ";
			return super.updateAll(sql, new Object[] {smid});
		}
}
