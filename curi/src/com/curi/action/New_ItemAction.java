package com.curi.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.ProductDAO;
import com.curi.dto.ProductDTO;

public class New_ItemAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = "category/new_tem.jsp";
		
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductDTO> new_BestList = pDao.new_BestView();
		List<ProductDTO> new_List1 = pDao.new_ListView1();
		List<ProductDTO> new_List2 = pDao.new_ListView2();
		List<ProductDTO> new_List3 = pDao.new_ListView3();
		
		request.setAttribute("new_BestList", new_BestList);
		request.setAttribute("new_List1", new_List1);
		request.setAttribute("new_List2", new_List2);
		request.setAttribute("new_List3", new_List3);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
	}

}
