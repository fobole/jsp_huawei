package cn.zktr.model.entity;

public class Order_detail {
			//订单详情
			private int doid;
			private String onodo;
			private int coniddo;//配置id 外键
			private int doshu;
			private int dstate;
			
			
			@Override
			public String toString() {
				return "Order_detail [doid=" + doid + ", onodo=" + onodo + ", coniddo=" + coniddo + ", doshu=" + doshu
						+ "]";
			}


			public Order_detail(String onodo, int coniddo, int doshu) {
				super();
				this.onodo = onodo;
				this.coniddo = coniddo;
				this.doshu = doshu;
			}


			public Order_detail() {
				super();
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


			public int getDstate() {
				return dstate;
			}


			public void setDstate(int dstate) {
				this.dstate = dstate;
			}
			
			
			
			
			
}
