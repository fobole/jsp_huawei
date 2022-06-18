package cn.zktr.model.entity;

import java.util.Date;

public class Order {
			// 订单表
			private int oid;
			private String ono;
			private double ozongjia;// 应付金额
			private double opay;//实付金额
			private double ofreight;
			private int ostates;
			private Date ocreatetime;
			private String opays;
			private int ojifen;
			private int uido;
			private String oname;
			private String ophone;
			private String oaddress;
			private int dido;
			// 状态表
			private int osid;
			private int ostate;//状态
			private Date ostime;//形成状态时间
			private String onoos;
			
			
			
			
			public int getDido() {
				return dido;
			}
			public void setDido(int dido) {
				this.dido = dido;
			}
			public String getOnoos() {
				return onoos;
			}
			public void setOnoos(String onoos) {
				this.onoos = onoos;
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
			public int getUido() {
				return uido;
			}
			public void setUido(int uido) {
				this.uido = uido;
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
			public Order() {
				super();
			}
			@Override
			public String toString() {
				return "Order [oid=" + oid + ", ono=" + ono + ", ozongjia=" + ozongjia + ", opay=" + opay
						+ ", ofreight=" + ofreight + ", ostates=" + ostates + ", ocreatetime=" + ocreatetime
						+ ", opays=" + opays + ", ojifen=" + ojifen + ", uido=" + uido + ", oname=" + oname
						+ ", ophone=" + ophone + ", oaddress=" + oaddress + ", osid=" + osid + ", ostate=" + ostate
						+ ", ostime=" + ostime + ", onoos=" + onoos + "]";
			}
			
			
			
}
