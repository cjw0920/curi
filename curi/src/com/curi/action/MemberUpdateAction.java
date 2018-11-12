package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberUpdateAction implements Action {
	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// .jsp : 화면단만 출력

		String url = "member_update.jsp";

		// 회원정보 수정 하려면 반드시 선행조건
		// 로그인이 되어있어야한다.
		// Session 이 null이 아니면 = 로그인

		HttpSession session = request.getSession(); // session값 취득

		if (session.getAttribute("loginUser") == null) { // 로그인 no
			url = "index.bizpoll";

		} else { // 로그인 yes
			url = "member_update.jsp";
		}

		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);

		return forward;
	}
}