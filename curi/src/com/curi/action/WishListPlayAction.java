package com.curi.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.BoardDAO;
import com.curi.dao.ProductDAO;
import com.curi.dao.ReplyDAO;
import com.curi.dao.WishDAO;
import com.curi.dto.ProductCommentDTO;
import com.curi.dto.ProductDTO;
import com.curi.dto.ReplyDTO;
import com.curi.dto.WishDTO;

public class WishListPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
			String url = "myPage/wishList.jsp";
		
			String user = request.getParameter("user");
			int p_code = Integer.parseInt(request.getParameter("p_code"));
			String p_name =request.getParameter("p_name");
			
			System.out.println(user+","+p_code+","+p_name);
			
			
			WishDTO wDto = new WishDTO(user, p_name, p_code);
			WishDAO wDao = WishDAO.getInstance();
			
			wDao.Insert(wDto);
			
			ProductDAO pDao = ProductDAO.getInstance();
			pDao.GoodCntPlus(p_code);
			
			
			List<WishDTO> wishList = wDao.WishListALL(user);
			request.setAttribute("wishList", wishList);
			
			ActionForward forward = new ActionForward();
			forward.setPath(url);
			forward.setRedirect(false);
			
			return forward;
	}

}
