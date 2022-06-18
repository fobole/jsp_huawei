package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Hou_gaidizhi_dao.DizhiRowMapper;
import cn.zktr.model.dao.Users_dao.UsersMapper;
import cn.zktr.model.entity.Gaidizhi;
import cn.zktr.model.entity.SouSuo_;
import cn.zktr.model.entity.Users;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Sousuo_Dao extends BaseDao{
	//查询大表
	public List<SouSuo_> cha_dabiao() throws Exception{
		String sql="SELECT * from bigtype WHERE bstate=0 ";
		return super.selectAll(sql, new DabiaoMapper());
	}
	//查小类
	public List<SouSuo_> cha_xiaobiao(int btid) throws Exception{
		String sql="SELECT * from smailtype WHERE smstate=0 and btid=? ";
		return super.selectAll(sql, new XiaobiaoMapper(), new Object[] {btid});
	}
	
	//查询商品_分页查询
	public List<SouSuo_> cha_sou(int c,int p,String parma,int xuan) throws Exception{
			//字符串拼接
			StringBuffer sql=new StringBuffer("SELECT * FROM bigtype bt JOIN smailtype sm on bt.btid=sm.btid join goods g on sm.smid=g.smid WHERE 1=1 and g.gshangjia=0 ");
			if(parma!=null){
				sql.append(" and (g.gname like '%"+parma+"%' or bt.btname like '%"+parma+"%' or sm.smname like '%"+parma+"%')");
			}
			if(xuan==0) {
				sql.append(" order by g.gid desc limit ?,?");
			}
			if(xuan==1) {
				sql.append(" order by g.gjiage desc limit ?,?");
			}
			if(xuan==2) {
				sql.append(" order by g.gname desc limit ?,?");
			}
			return super.selectAll(sql.toString(), new DizhiRowMapper(), new Object[]{(c-1)*p,p});
	};
	
	//查询商品总条数
	public int cha_sstiao(String parma) throws Exception{
			//字符串拼接
			StringBuffer sql=new StringBuffer("SELECT * FROM bigtype bt JOIN smailtype sm on bt.btid=sm.btid join goods g on sm.smid=g.smid WHERE 1=1 and g.gshangjia=0 ");
			if(parma!=null){
				sql.append(" and (g.gname like '%"+parma+"%' or bt.btname like '%"+parma+"%' or sm.smname like '%"+parma+"%')");
			}
			//sql.append(" order by uid desc");
			List<SouSuo_> list=super.selectAll(sql.toString(), new DizhiRowMapper(), new Object[]{});
			return list.size();
	};
	class DizhiRowMapper implements RowMapper<SouSuo_> {

		@Override
		public SouSuo_ rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			SouSuo_ g=new SouSuo_();
			g.setGid(rs.getInt("gid"));
			g.setGname(rs.getString("gname"));
			g.setSmid(rs.getInt("smid"));
			g.setGshangjia(rs.getInt("gshangjia"));
			g.setGtu(rs.getString("gtu"));
			g.setGjiage(rs.getDouble("gjiage"));
			g.setGkey(rs.getString("gkey"));
			g.setGnew(rs.getInt("gnew"));
			g.setGhot(rs.getInt("ghot"));
			g.setGtime(rs.getTimestamp("gtime"));
			g.setGsdate(rs.getTimestamp("gsdate"));
			g.setGxdate(rs.getTimestamp("gxdate"));
			//大类别
			g.setBtid(rs.getInt("btid"));
			g.setBtname(rs.getString("btname"));
			g.setBstate(rs.getInt("bstate"));
			//小类别
			g.setSmid(rs.getInt("smid"));
			g.setSmname(rs.getString("smname"));
			g.setSmtu(rs.getString("smtu"));
			g.setSmstate(rs.getInt("smstate"));
			g.setBtidsm(rs.getInt("btid"));
			return g;
		}
		
	}	
	
	
	
	
	class DabiaoMapper implements RowMapper<SouSuo_> {

		@Override
		public SouSuo_ rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			SouSuo_ g=new SouSuo_();
		
			//大类别
			g.setBtid(rs.getInt("btid"));
			g.setBtname(rs.getString("btname"));
			g.setBstate(rs.getInt("bstate"));
			return g;
			
		}
		
	}	
	class XiaobiaoMapper implements RowMapper<SouSuo_> {

		@Override
		public SouSuo_ rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			SouSuo_ g=new SouSuo_();
			//小类别
			g.setSmid(rs.getInt("smid"));
			g.setSmname(rs.getString("smname"));
			g.setSmtu(rs.getString("smtu"));
			g.setSmstate(rs.getInt("smstate"));
			g.setBtidsm(rs.getInt("btid"));
			return g;
		}
		
	}	
	
	
}
