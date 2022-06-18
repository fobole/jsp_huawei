package cn.zktr.model.entity;

import java.util.Date;

public class Pinglun {
		//评论表
		private int cmid;
		private int cidcm;//外键 颜色id
		private int uidcm;//外键 用户id
		private int cmstar;
		private String cmnr;// 回复内容
		private String cmimg;//评论图片
		private Date cmtime;
		//回复表
		private int rid; // 回复id
		private int cmidr; 
		private String rimg;//回复图片
		private String rnr;//回复内容
		private Date rtime;
		private int aidr;//外键 后台用户id
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
		private int conidc;//外键 版本id
		private int gidc;// 外键商品id
		// 后台管理员表
		private int aid;
		private String aname;//用户名
		private String apwd;//密码
		private Date addtime;
		private Date alogintime;
		private String atu;//头像
		private int atates;
		private int agrade;// 管理员等级
		//		前台用户表
		private int uid;
		private String uname;
		private int usex;
		private String uphone;
		private String ubirth;
		private String uimg;
		private Date uregtime;
		private int ustate;
		private int ugrade;
		private int ujifen; 
		private String upwd;
		
		public int getAid() {
			return aid;
		}
		public void setAid(int aid) {
			this.aid = aid;
		}
		public String getAname() {
			return aname;
		}
		public void setAname(String aname) {
			this.aname = aname;
		}
		public String getApwd() {
			return apwd;
		}
		public void setApwd(String apwd) {
			this.apwd = apwd;
		}
		public Date getAddtime() {
			return addtime;
		}
		public void setAddtime(Date addtime) {
			this.addtime = addtime;
		}
		public Date getAlogintime() {
			return alogintime;
		}
		public void setAlogintime(Date alogintime) {
			this.alogintime = alogintime;
		}
		public String getAtu() {
			return atu;
		}
		public void setAtu(String atu) {
			this.atu = atu;
		}
		public int getAtates() {
			return atates;
		}
		public void setAtates(int atates) {
			this.atates = atates;
		}
		public int getAgrade() {
			return agrade;
		}
		public void setAgrade(int agrade) {
			this.agrade = agrade;
		}
		public int getUid() {
			return uid;
		}
		public void setUid(int uid) {
			this.uid = uid;
		}
		public String getUname() {
			return uname;
		}
		public void setUname(String uname) {
			this.uname = uname;
		}
		public int getUsex() {
			return usex;
		}
		public void setUsex(int usex) {
			this.usex = usex;
		}
		public String getUphone() {
			return uphone;
		}
		public void setUphone(String uphone) {
			this.uphone = uphone;
		}
		public String getUbirth() {
			return ubirth;
		}
		public void setUbirth(String ubirth) {
			this.ubirth = ubirth;
		}
		public String getUimg() {
			return uimg;
		}
		public void setUimg(String uimg) {
			this.uimg = uimg;
		}
		public Date getUregtime() {
			return uregtime;
		}
		public void setUregtime(Date uregtime) {
			this.uregtime = uregtime;
		}
		public int getUstate() {
			return ustate;
		}
		public void setUstate(int ustate) {
			this.ustate = ustate;
		}
		public int getUgrade() {
			return ugrade;
		}
		public void setUgrade(int ugrade) {
			this.ugrade = ugrade;
		}
		public int getUjifen() {
			return ujifen;
		}
		public void setUjifen(int ujifen) {
			this.ujifen = ujifen;
		}
		public String getUpwd() {
			return upwd;
		}
		public void setUpwd(String upwd) {
			this.upwd = upwd;
		}
		public int getCmid() {
			return cmid;
		}
		public void setCmid(int cmid) {
			this.cmid = cmid;
		}
		public int getCidcm() {
			return cidcm;
		}
		public void setCidcm(int cidcm) {
			this.cidcm = cidcm;
		}
		public int getUidcm() {
			return uidcm;
		}
		public void setUidcm(int uidcm) {
			this.uidcm = uidcm;
		}
		public int getCmstar() {
			return cmstar;
		}
		public void setCmstar(int cmstar) {
			this.cmstar = cmstar;
		}
		public String getCmnr() {
			return cmnr;
		}
		public void setCmnr(String cmnr) {
			this.cmnr = cmnr;
		}
		public String getCmimg() {
			return cmimg;
		}
		public void setCmimg(String cmimg) {
			this.cmimg = cmimg;
		}
		public Date getCmtime() {
			return cmtime;
		}
		public void setCmtime(Date cmtime) {
			this.cmtime = cmtime;
		}
		public int getRid() {
			return rid;
		}
		public void setRid(int rid) {
			this.rid = rid;
		}
		public int getCmidr() {
			return cmidr;
		}
		public void setCmidr(int cmidr) {
			this.cmidr = cmidr;
		}
		
		public String getRimg() {
			return rimg;
		}
		public void setRimg(String rimg) {
			this.rimg = rimg;
		}
		public String getRnr() {
			return rnr;
		}
		public void setRnr(String rnr) {
			this.rnr = rnr;
		}
		public Date getRtime() {
			return rtime;
		}
		public void setRtime(Date rtime) {
			this.rtime = rtime;
		}
		public int getAidr() {
			return aidr;
		}
		public void setAidr(int aidr) {
			this.aidr = aidr;
		}
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
		
		public Pinglun() {
			super();
		}
		
		
}
