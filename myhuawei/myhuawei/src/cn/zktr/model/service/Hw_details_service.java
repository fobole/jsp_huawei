package cn.zktr.model.service;

import java.util.List;

import cn.zktr.model.dao.Hw_details_dao;
import cn.zktr.model.entity.Goods;
import cn.zktr.model.entity.Goods_details;

/**
 * Servlet 商品详情 
 */

public class Hw_details_service{
	Hw_details_dao hddao=new Hw_details_dao(); //商品详情dao层对象
	//商品图片dao层对象
	//商品dao层对象
	//商品版本dao层对象
	/**
	 * 根据商品编号查询出商品所有信息
	 * @throws Exception 
	 */
	public Goods_details Hw_details_one(int gid) throws Exception{
		Goods_details Goods_details = hddao.detail_one(gid);
		return Goods_details;
	}
	
	/**
	 * 根据商品编号查询参数图片
	 * @throws Exception 
	 */
	public List<Goods_details> datu(int gid) throws Exception{
		return hddao.datu(gid);
	}
	/*public List<Goods_details> xiaotu(int gid) throws Exception{
		return hddao.xiaotu(gid);
	}*/
	
	/**
	 * 根据商品编号查询参数
	 */
//	public GoodCs selectCs(int gd_id) {
//		Good gds = gd.selectByIdGdName(gd_id);
//		GoodCs cs = new GoodCs();
//		if(gds != null) {
//			cs.setCpu(gdxd.selectByIdCpu(gds.getCpu_id()));
//			cs.setPm(gdxd.selectByIdPm(gds.getPm_id()));
//			cs.setSxt(gdxd.selectByIdSxt(gds.getSxt_id()));
//		}
//		return cs;
//	}
	
	/**
	 * 根据商品编号查询出评价
	 */
//	public List<GoodPj> selectByGdIdPj(String gd_id){
//		List<GoodPj> list = gdxd.selectByGdIdPj(gd_id);
//		
//		//将改集合里面的回复集合赋值
//		for (GoodPj p : list) {
//			p.setHflist(gdxd.selectByHfIdSelectHf(p.getPj_id()));
//		}
//		
//		return list;
//	}
	
	/**
	 * 根据评价编号添加回复表值
	 * 						评价编号			用户编号			回复内容
	 */		
//	public boolean addByPjIdAddHf(String pj_id,String u_id,String hf_nr) {
//		int is = gdxd.addByPjIdAddHf(pj_id, u_id, hf_nr);
//		if(is > 0) {
//			return true;
//		}
//		return false;
//	}
	
	/**
	 * 根据商品编号查询出所有此商品的版本
	 */
//	public List<GoodEdition> selectByIdEdition(String gd_id,String color){
//		return gd_etd.selectByIdEdition(gd_id, color);
//	}
}
