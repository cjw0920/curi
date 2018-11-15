package com.curi.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.ReplyDAO;
import com.curi.dto.ReplyDTO;

public class CommemtListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "board/commentlist.jsp";
		
		String bno = request.getParameter("bno");
		
		ReplyDAO rDao = ReplyDAO.getInstance();
		List<ReplyDTO> replyList = rDao.replyListALL(bno);
		request.setAttribute("replyList", replyList);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
