package com.curi.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.ProductCommentDAO;
import com.curi.dao.ReplyDAO;
import com.curi.dto.ProductCommentDTO;
import com.curi.dto.ReplyDTO;

public class ProductCommentListPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "productCommentList.jsp";
		
		String p_code = request.getParameter("p_code");
		
		
		
		System.out.println(p_code);
		
		
		ProductCommentDAO pDao = ProductCommentDAO.getInstance();
		List<ProductCommentDTO> commentList = pDao.commentListALL(p_code);
		request.setAttribute("commentList", commentList);
		
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
