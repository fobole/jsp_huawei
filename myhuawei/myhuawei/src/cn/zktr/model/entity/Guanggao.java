package cn.zktr.model.entity;

import java.util.Date;

public class Guanggao {
		//图片表
		private int pid;
		private String pname;
		private int cid;
		private int cgg;
		private int gid;
		
		// 商品表
		private int gidg;
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
		
		//大类别
		private int btid;
		private String btname;
		private int bstate;
		//小类别
		private int smid;
		private String smname;
		private String smtu;//图片
		private int smstate;
		private int btidsm;//外键大类别id
		
		
		public int getBtid() {
			return btid;
		}
		public void setBtid(int btid) {
			this.btid = btid;
		}
		public String getBtname() {
			return btname;
		}
		public void setBtname(String btname) {
			this.btname = btname;
		}
		public int getBstate() {
			return bstate;
		}
		public void setBstate(int bstate) {
			this.bstate = bstate;
		}
		public int getSmid() {
			return smid;
		}
		public void setSmid(int smid) {
			this.smid = smid;
		}
		public String getSmname() {
			return smname;
		}
		public void setSmname(String smname) {
			this.smname = smname;
		}
		public String getSmtu() {
			return smtu;
		}
		public void setSmtu(String smtu) {
			this.smtu = smtu;
		}
		public int getSmstate() {
			return smstate;
		}
		public void setSmstate(int smstate) {
			this.smstate = smstate;
		}
		public int getBtidsm() {
			return btidsm;
		}
		public void setBtidsm(int btidsm) {
			this.btidsm = btidsm;
		}
		public int getGidg() {
			return gidg;
		}
		public void setGidg(int gidg) {
			this.gidg = gidg;
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
		public int getGid() {
			return gid;
		}
		public void setGid(int gid) {
			this.gid = gid;
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
		public int getCid() {
			return cid;
		}
		public void setCid(int cid) {
			this.cid = cid;
		}
		public int getCgg() {
			return cgg;
		}
		public void setCgg(int cgg) {
			this.cgg = cgg;
		}
		public Guanggao(int pid, String pname, int cid, int cgg) {
			super();
			this.pid = pid;
			this.pname = pname;
			this.cid = cid;
			this.cgg = cgg;
		}
		public Guanggao() {
			super();
		}
		
}
