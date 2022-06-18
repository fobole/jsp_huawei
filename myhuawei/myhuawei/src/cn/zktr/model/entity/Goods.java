package cn.zktr.model.entity;

import java.util.Date;

public class Goods {
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
		//商品表
		private int gid;
		private String gname;
		private int smidg;//外键  小类别id
		private int gshangjia;
		private String gtu;
		private double gjiage;//主图价格
		private String gkey;
		private int gnew;
		private int ghot;
		private Date gtime;//添加时间
		private Date gsdate;//上架时间
		private Date gxdate;//下架时间
		//颜色表
		private int cid;// 颜色id
		private String cname;//颜色名称
		private String cimg;//颜色图片
		private int conidc;//外键 版本id
		private int gidc;// 外键商品id
		//配置版本
		private int conid;
		private String conname;
		private int cidc;//颜色id
		private double conjia;
		private int cshu;
		private int gidcon;//商品外键
		//图片表
		private int pid;//id
		private String pname;
		private int cidp;//外键 图片id
		private int cgg; // 是否是轮播图片 可以为空
		private int pgoods;//图片类型 什么图----
		//评论表
		private int cmid;
		private int cidcm;//外键 颜色id
		private int uidcm;//外键 用户id
		private int cmstar;
		private String cmnr;// 回复内容
		private String cmimg;//评论图片
		private Date cmtime;
		//回复表
		private int rid; // 回复id
		private int cmidr; 
		private String rimg;//回复图片
		private String rnr;//回复内容
		private Date rtime;
		private int aidr;//外键 后台用户id
		// 后台管理员表
		private int aid;
		private String aname;//用户名
		private String apwd;//密码
		private Date addtime;
		private Date alogintime;
		private String atu;//头像
		private int atates;
		private int agrade;// 管理员等级
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
		// 订单表
		private int oid;
		private String ono;
		private double ozongjia;// 应付金额
		private double opay;//实付金额
		private double ofreight;
		private int ostates;
		private Date ocreatetime;
		private String opays;
		private int ojiden;
		private int uido;
		private int addido;
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
		// 状态表
		private int osid;
		private int ostate;//状态
		private Date ostime;//形成状态时间
		private int oidos;
		//订单详情
		private int doid;
		private String onodo;
		private int coniddo;//配置id 外键
		private int doshu;
		// 购物车
		private int carid;
		private int conidcar;//外键 配置id
		private int uidcar;//外减  会员id
		private int carcount;
		private int caris;//是否默认选中
		
		
		
		
		public String getCimg() {
			return cimg;
		}
		public void setCimg(String cimg) {
			this.cimg = cimg;
		}
		public int getCarid() {
			return carid;
		}
		public void setCarid(int carid) {
			this.carid = carid;
		}
		public int getConidcar() {
			return conidcar;
		}
		public void setConidcar(int conidcar) {
			this.conidcar = conidcar;
		}
		public int getUidcar() {
			return uidcar;
		}
		public void setUidcar(int uidcar) {
			this.uidcar = uidcar;
		}
		public int getCarcount() {
			return carcount;
		}
		public void setCarcount(int carcount) {
			this.carcount = carcount;
		}
		public int getCaris() {
			return caris;
		}
		public void setCaris(int caris) {
			this.caris = caris;
		}
		public int getDoid() {
			return doid;
		}
		public void setDoid(int doid) {
			this.doid = doid;
		}
		public String getOnodo() {
			return onodo;
		}
		public void setOnodo(String onodo) {
			this.onodo = onodo;
		}
		public int getConiddo() {
			return coniddo;
		}
		public void setConiddo(int coniddo) {
			this.coniddo = coniddo;
		}
		public int getDoshu() {
			return doshu;
		}
		public void setDoshu(int doshu) {
			this.doshu = doshu;
		}
		public int getOsid() {
			return osid;
		}
		public void setOsid(int osid) {
			this.osid = osid;
		}
		public int getOstate() {
			return ostate;
		}
		public void setOstate(int ostate) {
			this.ostate = ostate;
		}
		public Date getOstime() {
			return ostime;
		}
		public void setOstime(Date ostime) {
			this.ostime = ostime;
		}
		public int getOidos() {
			return oidos;
		}
		public void setOidos(int oidos) {
			this.oidos = oidos;
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
		public int getOjiden() {
			return ojiden;
		}
		public void setOjiden(int ojiden) {
			this.ojiden = ojiden;
		}
		public int getUido() {
			return uido;
		}
		public void setUido(int uido) {
			this.uido = uido;
		}
		public int getAddido() {
			return addido;
		}
		public void setAddido(int addido) {
			this.addido = addido;
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
		public int getAid() {
			return aid;
		}
		public void setAid(int aid) {
			this.aid = aid;
		}
		public String getAname() {
			return aname;
		}
		public void setAname(String aname) {
			this.aname = aname;
		}
		public String getApwd() {
			return apwd;
		}
		public void setApwd(String apwd) {
			this.apwd = apwd;
		}
		public Date getAddtime() {
			return addtime;
		}
		public void setAddtime(Date addtime) {
			this.addtime = addtime;
		}
		public Date getAlogintime() {
			return alogintime;
		}
		public void setAlogintime(Date alogintime) {
			this.alogintime = alogintime;
		}
		public String getAtu() {
			return atu;
		}
		public void setAtu(String atu) {
			this.atu = atu;
		}
		public int getAtates() {
			return atates;
		}
		public void setAtates(int atates) {
			this.atates = atates;
		}
		public int getAgrade() {
			return agrade;
		}
		public void setAgrade(int agrade) {
			this.agrade = agrade;
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
		public String getRimg() {
			return rimg;
		}
		public void setRimg(String rimg) {
			this.rimg = rimg;
		}
		public int getCmid() {
			return cmid;
		}
		public void setCmid(int cmid) {
			this.cmid = cmid;
		}
		public int getCidcm() {
			return cidcm;
		}
		public void setCidcm(int cidcm) {
			this.cidcm = cidcm;
		}
		public int getUidcm() {
			return uidcm;
		}
		public void setUidcm(int uidcm) {
			this.uidcm = uidcm;
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
		public int getCmidr() {
			return cmidr;
		}
		public void setCmidr(int cmidr) {
			this.cmidr = cmidr;
		}
		
		public String getRnr() {
			return rnr;
		}
		public void setRnr(String rnr) {
			this.rnr = rnr;
		}
		public Date getRtime() {
			return rtime;
		}
		public void setRtime(Date rtime) {
			this.rtime = rtime;
		}
		public int getAidr() {
			return aidr;
		}
		public void setAidr(int aidr) {
			this.aidr = aidr;
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
		public int getConidc() {
			return conidc;
		}
		public void setConidc(int conidc) {
			this.conidc = conidc;
		}
		public int getGidc() {
			return gidc;
		}
		public void setGidc(int gidc) {
			this.gidc = gidc;
		}
		public int getPid() {
			return pid;
		}
		public void setPid(int pid) {
			this.pid = pid;
		}
		public String getPname() {
			return pname;
		}
		public void setPname(String pname) {
			this.pname = pname;
		}
		public int getCidp() {
			return cidp;
		}
		public void setCidp(int cidp) {
			this.cidp = cidp;
		}
		public int getCgg() {
			return cgg;
		}
		public void setCgg(int cgg) {
			this.cgg = cgg;
		}
		public int getPgoods() {
			return pgoods;
		}
		public void setPgoods(int pgoods) {
			this.pgoods = pgoods;
		}
		public double getGjiage() {
			return gjiage;
		}
		public void setGjiage(double gjiage) {
			this.gjiage = gjiage;
		}
		public String getSmtu() {
			return smtu;
		}
		public void setSmtu(String smtu) {
			this.smtu = smtu;
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
		public int getCidc() {
			return cidc;
		}
		public void setCidc(int cidc) {
			this.cidc = cidc;
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
		public int getGidcon() {
			return gidcon;
		}
		public void setGidcon(int gidcon) {
			this.gidcon = gidcon;
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
		public Goods(int btid, String btname, int bstate) {
			super();
			this.btid = btid;
			this.btname = btname;
			this.bstate = bstate;
		}
		
		public Goods(int btid, String btname, int bstate, int smid, String smname, int smstate, int btidsm) {
			super();
			this.btid = btid;
			this.btname = btname;
			this.bstate = bstate;
			this.smid = smid;
			this.smname = smname;
			this.smstate = smstate;
			this.btidsm = btidsm;
		}
		public Goods() {
			super();
		}
		
		
		
}
