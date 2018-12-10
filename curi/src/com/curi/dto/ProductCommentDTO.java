package com.curi.dto;

import java.util.Date;

public class ProductCommentDTO {
	private int rno;
	private String writer;
	private String content;
	private Date regdate;
	private int p_code;
	
	
	
	
	
	public ProductCommentDTO() {
		super();
	}


	




	public ProductCommentDTO(int rno, String content, int p_code) {
		super();
		this.rno = rno;
		this.content = content;
		this.p_code = p_code;
	}







	public ProductCommentDTO(String writer, String content, int p_code) {
		super();
		this.writer = writer;
		this.content = content;
		this.p_code = p_code;
	}


	public ProductCommentDTO(int rno, String writer, String content, int p_code) {
		super();
		this.rno = rno;
		this.writer = writer;
		this.content = content;
		this.p_code = p_code;
	}


	public ProductCommentDTO(int rno, String writer, String content, Date regdate, int p_code) {
		super();
		this.rno = rno;
		this.writer = writer;
		this.content = content;
		this.regdate = regdate;
		this.p_code = p_code;
	}


	public int getRno() {
		return rno;
	}


	public void setRno(int rno) {
		this.rno = rno;
	}


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
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
		return "ProductCommentDTO [rno=" + rno + ", writer=" + writer + ", content=" + content + ", regdate=" + regdate
				+ ", p_code=" + p_code + "]";
	}


	
	
}

