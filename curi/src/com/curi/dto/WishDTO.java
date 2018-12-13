package com.curi.dto;

import java.util.Date;

public class WishDTO {
	
		private int wno;
		private String id;
		private String selec;
		private Date regdate;
		private int p_code;
		
		
		public WishDTO() {
			super();
		}


		
		
		
		
		
		public WishDTO(String id, int p_code) {
			super();
			this.id = id;
			this.p_code = p_code;
		}


		
		
		




		public WishDTO(String id, String selec, int p_code) {
			super();
			this.id = id;
			this.selec = selec;
			this.p_code = p_code;
		}







		public WishDTO(int wno, String id, String selec, Date regdate, int p_code) {
			super();
			this.wno = wno;
			this.id = id;
			this.selec = selec;
			this.regdate = regdate;
			this.p_code = p_code;
		}


		public int getWno() {
			return wno;
		}


		public void setWno(int wno) {
			this.wno = wno;
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
			return "WishDTO [wno=" + wno + ", id=" + id + ", selec=" + selec + ", regdate=" + regdate + ", p_code="
					+ p_code + "]";
		}


		
		
		
}
	
