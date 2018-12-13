package com.curi.action;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.CartDAO;
import com.curi.dao.WishDAO;
import com.curi.dto.CartDTO;
import com.curi.dto.WishDTO;

public class CartListAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "myPage/cartList.jsp";
		
		String user = request.getParameter("user");
		
		
		CartDAO cDao = CartDAO.getInstance();
		List<CartDTO> cartList = cDao.CartListALL(user);
		request.setAttribute("cartList", cartList);
		
		int list_size = cartList.size();	
		
		request.setAttribute("list_size", list_size);
		
		Date today = new Date();
		request.setAttribute("today", today);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
