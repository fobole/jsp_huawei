package cn.zktr.model.dao;

import cn.zktr.utilts.BaseDao;

public class Likess_dao extends BaseDao{

		// 删除喜欢
		public int shan_xihuan(int uid,int lid) throws Exception {
			String sql="delete from likess where 1=1 and uid=? and lid=? ";
			return super.updateAll(sql, new Object[] {uid,lid});
		}
		
		// 添加到收藏
		public int tianjia_xihuan(int uid,int gid) throws Exception {
			String sql="insert into likess value(null,null,?,?)";
			return super.updateAll(sql, new Object[] {uid,gid});
		}
}
