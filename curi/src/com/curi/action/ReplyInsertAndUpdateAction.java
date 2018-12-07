package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.BoardDAO;
import com.curi.dao.ReplyDAO;
import com.curi.dto.ReplyDTO;

public class ReplyInsertAndUpdateAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		String up_rno = request.getParameter("up_rno") ;
		System.out.println(up_rno);
		if(up_rno.equals("")) {
			System.out.println("입력");
			int bno =Integer.parseInt(request.getParameter("re_bno"));
			String writer =request.getParameter("re_writer");
			String content =request.getParameter("login_input");
			System.out.println(bno+","+writer+","+content);
			
			ReplyDTO rDto = new ReplyDTO(content, writer, bno);
			ReplyDAO rDao = ReplyDAO.getInstance();
			
			rDao.replyInsert(rDto);
			
			BoardDAO bDao = BoardDAO.getInstance();
			bDao.boardReplyCntPlus(bno);
		}else {
			System.out.println("수정");
			int rno = Integer.parseInt(request.getParameter("up_rno"));
			String content = request.getParameter("login_input");
			
			System.out.println(rno+","+content);
			
			ReplyDTO rDto = new ReplyDTO(rno,content);
			ReplyDAO rDao = ReplyDAO.getInstance();
			
			rDao.replyUpdate(rDto);
		}
		return null;
	}

}
