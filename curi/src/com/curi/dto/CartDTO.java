package com.curi.dto;

import java.util.Date;

public class CartDTO {
	
		private int cno;
		private String id;
		private String selec;
		private String color;
		private Date regdate;
		private int p_code;
		
		
		public CartDTO() {
			super();
		}


		
		
		
		
		
		public CartDTO(int cno, String id, String selec, String color, Date regdate, int p_code) {
			super();
			this.cno = cno;
			this.id = id;
			this.selec = selec;
			this.color = color;
			this.regdate = regdate;
			this.p_code = p_code;
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


		@Override
		public String toString() {
			return "CartDTO [cno=" + cno + ", id=" + id + ", selec=" + selec + ", color=" + color + ", regdate="
					+ regdate + ", p_code=" + p_code + "]";
		}


		
		
		
		
}
	
