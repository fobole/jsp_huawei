package cn.zktr.model.entity;

import java.util.Date;

public class Users {
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


		public Users() {
			super();
		}
		
		
		


		public Users(String uname, int usex, String uphone, String ubirth, String uimg, Date uregtime, int ustate,
				String upwd) {
			super();
			this.uname = uname;
			this.usex = usex;
			this.uphone = uphone;
			this.ubirth = ubirth;
			this.uimg = uimg;
			this.uregtime = uregtime;
			this.ustate = ustate;
			this.upwd = upwd;
		}


		public Users(int uid, String uname, int usex, String uphone, String ubirth, String uimg, Date uregtime,
				int ustate, int ugrade, int ujifen, String upwd) {
			super();
			this.uid = uid;
			this.uname = uname;
			this.usex = usex;
			this.uphone = uphone;
			this.ubirth = ubirth;
			this.uimg = uimg;
			this.uregtime = uregtime;
			this.ustate = ustate;
			this.ugrade = ugrade;
			this.ujifen = ujifen;
			this.upwd = upwd;
		}


		@Override
		public String toString() {
			return "Users [uid=" + uid + ", uname=" + uname + ", usex=" + usex + ", uphone=" + uphone + ", ubirth="
					+ ubirth + ", uimg=" + uimg + ", uregtime=" + uregtime + ", ustate=" + ustate + ", ugrade=" + ugrade
					+ ", ujifen=" + ujifen + ", upwd=" + upwd + "]";
		}


		
		
		
		
		
}
