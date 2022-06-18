package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.Date;
import java.util.List;

import cn.zktr.model.entity.xhd_ddxq;

import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class xhd_ddxqdao extends BaseDao{
	public List<xhd_ddxq> selectdz(int uid ,String ono) throws Exception{
		String sql = "SELECT * FROM orders WHERE uid=? and ono=?";
		return super.selectAll(sql, new DdxqRowMapper(), new Object[] {uid,ono});
	}
	
	public List<xhd_ddxq> selectddxq(int uid, String ono) throws Exception{
		String sql = "SELECT * FROM orders o INNER JOIN detailsorder d INNER JOIN configuration n INNER JOIN colors c INNER JOIN goods g on o.ono=d.ono and d.conid=n.conid and n.cid=c.cid and c.gid=g.gid WHERE o.uid=? and o.ono=?";
		return super.selectAll(sql, new SmshopRowMapper(), new Object[] {uid,ono});
	}
	
	public int quxiao(int uid,String ono) throws Exception {
		String sql="update orders set ostates=2,ofktime=? where uid=? and ono=?";
		return super.updateAll(sql, new Object[] {new Date(),uid,ono});
	}
	public int tuihuo(int uid,String ono) throws Exception {
		String sql="update orders set ostates=9,oshtime=? where uid=? and ono=?";
		return super.updateAll(sql, new Object[] {new Date(),uid,ono});
	}
	public int tuikuan(int uid,String ono) throws Exception {
		String sql="update orders set ostates=7,ofhtime=? where uid=? and ono=?";
		return super.updateAll(sql, new Object[] {new Date(),uid,ono});
	}
	public int shouhuo(int uid,String ono) throws Exception {
		String sql="update orders set ostates=5,oshtime=?,owctime=? where uid=? and ono=?";
		return super.updateAll(sql, new Object[] {new Date(),new Date(),uid,ono});
	}
	public int qxth(int uid,String ono) throws Exception {
		String sql="update orders set ostates=5 where uid=? and ono=?";
		return super.updateAll(sql, new Object[] {uid,ono});
	}
	public int qxtk(int uid,String ono) throws Exception {
		String sql="update orders set ostates=1 where uid=? and ono=?";
		return super.updateAll(sql, new Object[] {uid,ono});
	}
	public int shanchu(String ono) throws Exception {
		String sql="delete from orders where ono=?";
		return super.updateAll(sql, new Object[] {ono});
	}
	class SmshopRowMapper implements RowMapper<xhd_ddxq> {

		@Override
		public xhd_ddxq rowMapper(ResultSet rs) throws Exception {
			xhd_ddxq x = new xhd_ddxq();
			x.setOid(rs.getInt("oid"));
			x.setOno(rs.getString("ono"));
			x.setOzongjia(rs.getDouble("ozongjia"));
			x.setOpay(rs.getDouble("opay"));
			x.setOfreight(rs.getDouble("ofreight"));
			x.setOstates(rs.getInt("ostates"));
			x.setOcreatetime(rs.getTimestamp("ocreatetime"));
			x.setDid(rs.getInt("did"));
			x.setOfktime(rs.getTimestamp("ofktime"));
			x.setOfhtime(rs.getTimestamp("ofhtime"));
			x.setOshtime(rs.getTimestamp("oshtime"));
			x.setOwctime(rs.getTimestamp("owctime"));
			x.setOpays(rs.getString("opays"));
			x.setOjifen(rs.getInt("ojifen"));
			x.setUid(rs.getInt("uid"));
			x.setOname(rs.getString("oname"));
			x.setOphone(rs.getString("ophone"));
			x.setOaddress(rs.getString("oaddress"));
			x.setCid(rs.getInt("cid"));
			x.setCname(rs.getString("cname"));
			x.setCimg(rs.getString("cimg"));
			x.setDoid(rs.getInt("doid"));
			x.setDoshu(rs.getInt("doshu"));
			x.setGid(rs.getInt("gid"));
			x.setGname(rs.getString("gname"));
			x.setGjiage(rs.getDouble("gjiage"));
			x.setConid(rs.getInt("conid"));
			x.setConname(rs.getString("conname"));
			x.setDstate(rs.getInt("dstate"));
			return x;
		}

		
		
	}
	
	class DdxqRowMapper implements RowMapper<xhd_ddxq> {

		@Override
		public xhd_ddxq rowMapper(ResultSet rs) throws Exception {
			xhd_ddxq x = new xhd_ddxq();
			x.setOid(rs.getInt("oid"));
			x.setOno(rs.getString("ono"));
			x.setOzongjia(rs.getDouble("ozongjia"));
			x.setOpay(rs.getDouble("opay"));
			x.setOfreight(rs.getDouble("ofreight"));
			x.setOstates(rs.getInt("ostates"));
			x.setOcreatetime(rs.getTimestamp("ocreatetime"));
			x.setDid(rs.getInt("did"));
			x.setOfktime(rs.getTimestamp("ofktime"));
			x.setOfhtime(rs.getTimestamp("ofhtime"));
			x.setOshtime(rs.getTimestamp("oshtime"));
			x.setOwctime(rs.getTimestamp("owctime"));
			x.setOpays(rs.getString("opays"));
			x.setOjifen(rs.getInt("ojifen"));
			x.setUid(rs.getInt("uid"));
			x.setOname(rs.getString("oname"));
			x.setOphone(rs.getString("ophone"));
			x.setOaddress(rs.getString("oaddress"));
			return x;
		}

		
		
	}
}
