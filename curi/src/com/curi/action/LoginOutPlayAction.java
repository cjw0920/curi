package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginOutPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
						//.jsp : 화면단만 출력
		String url="index.bizpoll";
		
		//session을 가져옴
		HttpSession session = request.getSession();
		
		if(session != null) {
		//session초기화 = 로그인 정보 삭제
		session.invalidate();
		}
		
		
		
		//forward일때는 로그아웃 후 뒤로가기 했을 시 로그인 정보가 그대로 남아있음
		//sendRedirect 일때는 로그아웃후 뒤로가기 했을때 로그인 정보 사라짐
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		return forward;
		
	}
}
