package cn.zktr.model.dao;

import cn.zktr.utilts.BaseDao;

public class Gai_shopcar_dao extends BaseDao{
	/**
	 * 修改选中状态,全选
	 * @throws Exception 
	 */
	public int isChecked(String ischecked,Integer uid) throws Exception {
		String sql = "update shopcar set caris=? where uid=?";
		return this.updateAll(sql,new Object[] {ischecked,uid});
	}
	
	/**
	 * 修改选中状态,单选
	 * @throws Exception 
	 */
	public int isChecked2(String ischecked,String carid) throws Exception {
		String sql = "update shopcar set caris=? where carid=?";
		return this.updateAll(sql,new Object[] {ischecked,carid});
	}
	
	/**
	 * 修改选中状态以及选中商品数量
	 * @author LENOVO
	 */
	public int checkedNum(String carcount,String carid) throws Exception {
		String sql = "update shopcar set carcount=? where carid=?";
		//System.out.println(sql);
		return this.updateAll(sql,new Object[] {carcount,carid});
	}
	
	/**
	 * 直接删除购物车的信息
	 * @param cartId
	 * @return
	 * @throws Exception
	 */
	public int delete(String carid) throws Exception{
		String sql="delete from shopcar where carid=?";
		Object[] obj=new Object[]{carid};
		return this.updateAll(sql, obj);
	}
	
}
