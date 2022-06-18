package cn.zktr.model.entity;

public class Set_address {
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
	
	public Set_address(int addid, String addname, String addphone, String addsheng, String addshi, String addqu,
			String adds) {
		super();
		this.addid = addid;
		this.addname = addname;
		this.addphone = addphone;
		this.addsheng = addsheng;
		this.addshi = addshi;
		this.addqu = addqu;
		this.adds = adds;
	}
	public Set_address(int addid, String addname, String addphone, String addsheng, String addshi, String addqu,
			String adds, int adddefault, int uidadd) {
		super();
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
	
	public Set_address(String addname, String addphone, String addsheng, String addshi, String addqu, String adds,
			int uidadd) {
		super();
		this.addname = addname;
		this.addphone = addphone;
		this.addsheng = addsheng;
		this.addshi = addshi;
		this.addqu = addqu;
		this.adds = adds;
		this.uidadd = uidadd;
	}
	public Set_address() {
		super();
	}
	
}
