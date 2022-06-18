package cn.zktr.model.entity;

import java.util.Date;

public class SouSuo_ {
	//商品表
	private int gid;
	private String gname;//商品名称
	private int smidg;//外键  小类别id
	private int gshangjia;//上下架
	private String gtu;
	private double gjiage;//主图价格
	private String gkey;
	private int gnew;//是否是新商品
	private int ghot;//是否热销商品
	private Date gtime;//添加时间
	private Date gsdate;//上架时间
	private Date gxdate;//下架时间
	//大类别
	private int btid;
	private String btname;
	private int bstate;
	//小类别
	private int smid;
	private String smname;
	private String smtu;//图片
	private int smstate;
	private int btidsm;//外键大类别id
	public SouSuo_(int gid, String gname, int smidg, int gshangjia, String gtu, double gjiage, String gkey, int gnew,
			int ghot, Date gtime, Date gsdate, Date gxdate, int btid, String btname, int bstate, int smid,
			String smname, String smtu, int smstate, int btidsm) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.smidg = smidg;
		this.gshangjia = gshangjia;
		this.gtu = gtu;
		this.gjiage = gjiage;
		this.gkey = gkey;
		this.gnew = gnew;
		this.ghot = ghot;
		this.gtime = gtime;
		this.gsdate = gsdate;
		this.gxdate = gxdate;
		this.btid = btid;
		this.btname = btname;
		this.bstate = bstate;
		this.smid = smid;
		this.smname = smname;
		this.smtu = smtu;
		this.smstate = smstate;
		this.btidsm = btidsm;
	}
	public SouSuo_() {
		super();
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
	public int getBtid() {
		return btid;
	}
	public void setBtid(int btid) {
		this.btid = btid;
	}
	public String getBtname() {
		return btname;
	}
	public void setBtname(String btname) {
		this.btname = btname;
	}
	public int getBstate() {
		return bstate;
	}
	public void setBstate(int bstate) {
		this.bstate = bstate;
	}
	public int getSmid() {
		return smid;
	}
	public void setSmid(int smid) {
		this.smid = smid;
	}
	public String getSmname() {
		return smname;
	}
	public void setSmname(String smname) {
		this.smname = smname;
	}
	public String getSmtu() {
		return smtu;
	}
	public void setSmtu(String smtu) {
		this.smtu = smtu;
	}
	public int getSmstate() {
		return smstate;
	}
	public void setSmstate(int smstate) {
		this.smstate = smstate;
	}
	public int getBtidsm() {
		return btidsm;
	}
	public void setBtidsm(int btidsm) {
		this.btidsm = btidsm;
	}
	@Override
	public String toString() {
		return  btname;
	}
	
	
	
}
