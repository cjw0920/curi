package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.common.Constants;
import com.curi.dao.BoardDAO;
import com.curi.dao.ProductCommentDAO;
import com.curi.dao.ProductDAO;
import com.curi.dao.ReplyDAO;
import com.curi.dto.BoardDTO;
import com.curi.dto.ProductCommentDTO;
import com.curi.dto.ReplyDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ProductCommentDeletePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String rno = request.getParameter("rno");
		
		ProductCommentDAO pcDao = ProductCommentDAO.getInstance();
		
		pcDao.commentDelete(rno);
		
		int p_code = Integer.parseInt(request.getParameter("p_code"));
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.ReplyCntMinus(p_code);
		
		return null;
		
	}
}
