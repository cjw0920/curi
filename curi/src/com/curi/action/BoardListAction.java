package com.curi.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.curi.dao.BoardDAO;
import com.curi.dto.BoardDTO;
import com.curi.dto.CriteriaDTO;
import com.curi.dto.PageMakerDTO;

import oracle.net.aso.k;

public class BoardListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String url="board/boardlist.jsp";
		
		CriteriaDTO criDto = new CriteriaDTO();
		int page = 1;
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		System.out.println("페이지 번호"+page);
		criDto.setPage(page);

		String flag=null;
		String keyword = null;
		
		if(request.getParameter("keyword")!=null) {
			System.out.println("검색기능");
			
			flag=request.getParameter("flag");
			keyword=request.getParameter("keyword");
			
			criDto.setFlag(flag);
			criDto.setKeyword(keyword);
			
			System.out.println(page+", "+flag+", "+keyword);
			
			request.setAttribute("flag", flag);
			request.setAttribute("keyword", keyword);
			
		}
		
		BoardDAO bDao = BoardDAO.getInstance();
		//게시글 목록 출력
		List<BoardDTO> boardlist = bDao.boardListAll(criDto);
		request.setAttribute("boardlist", boardlist);
	
		//현재 날짜 출력
		Date today = new Date();
		request.setAttribute("today", today);

		
		System.out.println(criDto);
		PageMakerDTO pageMaker = new PageMakerDTO();
		pageMaker.setCriDto(criDto);
		
		int totalcount = bDao.totalCount(criDto);
		System.out.println("총계수 : "+ totalcount);
		pageMaker.setTotalCount(totalcount);
		request.setAttribute("pageMaker", pageMaker);
		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}
	
	
	
	

}
