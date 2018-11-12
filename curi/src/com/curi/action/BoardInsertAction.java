package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.curi.dao.BoardDAO;
import com.curi.dto.BoardDTO;

public class BoardInsertAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url="";
		
		HttpSession session = request.getSession();
		
		if (session.getAttribute("loginUser") == null) { // 로그인 no
			url = "login_main.bizpoll";

		} else { // 로그인 yes
			url = "board/insert_board.jsp";
		}
		
		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
		
		
	}

}
