package com.curi.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.BoardDAO;
import com.curi.dao.CartDAO;
import com.curi.dao.ProductDAO;
import com.curi.dao.ReplyDAO;
import com.curi.dao.WishDAO;
import com.curi.dto.CartDTO;
import com.curi.dto.ProductCommentDTO;
import com.curi.dto.ProductDTO;
import com.curi.dto.ReplyDTO;
import com.curi.dto.WishDTO;

public class CartInsertPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
			String user = request.getParameter("user");
			int p_code = Integer.parseInt(request.getParameter("p_code"));
			int p_price = Integer.parseInt(request.getParameter("p_price"));
			String p_img =request.getParameter("p_img");
			String color = request.getParameter("color");
			String p_name =request.getParameter("p_name");
			
			System.out.println(p_name);
			
			System.out.println();
			
			
			System.out.println(p_price);

			CartDTO cDto = new CartDTO(user, p_name, color, p_code, p_img, p_price);
			CartDAO cDao = CartDAO.getInstance();
			
			System.out.println(cDto);
			
			cDao.Insert(cDto);
			
			return null;
	}
}
