package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.BoardDAO;
import com.curi.dto.BoardDTO;

public class BoardDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url="boardList.bizpoll";
		
		
		String bno = request.getParameter("bno");
		System.out.println(bno);
		
		BoardDAO bDao = BoardDAO.getInstance();
		
		int bno1 = Integer.parseInt(bno);
		
		
		int result = bDao.boardDelete(bno1);
		
		if(result>0) {
			System.out.println("삭제성공");
		}else{
			System.out.println("실패");
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
