package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.curi.dao.BoardDAO;
import com.curi.dao.ProductDAO;
import com.curi.dto.BoardDTO;
import com.curi.dto.ProductDTO;

public class productDetailAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		

		
		
		
		String url="detail.jsp";
		
		String p_code = request.getParameter("p_code");
		System.out.println(p_code);
		
		ProductDAO pDao = ProductDAO.getInstance();
		ProductDTO pDto = pDao.ProductDetailView(p_code);
		
		request.setAttribute("productview", pDto);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
