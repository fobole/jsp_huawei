package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.entity.xhd_dindan;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class xhd_ddbdao extends BaseDao{
	
	
	public List<xhd_dindan> seletono(int uid) throws Exception{
		String sql="SELECT * FROM orders WHERE uid=? ORDER BY ocreatetime DESC";
		return super.selectAll(sql, new SmshopRowMapper1(),new Object[] {uid} );
	}
	
	public List<xhd_dindan> seletono1(int uid,int ostates) throws Exception{
		String sql="SELECT * FROM orders WHERE uid=? and ostates=? ORDER BY ocreatetime DESC";
		return super.selectAll(sql, new SmshopRowMapper1(),new Object[] {uid,ostates} );
	}
	//查询登录用户的所有id
	public List<xhd_dindan> selertdindan(int o) throws Exception{
		String sql="SELECT *FROM orders o INNER JOIN detailsorder d INNER JOIN configuration n INNER JOIN colors c INNER JOIN goods g on o.ono=d.ono and d.conid=n.conid and n.cid=c.cid and c.gid=g.gid WHERE 1=1 and o.uid=? ORDER BY o.ocreatetime DESC";
		return super.selectAll(sql, new SmshopRowMapper(),new Object[] {o} );
	}
	/**
	 * 根据订单编号查询订单详情
	 * @param orderid
	 * @return
	 * @throws Exception 
	 */
	public List<xhd_dindan> findDetail(int uid,String ono) throws Exception{
		String sql="SELECT *FROM orders o INNER JOIN detailsorder d INNER JOIN configuration n INNER JOIN colors c INNER JOIN goods g on o.ono=d.ono and d.conid=n.conid and n.cid=c.cid and c.gid=g.gid WHERE 1=1 and o.uid=? and o.ono=? ORDER BY o.ocreatetime DESC";
		return super.selectAll(sql, new SmshopRowMapper(), new Object[]{uid,ono});
	}
		
	public List<xhd_dindan> findDetai(int uid,String ono) throws Exception{
		String sql="SELECT *FROM orders o INNER JOIN detailsorder d INNER JOIN configuration n INNER JOIN colors c INNER JOIN goods g on o.ono=d.ono and d.conid=n.conid and n.cid=c.cid and c.gid=g.gid WHERE 1=1 and o.uid=? and o.ono=? and d.dstate=0 ORDER BY o.ocreatetime DESC";
		return super.selectAll(sql, new SmshopRowMapper(), new Object[]{uid,ono});
	}
	public List<xhd_dindan> findDetai2(int uid,String ono) throws Exception{
		String sql="SELECT *FROM orders o INNER JOIN detailsorder d INNER JOIN configuration n INNER JOIN colors c INNER JOIN goods g on o.ono=d.ono and d.conid=n.conid and n.cid=c.cid and c.gid=g.gid WHERE 1=1 and o.uid=? and o.ono=? and d.dstate=0 ORDER BY o.ocreatetime DESC";
		return super.selectAll(sql, new SmshopRowMapper(), new Object[]{uid,ono});
	}
	class SmshopRowMapper implements RowMapper<xhd_dindan> {

		@Override
		public xhd_dindan rowMapper(ResultSet rs) throws Exception {
			xhd_dindan x = new xhd_dindan();
			x.setOid(rs.getInt("oid"));
			x.setOno(rs.getString("ono"));
			x.setOzongjia(rs.getDouble("ozongjia"));
			x.setOpay(rs.getDouble("opay"));
			x.setOfreight(rs.getDouble("ofreight"));
			x.setOstates(rs.getInt("ostates"));
			x.setOcreatetime(rs.getTimestamp("ocreatetime"));
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
	
	class SmshopRowMapper1 implements RowMapper<xhd_dindan> {

		@Override
		public xhd_dindan rowMapper(ResultSet rs) throws Exception {
			xhd_dindan x = new xhd_dindan();
			x.setOid(rs.getInt("oid"));
			x.setOno(rs.getString("ono"));
			x.setOzongjia(rs.getDouble("ozongjia"));
			x.setOpay(rs.getDouble("opay"));
			x.setOfreight(rs.getDouble("ofreight"));
			x.setOstates(rs.getInt("ostates"));
			x.setOcreatetime(rs.getTimestamp("ocreatetime"));
			x.setOpays(rs.getString("opays"));
			x.setOjifen(rs.getInt("ojifen"));
			x.setUid(rs.getInt("uid"));
			x.setOname(rs.getString("oname"));
			x.setOphone(rs.getString("ophone"));
			x.setOaddress(rs.getString("oaddress"));
			return x;
		}

		
		
	}
	
	
	class SmshopRowMapper2 implements RowMapper<xhd_dindan> {

		@Override
		public xhd_dindan rowMapper(ResultSet rs) throws Exception {
			xhd_dindan x = new xhd_dindan();
			x.setDoid(rs.getInt("doid"));
			x.setOno(rs.getString("ono"));
			x.setConid(rs.getInt("conid"));
			x.setDoshu(rs.getInt("doshu"));
			x.setDstate(rs.getInt("dstate"));
			return x;
		}
		
	}
}
