package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.ReplyDAO;
import com.curi.dto.ReplyDTO;

public class ReplyInsertAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		int bno =Integer.parseInt(request.getParameter("re_bno"));
		String writer =request.getParameter("re_writer");
		String content =request.getParameter("login_input");
		System.out.println(bno+","+writer+","+content);
		ReplyDTO rDto = new ReplyDTO(content, writer, bno);
		ReplyDAO rDao = ReplyDAO.getInstance();
		
		rDao.replyInsert(rDto);
		return null;
	}

}
