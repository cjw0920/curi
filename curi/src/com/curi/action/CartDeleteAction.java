package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.CartDAO;
import com.curi.dao.ProductDAO;
import com.curi.dao.WishDAO;
import com.curi.dto.WishDTO;

public class CartDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user = request.getParameter("user");
		
		String url = "CartList.bizpoll?user="+user;
		
		String cno = request.getParameter("cno");
		
		
		System.out.println(cno);
		
		CartDAO cDao = CartDAO.getInstance();
		
		cDao.Delete(cno);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
