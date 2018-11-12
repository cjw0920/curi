package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.curi.dao.BoardDAO;

public class BoardViewcntAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		
		String bno = request.getParameter("bno");
		
		
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		
		HttpSession	session = request.getSession();
		bDao.ViewCnt(bno, session);
		
		String url = "boardDetail.bizpoll?bno="+bno;
		
		
		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
