package com.curi.action;

public class ActionForward {

	//View Page(결과갑 어디로 전송?)
	private String path;	//"index.jsp"
	
	//페이지 이동법 : sendRedirect, Forward
	//true : sendRedirect, false : forward
	private boolean isRedirect;

	public String getPath() {
		return path;
	}

	public void setPath(String path) {//path : index.jsp
		this.path = path;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
	
	
	
	
	
	
}
