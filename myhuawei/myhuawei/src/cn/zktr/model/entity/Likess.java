package cn.zktr.model.entity;

public class Likess {
	// 收藏表
	private int lid;
	private int conidl;
	private int uidl;
	private int gidl;
	
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public int getConidl() {
		return conidl;
	}
	public void setConidl(int conidl) {
		this.conidl = conidl;
	}
	public int getUidl() {
		return uidl;
	}
	public void setUidl(int uidl) {
		this.uidl = uidl;
	}
	public int getGidl() {
		return gidl;
	}
	public void setGidl(int gidl) {
		this.gidl = gidl;
	}
	public Likess(int lid, int conidl, int uidl, int gidl) {
		super();
		this.lid = lid;
		this.conidl = conidl;
		this.uidl = uidl;
		this.gidl = gidl;
	}
	public Likess() {
		super();
	}
	@Override
	public String toString() {
		return "Likess [lid=" + lid + ", conidl=" + conidl + ", uidl=" + uidl + ", gidl=" + gidl + "]";
	}
	
	
}
