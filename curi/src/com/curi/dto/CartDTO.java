package com.curi.dto;

import java.util.Date;

public class CartDTO {
	
		private int cno;
		private String id;
		private String selec;
		private String color;
		private Date regdate;
		private int p_code;
		private String p_img;
		private int p_price;
		
		public CartDTO() {
			super();
		}

		
		




		public CartDTO(String id, String selec, String color, int p_code, String p_img, int p_price) {
			super();
			this.id = id;
			this.selec = selec;
			this.color = color;
			this.p_code = p_code;
			this.p_img = p_img;
			this.p_price = p_price;
		}



		public CartDTO(int cno, String id, String selec, String color, Date regdate, int p_code, String p_img,
				int p_price) {
			super();
			this.cno = cno;
			this.id = id;
			this.selec = selec;
			this.color = color;
			this.regdate = regdate;
			this.p_code = p_code;
			this.p_img = p_img;
			this.p_price = p_price;
		}







		public int getCno() {
			return cno;
		}

		public void setCno(int cno) {
			this.cno = cno;
		}

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getSelec() {
			return selec;
		}

		public void setSelec(String selec) {
			this.selec = selec;
		}

		public String getColor() {
			return color;
		}

		public void setColor(String color) {
			this.color = color;
		}

		public Date getRegdate() {
			return regdate;
		}

		public void setRegdate(Date regdate) {
			this.regdate = regdate;
		}

		public int getP_code() {
			return p_code;
		}

		public void setP_code(int p_code) {
			this.p_code = p_code;
		}

		public String getP_img() {
			return p_img;
		}

		public void setP_img(String p_img) {
			this.p_img = p_img;
		}

		
		
		
		
		public int getP_price() {
			return p_price;
		}







		public void setP_price(int p_price) {
			this.p_price = p_price;
		}







		@Override
		public String toString() {
			return "CartDTO [cno=" + cno + ", id=" + id + ", selec=" + selec + ", color=" + color + ", regdate="
					+ regdate + ", p_code=" + p_code + ", p_img=" + p_img + ", p_price=" + p_price + "]";
		}




}
	
