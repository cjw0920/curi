package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.BoardDAO;
import com.curi.dao.ReplyDAO;
import com.curi.dto.ReplyDTO;

public class ReplyUpdateAction implements Action {

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int rno = Integer.parseInt(request.getParameter("rno"));
		String content = request.getParameter("content");
		System.out.println(rno+","+content);
		
		ReplyDTO rDto = new ReplyDTO(rno,content);
		ReplyDAO rDao = ReplyDAO.getInstance();
		
		rDao.replyUpdate(rDto);
		
		return null;
	}

}
