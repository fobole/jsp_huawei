package cn.zktr.model.entity;

import java.util.Date;

public class Hjy_pinglun_emtity {
	private int cmid;
	private int cid;
	private int uid;
	private int cmstar;
	private String cmnr;// 回复内容
	private String cmimg;//评论图片
	private Date cmtime;
	private String cimg;
	private String cname;
	private int gid;
	private String gname;
	
	private int conid;
	private String comname;
	
	public int getCmid() {
		return cmid;
	}
	public void setCmid(int cmid) {
		this.cmid = cmid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
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
	public String getCimg() {
		return cimg;
	}
	public void setCimg(String cimg) {
		this.cimg = cimg;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
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
	public int getConid() {
		return conid;
	}
	public void setConid(int conid) {
		this.conid = conid;
	}
	public String getComname() {
		return comname;
	}
	public void setComname(String comname) {
		this.comname = comname;
	}
	public Hjy_pinglun_emtity(int cmid, int cid, int uid, int cmstar, String cmnr, String cmimg, Date cmtime, String cimg,
			String cname, int gid, String gname, int conid, String comname) {
		super();
		this.cmid = cmid;
		this.cid = cid;
		this.uid = uid;
		this.cmstar = cmstar;
		this.cmnr = cmnr;
		this.cmimg = cmimg;
		this.cmtime = cmtime;
		this.cimg = cimg;
		this.cname = cname;
		this.gid = gid;
		this.gname = gname;
		this.conid = conid;
		this.comname = comname;
	}
	public Hjy_pinglun_emtity() {
		super();
	}
	
	
}
