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

public class ProductCommentInsertPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "productCommentList.jsp";
		
		
		MultipartRequest multi = new MultipartRequest(request,	//request
				Constants.UPLOAD_PATH,	//파일업로드 디렉토리
				Constants.MAX_UPLOAD,	//업로드 최대 용량
				"UTF-8",				//인코딩
				new DefaultFileRenamePolicy());	//파일이름중복정책
		
		int p_code =Integer.parseInt(multi.getParameter("p_code"));
		String writer = multi.getParameter("writer");
		String content = multi.getParameter("content");
		
		System.out.println(p_code);
		System.out.println(writer);
		System.out.println(content);
		
		ProductCommentDTO pDto = new ProductCommentDTO(writer, content, p_code);
		ProductCommentDAO pcDao = ProductCommentDAO.getInstance();
		
		pcDao.Insert(pDto);
		
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.ReplyCntPlus(p_code);
		
		return null;
	}
}
