package cn.zktr.model.entity;

import java.util.Date;

public class Admins {
		//		后台管理员表
		private int aid;
		private String aname;//用户名
		private String apwd;//密码
		private Date addtime;
		private Date alogintime;
		private String atu;//头像
		private int atates;
		private int agrade;// 管理员等级
		private int asex;
		
		public int getAsex() {
			return asex;
		}
		public void setAsex(int asex) {
			this.asex = asex;
		}
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
		public Admins(int aid, String aname, String apwd, Date addtime, Date alogintime, String atu, int atates,
				int agrade) {
			super();
			this.aid = aid;
			this.aname = aname;
			this.apwd = apwd;
			this.addtime = addtime;
			this.alogintime = alogintime;
			this.atu = atu;
			this.atates = atates;
			this.agrade = agrade;
		}
		
		public Admins(String aname, String apwd, Date addtime, String atu, int atates, int agrade, int asex) {
			super();
			this.aname = aname;
			this.apwd = apwd;
			this.addtime = addtime;
			this.atu = atu;
			this.atates = atates;
			this.agrade = agrade;
			this.asex = asex;
		}
		public Admins() {
			super();
		}
		@Override
		public String toString() {
			return "Admins [aid=" + aid + ", aname=" + aname + ", apwd=" + apwd + ", addtime=" + addtime
					+ ", alogintime=" + alogintime + ", atu=" + atu + ", atates=" + atates + ", agrade=" + agrade + "]";
		}
		
		
}
