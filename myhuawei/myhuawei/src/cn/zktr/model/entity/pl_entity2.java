package cn.zktr.model.entity;

import java.util.Date;

public class pl_entity2 {
      private int cmid;
      private int conid;
      private int uid;
      private int cmstar;
      private String cmnr;
      private String cmimg;
      private Date cmtime;
	public int getCmid() {
		return cmid;
	}
	public void setCmid(int cmid) {
		this.cmid = cmid;
	}
	public int getConid() {
		return conid;
	}
	public void setConid(int conid) {
		this.conid = conid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
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
	
	public pl_entity2() {
		super();
	}
	public pl_entity2(int conid, int uid, String cmnr, String cmimg) {
		super();
		this.conid = conid;
		this.uid = uid;
		this.cmnr = cmnr;
		this.cmimg = cmimg;
	}

      
}
