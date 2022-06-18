package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Tou_caidan_dao.SmshopRowMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class xhd_grzxDao extends BaseDao{
	
	public String selectfl(int c) throws Exception{
		String sql="SELECT * FROM bigtype b INNER JOIN smailtype s on b.btid=s.btid WHERE s.btid=?";
		List<Goods> list= super.selectAll(sql, new LbRowMapper(), new Object[] {c});
		return list.get(0).getBtname();
	}
	public String selectfl1(int q) throws Exception{
		String sql="SELECT * FROM bigtype b INNER JOIN smailtype s on b.btid=s.btid WHERE s.smid=?";
		List<Goods> list= super.selectAll(sql, new LbRowMapper(), new Object[] {q});
		return list.get(0).getBtname();
	}
	
	class LbRowMapper implements RowMapper<Goods>{

		@Override
		public Goods rowMapper(ResultSet rs) throws Exception {
			Goods g=new Goods();
			g.setBtid(rs.getInt("btid"));
			g.setBtname(rs.getString("btname"));
			g.setBstate(rs.getInt("bstate"));
			g.setSmid(rs.getInt("smid"));
			return g;
		}}
}

