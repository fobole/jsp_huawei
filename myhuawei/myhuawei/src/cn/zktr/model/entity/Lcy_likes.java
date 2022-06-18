package cn.zktr.model.entity;

import java.util.Date;

public class Lcy_likes {
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
	//喜欢表
			private int uid;
			private int conid;
			private int lid;
	//配置表
			private int cid;
			private String conname;
			private String conjia;
			private int cshu;
	//颜色表
			private String cname;
			private String cimg;
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
			public int getUid() {
				return uid;
			}
			public void setUid(int uid) {
				this.uid = uid;
			}
			public int getConid() {
				return conid;
			}
			public void setConid(int conid) {
				this.conid = conid;
			}
			public int getLid() {
				return lid;
			}
			public void setLid(int lid) {
				this.lid = lid;
			}
			public int getCid() {
				return cid;
			}
			public void setCid(int cid) {
				this.cid = cid;
			}
			public String getConname() {
				return conname;
			}
			public void setConname(String conname) {
				this.conname = conname;
			}
			public String getConjia() {
				return conjia;
			}
			public void setConjia(String conjia) {
				this.conjia = conjia;
			}
			public int getCshu() {
				return cshu;
			}
			public void setCshu(int cshu) {
				this.cshu = cshu;
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
			public Lcy_likes() {
				super();
			}
			@Override
			public String toString() {
				return "Lcy_likes [gid=" + gid + ", gname=" + gname + ", smidg=" + smidg + ", gshangjia=" + gshangjia
						+ ", gtu=" + gtu + ", gjiage=" + gjiage + ", gkey=" + gkey + ", gnew=" + gnew + ", ghot=" + ghot
						+ ", gtime=" + gtime + ", gsdate=" + gsdate + ", gxdate=" + gxdate + ", uid=" + uid + ", conid="
						+ conid + ", lid=" + lid + ", cid=" + cid + ", conname=" + conname + ", conjia=" + conjia
						+ ", cshu=" + cshu + ", cname=" + cname + ", cimg=" + cimg + "]";
			}
		
			
}
