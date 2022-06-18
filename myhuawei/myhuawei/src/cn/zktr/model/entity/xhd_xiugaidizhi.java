package cn.zktr.model.entity;

import java.util.Date;

public class xhd_xiugaidizhi {
	private int did;
	private String ono;
	private String dname;
	private String dphone;
	private String dadd;
	private Date dtime;
	private int dyes;
	
	public xhd_xiugaidizhi(String ono, String dname, String dphone, String dadd) {
		super();
		this.ono = ono;
		this.dname = dname;
		this.dphone = dphone;
		this.dadd = dadd;
	}
	public xhd_xiugaidizhi() {
		super();
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getOno() {
		return ono;
	}
	public void setOno(String ono) {
		this.ono = ono;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getDphone() {
		return dphone;
	}
	public void setDphone(String dphone) {
		this.dphone = dphone;
	}
	public String getDadd() {
		return dadd;
	}
	public void setDadd(String dadd) {
		this.dadd = dadd;
	}
	public Date getDtime() {
		return dtime;
	}
	public void setDtime(Date dtime) {
		this.dtime = dtime;
	}
	public int getDyes() {
		return dyes;
	}
	public void setDyes(int dyes) {
		this.dyes = dyes;
	}
	
	
	
}
