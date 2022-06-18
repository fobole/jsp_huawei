package cn.zktr.model.entity;

import java.util.Date;

public class HJY_hwdetails_entity {
	//评论
   private int cmid;
   private int cid;
   private int uid;
   private String uname;
   private String uimg;
   private int cmstar;
   private String cmnr;
   private String cmimg;
   private Date cmtime;
   //回复
   private int rid;
   private 	String rnr;
   private String rimg;
   private Date rtime;
   private int aid;
   //颜色表
   private String cname;
   private String cimg;
   private int gid;
   private String gname;
   
   //配置
   private int conid;
   private String conname;
   private double conjia;
   private int cshu;
public HJY_hwdetails_entity(int cmid, int cid, int uid, String uname, String uimg, int cmstar, String cmnr,
		String cmimg, Date cmtime, int rid, String rnr, String rimg, Date rtime, int aid, String cname, String cimg,
		int gid, String gname, int conid, String conname, double conjia, int cshu) {
	super();
	this.cmid = cmid;
	this.cid = cid;
	this.uid = uid;
	this.uname = uname;
	this.uimg = uimg;
	this.cmstar = cmstar;
	this.cmnr = cmnr;
	this.cmimg = cmimg;
	this.cmtime = cmtime;
	this.rid = rid;
	this.rnr = rnr;
	this.rimg = rimg;
	this.rtime = rtime;
	this.aid = aid;
	this.cname = cname;
	this.cimg = cimg;
	this.gid = gid;
	this.gname = gname;
	this.conid = conid;
	this.conname = conname;
	this.conjia = conjia;
	this.cshu = cshu;
}
public HJY_hwdetails_entity() {
	super();
}
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
public String getUname() {
	return uname;
}
public void setUname(String uname) {
	this.uname = uname;
}
public String getUimg() {
	return uimg;
}
public void setUimg(String uimg) {
	this.uimg = uimg;
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
public String getRnr() {
	return rnr;
}
public void setRnr(String rnr) {
	this.rnr = rnr;
}
public String getRimg() {
	return rimg;
}
public void setRimg(String rimg) {
	this.rimg = rimg;
}
public Date getRtime() {
	return rtime;
}
public void setRtime(Date rtime) {
	this.rtime = rtime;
}
public int getAid() {
	return aid;
}
public void setAid(int aid) {
	this.aid = aid;
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
public String getConname() {
	return conname;
}
public void setConname(String conname) {
	this.conname = conname;
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



}
