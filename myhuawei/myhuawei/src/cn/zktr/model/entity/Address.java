package cn.zktr.model.entity;

import java.util.Date;

/**
 * @author 用户地址
 *
 */
public class Address {
	//	前台用户表
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
	// 地址表
	private int addid;
	private String addname;
	private String addphone;
	private String addsheng;
	private String addshi;
	private String addqu;
	private String adds;
	private int adddefault;
	private int uidadd;
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
	public int getAddid() {
		return addid;
	}
	public void setAddid(int addid) {
		this.addid = addid;
	}
	public String getAddname() {
		return addname;
	}
	public void setAddname(String addname) {
		this.addname = addname;
	}
	public String getAddphone() {
		return addphone;
	}
	public void setAddphone(String addphone) {
		this.addphone = addphone;
	}
	public String getAddsheng() {
		return addsheng;
	}
	public void setAddsheng(String addsheng) {
		this.addsheng = addsheng;
	}
	public String getAddshi() {
		return addshi;
	}
	public void setAddshi(String addshi) {
		this.addshi = addshi;
	}
	public String getAddqu() {
		return addqu;
	}
	public void setAddqu(String addqu) {
		this.addqu = addqu;
	}
	public String getAdds() {
		return adds;
	}
	public void setAdds(String adds) {
		this.adds = adds;
	}
	public int getAdddefault() {
		return adddefault;
	}
	public void setAdddefault(int adddefault) {
		this.adddefault = adddefault;
	}
	public int getUidadd() {
		return uidadd;
	}
	public void setUidadd(int uidadd) {
		this.uidadd = uidadd;
	}
	public Address(int uid, String uname, int usex, String uphone, String ubirth, String uimg, Date uregtime,
			int ustate, int ugrade, int ujifen, String upwd, int addid, String addname, String addphone,
			String addsheng, String addshi, String addqu, String adds, int adddefault, int uidadd) {
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
		this.addid = addid;
		this.addname = addname;
		this.addphone = addphone;
		this.addsheng = addsheng;
		this.addshi = addshi;
		this.addqu = addqu;
		this.adds = adds;
		this.adddefault = adddefault;
		this.uidadd = uidadd;
	}
	public Address() {
		super();
	}
	@Override
	public String toString() {
		return "Address [uid=" + uid + ", uname=" + uname + ", usex=" + usex + ", uphone=" + uphone + ", ubirth="
				+ ubirth + ", uimg=" + uimg + ", uregtime=" + uregtime + ", ustate=" + ustate + ", ugrade=" + ugrade
				+ ", ujifen=" + ujifen + ", upwd=" + upwd + ", addid=" + addid + ", addname=" + addname + ", addphone="
				+ addphone + ", addsheng=" + addsheng + ", addshi=" + addshi + ", addqu=" + addqu + ", adds=" + adds
				+ ", adddefault=" + adddefault + ", uidadd=" + uidadd + "]";
	}
	
}
