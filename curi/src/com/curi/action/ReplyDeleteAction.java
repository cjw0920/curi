package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.BoardDAO;
import com.curi.dao.ReplyDAO;
import com.curi.dto.ReplyDTO;

public class ReplyDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String rno = request.getParameter("rno");
		
		ReplyDAO rDao = ReplyDAO.getInstance();
		
		rDao.replyDelete(rno);
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		BoardDAO bDao = BoardDAO.getInstance();
		bDao.boardReplyCntMinus(bno);
		
		return null;
	}

}