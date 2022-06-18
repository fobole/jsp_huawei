package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Qian_shopcar_cha_dao.ReceiptPlaceMapper;
import cn.zktr.model.entity.Address;
import cn.zktr.model.entity.Set_address;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Set_dizhi_dao extends BaseDao{
	// 删除地址 delete from shopcar where carid=?
	public int shan_dizhi(int addid) throws Exception {
		String sql="delete from address where addid=?";
		return super.updateAll(sql, new Object[] {addid});
	}
	
	// 改所有地址的状态
	public int gai_adddefault(int uid) throws Exception {
		String sql="update address set adddefault=1 where uid=?";
		return super.updateAll(sql, new Object[] {uid});
	}
	
	// 改为默认地址
	public int mr_adddefault(int addid) throws Exception {
		String sql="update address set adddefault=0 where addid=?";
		return super.updateAll(sql, new Object[] {addid});
	}
	
	// 新增地址
	public int zeng_dizhi(Set_address sa) throws Exception {
		String sql="insert address values(null,?,?,?,?,?,?,0,?)";
		return super.updateAll(sql, new Object[] {sa.getAddname(),sa.getAddphone(),sa.getAddsheng(),sa.getAddshi(),sa.getAddqu(),sa.getAdds(),sa.getUidadd()});
	}
	
	//修改地址
	public int gai_dizhi(Set_address sa) throws Exception {
		String sql="update address set addname=?,addphone=?,addsheng=?,addshi=?,addqu=?,adds=?  where addid=?";
		return super.updateAll(sql, new Object[] {sa.getAddname(),sa.getAddphone(),sa.getAddsheng(),sa.getAddshi(),sa.getAddqu(),sa.getAdds(),sa.getAddid()});
	}
	
	// 修改地址查询
	public Set_address gaiadd_cha(int uid,Integer addid)throws Exception{
		String sql="select* from address where 1=1 and uid=? and addid=? ";
		List<Set_address> list=this.selectAll(sql,new ReceiptPlaceMapper(),new Object[]{uid,addid});
		return list.get(0);
	}
	class ReceiptPlaceMapper implements RowMapper<Set_address>{
		@Override
		public Set_address rowMapper(ResultSet rs) throws Exception {
			Set_address g=new  Set_address();
			//地址表
			g.setAddid(rs.getInt("addid"));
			g.setAddname(rs.getString("addname"));
			g.setAddphone(rs.getString("addphone"));
			g.setAddsheng(rs.getString("addsheng"));
			g.setAddshi(rs.getString("addshi"));
			g.setAddqu(rs.getString("addqu"));
			g.setAdds(rs.getString("adds"));
			g.setAdddefault(rs.getInt("adddefault"));
			g.setUidadd(rs.getInt("uid"));
			return g;
		}
		
	}
}
