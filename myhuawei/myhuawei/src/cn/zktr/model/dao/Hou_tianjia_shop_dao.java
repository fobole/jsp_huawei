package cn.zktr.model.dao;

import java.sql.ResultSet;
import java.util.Date;
import java.util.List;

import cn.zktr.model.dao.Hou_index_dao.adminsMapper;
import cn.zktr.model.dao.Hw_details_dao.colorMapper;
import cn.zktr.model.entity.Admins;
import cn.zktr.model.entity.Goods_details;
import cn.zktr.model.entity.Hou_goods;
import cn.zktr.utilts.BaseDao;
import cn.zktr.utilts.RowMapper;

public class Hou_tianjia_shop_dao extends BaseDao{
			// 添加商品表
			public int goods(String gname,int smid,String gtu,double gjia,String gkey,int gnew,int ghot) throws Exception{
				String sql="insert into goods value(null,?,?,0,?,?,?,?,?,?,null,null)";
				return super.updateAll(sql, new Object[]{gname,smid,gtu,gjia,gkey,gnew,ghot,new Date()});
			};
			
			// 添加详情图
			public int xiangtu(String pimg,int gid,int cgoods) throws Exception{
				String sql="insert into picture VALUES(null,?,null,null,?,?);";
				return super.updateAll(sql, new Object[]{pimg,gid,cgoods});
			};
			
			// 添加颜色表
			public int color(String cname,String cimg,int gid) throws Exception{
				String sql="insert into colors VALUES(null,?,?,?)";
				return super.updateAll(sql, new Object[]{cname,cimg,gid});
			};
			
			// 添加配置表
			public int con(String conname,int cid,double conjia,int kucun) throws Exception{
				String sql="insert into configuration VALUES(null,?,?,?,?)";
				return super.updateAll(sql, new Object[]{conname,cid,conjia,kucun});
			};
			
			// 添加图片表
			public int img(String pimg,int cid,int cgoods) throws Exception{
				String sql="insert into picture VALUES(null,?,?,null,null,?);";
				return super.updateAll(sql, new Object[]{pimg,cid,cgoods});
			};
		
			//	查询商品id
			public int gid(String gname , String gkey) throws Exception {
				String sql="SELECT * FROM goods WHERE 1=1 and gname=? and gkey=? ";
				List<Hou_goods> list=super.selectAll(sql, new GMapper(), new Object[] {gname,gkey});
				if(list.size()>0) {
					return list.get(0).getGid();
				}
				return  -1;
			}
			
			class GMapper implements RowMapper<Hou_goods> {

				@Override
				public Hou_goods rowMapper(ResultSet rs) throws Exception {
					// TODO Auto-generated method stub
					Hou_goods g=new Hou_goods();
					g.setGid(rs.getInt("gid"));
					g.setGname(rs.getString("gname"));
					g.setSmidg(rs.getInt("smid"));
					g.setGshangjia(rs.getInt("gshangjia"));
					g.setGtu(rs.getString("gtu"));
					g.setGjiage(rs.getDouble("gjiage"));
					g.setGkey(rs.getString("gkey"));
					g.setGnew(rs.getInt("gnew"));
					g.setGhot(rs.getInt("ghot"));
					g.setGtime(rs.getTimestamp("gtime"));
					g.setGsdate(rs.getTimestamp("gsdate"));
					g.setGxdate(rs.getTimestamp("gxdate"));
					return g;
				}
				
			}
			//	查询颜色id
			public int cid(String cname , int gid) throws Exception {
				String sql="SELECT * FROM colors WHERE 1=1 and cname=? and gid=? ";
				List<Hou_goods> list=super.selectAll(sql, new CMapper(), new Object[] {cname,gid});
				if(list.size()>0) {
					return list.get(0).getCid();
				}
				return  -1;
			}
			
			class CMapper implements RowMapper<Hou_goods> {

				@Override
				public Hou_goods rowMapper(ResultSet rs) throws Exception {
					// TODO Auto-generated method stub
					Hou_goods g=new Hou_goods();
					//颜色映射
					g.setCid(rs.getInt("cid"));
					g.setCname(rs.getString("cname"));
					g.setCimg(rs.getString("cimg"));
					/*//配置映射
					g.setConid(rs.getInt("conid"));
					g.setConname(rs.getString("conname"));
					g.setConjia(rs.getDouble("conjia"));*/
					return g;
				}
				
			}
			
		
		
		
		
		
		//	查询所有颜色
		public List<Goods_details> color_name(int gid) throws Exception {
			String sql="SELECT * FROM colors c WHERE 1=1 and c.gid=? ";
			return super.selectAll(sql, new ColorMapper(), new Object[] {gid});
		}
		
		class ColorMapper implements RowMapper<Goods_details> {

			@Override
			public Goods_details rowMapper(ResultSet rs) throws Exception {
				// TODO Auto-generated method stub
				Goods_details g=new Goods_details();
				//颜色映射
				g.setCid(rs.getInt("cid"));
				g.setCname(rs.getString("cname"));
				g.setCimg(rs.getString("cimg"));
				return g;
			}
			
		}
		
		//		查询颜色 下所有配置
		public List<Goods_details> con_name(String cid) throws Exception {
			String sql="SELECT * FROM configuration WHERE 1=1 and cid=? ";
			return super.selectAll(sql, new ConMapper(), new Object[] {cid});
		}
		
		class ConMapper implements RowMapper<Goods_details> {

			@Override
			public Goods_details rowMapper(ResultSet rs) throws Exception {
				// TODO Auto-generated method stub
				Goods_details g=new Goods_details();
				//配置映射
				g.setConid(rs.getInt("conid"));
				g.setConname(rs.getString("conname"));
				g.setConjia(rs.getDouble("conjia"));
				g.setCshu(rs.getInt("cshu"));
				return g;
			}
			
		}
		
		
		
}
