package com.curi.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.BoardDAO;
import com.curi.dto.BoardDTO;
import com.curi.dto.CriteriaDTO;
import com.curi.dto.PageMakerDTO;

public class BoardSearchAction  implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url="board/boardlist.jsp";
		
		String flag = request.getParameter("flag");
		String keyword = request.getParameter("keyword");
		
		System.out.println(flag+" // "+keyword);
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지 번호"+page);
		criDto.setPage(page);

		
		
		BoardDAO bDao = BoardDAO.getInstance();
		//게시글 목록 출력
		
		criDto.setKeyword(keyword);
		criDto.setFlag(flag);
		
		List<BoardDTO> searchList = bDao.boardSearch(criDto);
		request.setAttribute("boardlist", searchList);
		
		//현재 날짜 출력
		Date today = new Date();
		request.setAttribute("today", today);

		
		
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		
		int totalcount = bDao.totalCount(criDto);
		pageMaker.setTotalCount(totalcount);
		request.setAttribute("pageMaker", pageMaker);
		
		
		System.out.println("===============================================");
		System.out.println(pageMaker.toString());
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}
}
