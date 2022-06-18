package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.List;

import cn.zktr.model.entity.Goods;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Bigtype_dao extends BaseDao{
	
	
	//	查询第一个上架的大类
	public int onebtid() throws Exception{
		String sql="select * from bigtype where 1=1 and bstate=0 limit 1";
		List<Goods> list=super.selectAll(sql, new BigtypeRowMapper(), new Object[] {});
		return list.get(0).getBtid();
	};
	//	查询第2个上架的大类
	public int twobtid() throws Exception{
		String sql="select * from bigtype where 1=1 and bstate=0 limit 1,1";
		List<Goods> list=super.selectAll(sql, new BigtypeRowMapper(), new Object[] {});
		return list.get(0).getBtid();
	};
	//	查询第3个上架的大类
	public int threebtid() throws Exception{
		String sql="select * from bigtype where 1=1 and bstate=0 limit 2,1";
		List<Goods> list=super.selectAll(sql, new BigtypeRowMapper(), new Object[] {});
		return list.get(0).getBtid();
	};
	
	
	//	查询第一个上架的大类 名称
	public String onename() throws Exception{
		String sql="select * from bigtype where 1=1 and bstate=0 limit 1";
		List<Goods> list=super.selectAll(sql, new BigtypeRowMapper(), new Object[] {});
		return list.get(0).getBtname();
	};
	//	查询第2个上架的大类 名称
	public String twoname() throws Exception{
		String sql="select * from bigtype where 1=1 and bstate=0 limit 1,1";
		List<Goods> list=super.selectAll(sql, new BigtypeRowMapper(), new Object[] {});
		return list.get(0).getBtname();
	};
	//	查询第3个上架的大类 名称
	public String threename() throws Exception{
		String sql="select * from bigtype where 1=1 and bstate=0 limit 2,1";
		List<Goods> list=super.selectAll(sql, new BigtypeRowMapper(), new Object[] {});
		return list.get(0).getBtname();
	};
	
	
	
	/*//	查询第4个上架的大类 名称
	public String fourbtid() throws Exception{
		String sql="select * from bigtype where 1=1 and bstate=0 limit 3,1";
		List<Goods> list=super.selectAll(sql, new BigtypeRowMapper(), new Object[] {});
		return list.get(0).getBtname();
	};*/
	
	
	//	查询所有大类
	public List<Goods> bigtypeAll() throws Exception{
		String sql="select * from bigtype where 1=1 and bstate=0 order by btid desc limit 0,12";
		return super.selectAll(sql, new BigtypeRowMapper(), new Object[] {});
	};
	
	//	查询所有大类----头部菜单
	public List<Goods> bigtypeAlltou() throws Exception{
		String sql="select * from bigtype WHERE bstate=0 limit 0,7";
		return super.selectAll(sql, new BigtypeRowMapper(), new Object[] {});
	};
	
	class BigtypeRowMapper implements RowMapper<Goods> {

		@Override
		public Goods rowMapper(ResultSet rs) throws Exception {
			// TODO Auto-generated method stub
			Goods g=new Goods();
			g.setBtid(rs.getInt("btid"));
			g.setBtname(rs.getString("btname"));
			g.setBstate(rs.getInt("bstate"));
			return g;
		}
		
	}
	
	
	
	
	//	小类别
	public List<Goods> smailtypeAll(int btid) throws Exception{
		String sql="select * from  bigtype bt join smailtype sm  on sm.btid=bt.btid WHERE smstate=0 and sm.btid=?  order by sm.smid desc  limit 12";
		return super.selectAll(sql, new smailtypeRowMapper(), new Object[] {btid});
	};
	
	
	//4 点击切换小类别-1  order by sm.smid desc 
	public List<Goods> smailtypeAll1(int one) throws Exception{
		String sql="select * from smailtype sm WHERE 1=1  and sm.smstate=0 and sm.btid=? limit 0,5 ";
		return super.selectAll(sql, new smailtypeRowMapper(), new Object[] {one});
	};
	//4 点击切换小类别-五个的选项卡-2
		public List<Goods> smailtypeAll4(int four) throws Exception{
			String sql="select * from smailtype sm WHERE 1=1  and sm.smstate=0 and sm.btid=? limit 0,5";
			return super.selectAll(sql, new smailtypeRowMapper(), new Object[] {four});
		};
	//5 点击切换小类别-五个的选项卡-1
		public List<Goods> smailtypeAll2(int two) throws Exception{
			String sql="select * from smailtype sm WHERE 1=1  and sm.smstate=0 and sm.btid=? limit 0,5";
			return super.selectAll(sql, new smailtypeRowMapper(), new Object[] {two});
	};
	//5 点击切换小类别-五个的选项卡-2
	public List<Goods> smailtypeAll3(int three) throws Exception{
		String sql="select * from smailtype sm WHERE 1=1 and sm.smstate=0 and sm.btid=? limit 0,5";
		return super.selectAll(sql, new smailtypeRowMapper(), new Object[] {three});
	};
	
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
	
	//
	
	
	
	
	
}
