package cn.zktr.model.dao;


import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.entity.Gaidizhi;
import cn.zktr.model.entity.Hou_order;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Hou_gaidizhi_dao extends BaseDao{
	
	//查询商品_分页查询
			public List<Gaidizhi> cha_lcy(int c,int p,String parma) throws Exception{
					//字符串拼接
					StringBuffer sql=new StringBuffer("SELECT * from gaidz d where 1=1");
					if(parma!=null){
						sql.append(" and (d.dname like '%"+parma+"%' or d.ono like '%"+parma+"%')");
					}
					sql.append(" order by d.did desc limit ?,?");
					return super.selectAll(sql.toString(), new DizhiRowMapper(), new Object[]{(c-1)*p,p});
			};
			
			//查询商品总条数
			public int cha_tiao(String parma) throws Exception{
					//字符串拼接
					StringBuffer sql=new StringBuffer("SELECT * from gaidz d where 1=1 ");
					if(parma!=null){
						sql.append(" and (d.dname like '%"+parma+"%' or d.ono like '%"+parma+"%')");
					}
					//sql.append(" order by uid desc");
					List<Gaidizhi> list=super.selectAll(sql.toString(), new DizhiRowMapper(), new Object[]{});
					return list.size();
			};
			class DizhiRowMapper implements RowMapper<Gaidizhi> {

				@Override
				public Gaidizhi rowMapper(ResultSet rs) throws Exception {
					// TODO Auto-generated method stub
					Gaidizhi g=new Gaidizhi();
					// 修改地址表
					g.setOno(rs.getString("ono"));
					g.setDid(rs.getInt("did"));
					g.setDname(rs.getString("dname"));
					g.setDphone(rs.getString("dphone"));
					g.setDadd(rs.getString("dadd"));
					g.setDtime(rs.getTimestamp("dtime"));
					g.setDyes(rs.getInt("dyes"));
					return g;
				}
				
			}	
			//修改订单表
			public int xiugai(String oname,String ophone,String oaddress,String ono) throws Exception {
				String sql="update orders SET oname=?,ophone=?,oaddress=? WHERE ono=? ";
				return super.updateAll(sql, new Object[] {oname,ophone,oaddress,ono});
			}
			//修改提交地址状态
			public int dizhizt(int dyes,int did) throws Exception {
				String sql="update gaidz set dyes=? where did=?";
				return super.updateAll(sql, new Object[] {dyes,did});
			}
	}
