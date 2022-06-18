package cn.zktr.model.entity;

import java.util.Date;

public class Hou_goods {
	//商品表
			private int gid;
			private String gname;
			private int smidg;//外键  小类别id
			private int gshangjia;
			private String gtu;
			private double gjiage;//主图价格
			private String gkey;
			private int gnew;
			private int ghot;
			private Date gtime;//添加时间
			private Date gsdate;//上架时间
			private Date gxdate;//下架时间
			//颜色表
			private int cid;// 颜色id
			private String cname;//颜色名称
			private String cimg;//颜色图片
			private int conidc;//外键 版本id
			private int gidc;// 外键商品id
			//配置版本
			private int conid;
			private String conname;
			private int cidc;//颜色id
			private double conjia;
			private int cshu;
			private int gidcon;//商品外键
			//图片表
			private int pid;//id
			private String pname;
			private int cidp;//外键 图片id
			private int cgg; // 是否是轮播图片 可以为空
			private int pgoods;//图片类型 什么图----
			public int getGid() {
				return gid;
			}
			public void setGid(int gid) {
				this.gid = gid;
			}
			public String getGname() {
				return gname;
			}
			public void setGname(String gname) {
				this.gname = gname;
			}
			public int getSmidg() {
				return smidg;
			}
			public void setSmidg(int smidg) {
				this.smidg = smidg;
			}
			public int getGshangjia() {
				return gshangjia;
			}
			public void setGshangjia(int gshangjia) {
				this.gshangjia = gshangjia;
			}
			public String getGtu() {
				return gtu;
			}
			public void setGtu(String gtu) {
				this.gtu = gtu;
			}
			public double getGjiage() {
				return gjiage;
			}
			public void setGjiage(double gjiage) {
				this.gjiage = gjiage;
			}
			public String getGkey() {
				return gkey;
			}
			public void setGkey(String gkey) {
				this.gkey = gkey;
			}
			public int getGnew() {
				return gnew;
			}
			public void setGnew(int gnew) {
				this.gnew = gnew;
			}
			public int getGhot() {
				return ghot;
			}
			public void setGhot(int ghot) {
				this.ghot = ghot;
			}
			public Date getGtime() {
				return gtime;
			}
			public void setGtime(Date gtime) {
				this.gtime = gtime;
			}
			public Date getGsdate() {
				return gsdate;
			}
			public void setGsdate(Date gsdate) {
				this.gsdate = gsdate;
			}
			public Date getGxdate() {
				return gxdate;
			}
			public void setGxdate(Date gxdate) {
				this.gxdate = gxdate;
			}
			public int getCid() {
				return cid;
			}
			public void setCid(int cid) {
				this.cid = cid;
			}
			public String getCname() {
				return cname;
			}
			public void setCname(String cname) {
				this.cname = cname;
			}
			public String getCimg() {
				return cimg;
			}
			public void setCimg(String cimg) {
				this.cimg = cimg;
			}
			public int getConidc() {
				return conidc;
			}
			public void setConidc(int conidc) {
				this.conidc = conidc;
			}
			public int getGidc() {
				return gidc;
			}
			public void setGidc(int gidc) {
				this.gidc = gidc;
			}
			public int getConid() {
				return conid;
			}
			public void setConid(int conid) {
				this.conid = conid;
			}
			public String getConname() {
				return conname;
			}
			public void setConname(String conname) {
				this.conname = conname;
			}
			public int getCidc() {
				return cidc;
			}
			public void setCidc(int cidc) {
				this.cidc = cidc;
			}
			public double getConjia() {
				return conjia;
			}
			public void setConjia(double conjia) {
				this.conjia = conjia;
			}
			public int getCshu() {
				return cshu;
			}
			public void setCshu(int cshu) {
				this.cshu = cshu;
			}
			public int getGidcon() {
				return gidcon;
			}
			public void setGidcon(int gidcon) {
				this.gidcon = gidcon;
			}
			public int getPid() {
				return pid;
			}
			public void setPid(int pid) {
				this.pid = pid;
			}
			public String getPname() {
				return pname;
			}
			public void setPname(String pname) {
				this.pname = pname;
			}
			public int getCidp() {
				return cidp;
			}
			public void setCidp(int cidp) {
				this.cidp = cidp;
			}
			public int getCgg() {
				return cgg;
			}
			public void setCgg(int cgg) {
				this.cgg = cgg;
			}
			public int getPgoods() {
				return pgoods;
			}
			public void setPgoods(int pgoods) {
				this.pgoods = pgoods;
			}
			public Hou_goods(int gid, String gname, int smidg, int gshangjia, String gtu, double gjiage, String gkey,
					int gnew, int ghot, Date gtime, Date gsdate, Date gxdate, int cid, String cname, String cimg,
					int conidc, int gidc, int conid, String conname, int cidc, double conjia, int cshu, int gidcon,
					int pid, String pname, int cidp, int cgg, int pgoods) {
				super();
				this.gid = gid;
				this.gname = gname;
				this.smidg = smidg;
				this.gshangjia = gshangjia;
				this.gtu = gtu;
				this.gjiage = gjiage;
				this.gkey = gkey;
				this.gnew = gnew;
				this.ghot = ghot;
				this.gtime = gtime;
				this.gsdate = gsdate;
				this.gxdate = gxdate;
				this.cid = cid;
				this.cname = cname;
				this.cimg = cimg;
				this.conidc = conidc;
				this.gidc = gidc;
				this.conid = conid;
				this.conname = conname;
				this.cidc = cidc;
				this.conjia = conjia;
				this.cshu = cshu;
				this.gidcon = gidcon;
				this.pid = pid;
				this.pname = pname;
				this.cidp = cidp;
				this.cgg = cgg;
				this.pgoods = pgoods;
			}
			public Hou_goods() {
				super();
			}
			@Override
			public String toString() {
				return "Hou_goods [gid=" + gid + ", gname=" + gname + ", smidg=" + smidg + ", gshangjia=" + gshangjia
						+ ", gtu=" + gtu + ", gjiage=" + gjiage + ", gkey=" + gkey + ", gnew=" + gnew + ", ghot=" + ghot
						+ ", gtime=" + gtime + ", gsdate=" + gsdate + ", gxdate=" + gxdate + ", cid=" + cid + ", cname="
						+ cname + ", cimg=" + cimg + ", conidc=" + conidc + ", gidc=" + gidc + ", conid=" + conid
						+ ", conname=" + conname + ", cidc=" + cidc + ", conjia=" + conjia + ", cshu=" + cshu
						+ ", gidcon=" + gidcon + ", pid=" + pid + ", pname=" + pname + ", cidp=" + cidp + ", cgg=" + cgg
						+ ", pgoods=" + pgoods + "]";
			}
			
			
}
