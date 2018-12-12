package com.curi.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.WishDAO;
import com.curi.dto.WishDTO;

public class WishListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "myPage/wishList.jsp";
		
		String id = request.getParameter("user");
		
		System.out.println(id+"???");
		
		WishDAO wDao = WishDAO.getInstance();
		List<WishDTO> wishList = wDao.WishListALL(id);
		request.setAttribute("wishList", wishList);
		
		int list_size = wishList.size();	
		
		request.setAttribute("list_size", list_size);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
