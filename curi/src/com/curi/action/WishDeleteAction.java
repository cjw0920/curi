package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.ProductDAO;
import com.curi.dao.WishDAO;
import com.curi.dto.WishDTO;

public class WishDeleteAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user = request.getParameter("user");
		
		String url = "WishListAction.bizpoll?user="+user;
		
		
		String wno = request.getParameter("wno");
		int p_code = Integer.parseInt(request.getParameter("p_code"));
		
		
		System.out.println(wno+","+p_code);
		
		WishDAO wDao = WishDAO.getInstance();
		
		wDao.Delete(wno);
		
		ProductDAO pDao = ProductDAO.getInstance();
		pDao.GoodCntMinus(p_code);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
