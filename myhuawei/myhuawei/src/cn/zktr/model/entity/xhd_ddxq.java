package cn.zktr.model.entity;

import java.util.Date;

public class xhd_ddxq {
	//订单表
		private int oid;//id
		private String ono;//单号
		private double ozongjia;//总价
		private double opay;//实付
		private double ofreight;//运费
		private int ostates;//状态
		private Date ocreatetime;//状态时间
		private String opays;//支付方式
		private int ojifen;//积分
		private int uid;//用户id
		private String oname;//联系人名
		private String ophone;//联系电话
		private String oaddress;//收货地址
		private int did;
		private Date ofktime;
		private Date ofhtime;
		private Date oshtime;
		private Date owctime;
		
		//颜色表
		private int cid;
		private String cname;
		private String cimg;//颜色图片
		

		
		//订单详情表
		private int doid;
		private int doshu;
		private int dstate;
		
		//商品表
		private int gid;
		private String gname;
		private double gjiage;
		
		//配置表
		private int conid;
		private String conname;
		public xhd_ddxq(int oid, String ono, double ozongjia, double opay, double ofreight, int ostates,
				Date ocreatetime, String opays, int ojifen, int uid, String oname, String ophone, String oaddress,
				int did, Date ofktime, Date ofhtime, Date oshtime, Date owctime, int cid, String cname, String cimg,
				int doid, int doshu, int dstate, int gid, String gname, double gjiage, int conid, String conname) {
			super();
			this.oid = oid;
			this.ono = ono;
			this.ozongjia = ozongjia;
			this.opay = opay;
			this.ofreight = ofreight;
			this.ostates = ostates;
			this.ocreatetime = ocreatetime;
			this.opays = opays;
			this.ojifen = ojifen;
			this.uid = uid;
			this.oname = oname;
			this.ophone = ophone;
			this.oaddress = oaddress;
			this.did = did;
			this.ofktime = ofktime;
			this.ofhtime = ofhtime;
			this.oshtime = oshtime;
			this.owctime = owctime;
			this.cid = cid;
			this.cname = cname;
			this.cimg = cimg;
			this.doid = doid;
			this.doshu = doshu;
			this.dstate = dstate;
			this.gid = gid;
			this.gname = gname;
			this.gjiage = gjiage;
			this.conid = conid;
			this.conname = conname;
		}
		public xhd_ddxq() {
			super();
		}
		public int getOid() {
			return oid;
		}
		public void setOid(int oid) {
			this.oid = oid;
		}
		public String getOno() {
			return ono;
		}
		public void setOno(String ono) {
			this.ono = ono;
		}
		public double getOzongjia() {
			return ozongjia;
		}
		public void setOzongjia(double ozongjia) {
			this.ozongjia = ozongjia;
		}
		public double getOpay() {
			return opay;
		}
		public void setOpay(double opay) {
			this.opay = opay;
		}
		public double getOfreight() {
			return ofreight;
		}
		public void setOfreight(double ofreight) {
			this.ofreight = ofreight;
		}
		public int getOstates() {
			return ostates;
		}
		public void setOstates(int ostates) {
			this.ostates = ostates;
		}
		public Date getOcreatetime() {
			return ocreatetime;
		}
		public void setOcreatetime(Date ocreatetime) {
			this.ocreatetime = ocreatetime;
		}
		public String getOpays() {
			return opays;
		}
		public void setOpays(String opays) {
			this.opays = opays;
		}
		public int getOjifen() {
			return ojifen;
		}
		public void setOjifen(int ojifen) {
			this.ojifen = ojifen;
		}
		public int getUid() {
			return uid;
		}
		public void setUid(int uid) {
			this.uid = uid;
		}
		public String getOname() {
			return oname;
		}
		public void setOname(String oname) {
			this.oname = oname;
		}
		public String getOphone() {
			return ophone;
		}
		public void setOphone(String ophone) {
			this.ophone = ophone;
		}
		public String getOaddress() {
			return oaddress;
		}
		public void setOaddress(String oaddress) {
			this.oaddress = oaddress;
		}
		public int getDid() {
			return did;
		}
		public void setDid(int did) {
			this.did = did;
		}
		public Date getOfktime() {
			return ofktime;
		}
		public void setOfktime(Date ofktime) {
			this.ofktime = ofktime;
		}
		public Date getOfhtime() {
			return ofhtime;
		}
		public void setOfhtime(Date ofhtime) {
			this.ofhtime = ofhtime;
		}
		public Date getOshtime() {
			return oshtime;
		}
		public void setOshtime(Date oshtime) {
			this.oshtime = oshtime;
		}
		public Date getOwctime() {
			return owctime;
		}
		public void setOwctime(Date owctime) {
			this.owctime = owctime;
		}
		public int getCid() {
			return cid;
		}
		public void setCid(int cid) {
			this.cid = cid;
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
		public int getDoid() {
			return doid;
		}
		public void setDoid(int doid) {
			this.doid = doid;
		}
		public int getDoshu() {
			return doshu;
		}
		public void setDoshu(int doshu) {
			this.doshu = doshu;
		}
		public int getDstate() {
			return dstate;
		}
		public void setDstate(int dstate) {
			this.dstate = dstate;
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
		public double getGjiage() {
			return gjiage;
		}
		public void setGjiage(double gjiage) {
			this.gjiage = gjiage;
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
	
		
		
}
