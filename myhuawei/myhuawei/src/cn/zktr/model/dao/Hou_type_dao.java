package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Bigtype_dao.smailtypeRowMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Hou_type_dao extends BaseDao{
	// 添加大类别
	public int jia_bigtype(String btname) throws Exception {
		String sql="insert into bigtype value(null,?,0)";
		return super.updateAll(sql, new Object[] {btname});
	}
	
	// 添加大类别
	public int jia_smtype(int btid, String smname,String smimg) throws Exception {
		String sql="insert into smailtype value(null,?,?,0,?)";
		return super.updateAll(sql, new Object[] {smname,smimg,btid});
	}
	
	/**
	 * 查询总条数
	 * @throws Exception 
	 */
	public int typeselectByTotal(String parma) throws Exception{
		//字符串拼接
		StringBuffer sql=new StringBuffer("select * from bigtype bt where 1=1 ");
		if(parma!=null){
			sql.append(" and (bt.btid like '%"+parma+"%' or bt.btname like '%"+parma+"%')");
		}
		//sql.append(" order by uid desc");
		List<Goods> list=super.selectAll(sql.toString(), new typeMapper(), null);
		return list.size();
	}
	
	/**
	 * 分页查询
	 * 当前页面 current
	 * 页大小 pageSize
	 * @author ASUS
	 * @throws Exception 
	 *
	 */
	public List<Goods> typeselectByCurrent(int c,int p,String parma) throws Exception{
		//字符串拼接
		StringBuffer sql=new StringBuffer("select * from bigtype bt where 1=1  ");
		if(parma!=null){
			sql.append(" and (bt.btid like '%"+parma+"%' or bt.btname like '%"+parma+"%')");
		}
		sql.append(" order by btid desc limit ?,?");
		return super.selectAll(sql.toString(), new typeMapper(), new Object[]{(c-1)*p,p});
	}
	
	class typeMapper implements RowMapper<Goods>{

		@Override
		public Goods rowMapper(ResultSet rs) throws Exception {
			Goods g=new Goods();
			g.setBtid(rs.getInt("btid"));
			g.setBtname(rs.getString("btname"));
			g.setBstate(rs.getInt("bstate"));
			return g;
		}
		
	}
	
	
	//	根据大类id 查询所有小类别条数
	public int smailtype_tiao(int btid,String parma) throws Exception{
		StringBuffer sql=new StringBuffer("select * from smailtype sm WHERE 1=1 and sm.btid=? ");
		if(parma!=null){
			sql.append(" and (sm.smid like '%"+parma+"%' or sm.smname like '%"+parma+"%')");
		}
		//sql.append(" order by btid desc limit ?,?");
		List<Goods> list=super.selectAll(sql.toString(), new smailtypeRowMapper(), new Object[] {btid});
		return list.size();
	};
	//	分页查询小类
	public List<Goods> smailtype_paging(int btid,int c,int p,String parma) throws Exception{
		StringBuffer sql=new StringBuffer("select * from smailtype sm where 1=1 and sm.btid=? ");
		if(parma!=null){
			sql.append(" and (sm.btid like '%"+parma+"%' or sm.smname like '%"+parma+"%')");
		}
		sql.append("  order by sm.smid desc limit ?,? ");
		return super.selectAll(sql.toString(), new smailtypeRowMapper(), new Object[]{btid,(c-1)*p,p});
	}
	
	class smailtypeRowMapper implements RowMapper<Goods> {

		@Override
		public Goods rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods g=new Goods();
			g.setSmid(rs.getInt("smid"));
			g.setSmname(rs.getString("smname"));
			g.setSmtu(rs.getString("smtu"));
			g.setSmstate(rs.getInt("smstate"));
			g.setBtidsm(rs.getInt("btid"));
			return g;
		}
		
	}
	
	

}
