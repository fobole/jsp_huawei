package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.dao.Hou_type_dao.smailtypeRowMapper;
import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Hou_dingdan_xiangqing_dao extends BaseDao{
	//	根据订单号 查询所有详情条数
	public int xq_tiao(String ono,String parma) throws Exception{
		StringBuffer sql=new StringBuffer("SELECT * FROM detailsorder de LEFT JOIN configuration con on de.conid=con.conid " + 
				" join colors c on con.cid=c.cid join goods g on c.gid=g.gid  " + 
				"	WHERE 1=1 and de.ono=? ");
		if(parma!=null){
			sql.append(" and (g.gname like '%"+parma+"%' or con.conname like '%"+parma+"%')");
		}
		//sql.append(" order by btid desc limit ?,?");
		List<Goods> list=super.selectAll(sql.toString(), new XqMapper(), new Object[] {ono});
		return list.size();
	};
	//	分页订单详情
	public List<Goods> xq_paging(String ono,int c,int p,String parma) throws Exception{
		StringBuffer sql=new StringBuffer("SELECT * FROM detailsorder de LEFT JOIN configuration con on de.conid=con.conid " + 
				" join colors c on con.cid=c.cid join goods g on c.gid=g.gid  " + 
				"	WHERE 1=1 and de.ono=? ");
		if(parma!=null){
			sql.append(" and (g.gname like '%"+parma+"%' or con.conname like '%"+parma+"%')");
		}
		sql.append(" order by de.doid desc limit ?,? ");
		return super.selectAll(sql.toString(), new XqMapper(), new Object[]{ono,(c-1)*p,p});
	}
	
	class XqMapper implements RowMapper<Goods> {

		@Override
		public Goods rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods g=new Goods();
			//详情映射
			g.setDoid(rs.getInt("doid"));
			g.setOnodo(rs.getString("ono"));
			g.setConiddo(rs.getInt("conid"));
			g.setDoshu(rs.getInt("doshu"));
			//商品表映射
			g.setGid(rs.getInt("gid"));
			g.setGname(rs.getString("gname"));
			g.setGshangjia(rs.getInt("gshangjia"));
			g.setGtu(rs.getString("gtu"));
			g.setGjiage(rs.getDouble("gjiage"));
			//颜色映射
			g.setCid(rs.getInt("cid"));
			g.setCname(rs.getString("cname"));
			//配置映射
			g.setConid(rs.getInt("conid"));
			g.setConname(rs.getString("conname"));
			g.setConjia(rs.getDouble("conjia"));
			return g;
		}
		
	}
}
