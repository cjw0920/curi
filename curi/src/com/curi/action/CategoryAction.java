package com.curi.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.ProductDAO;
import com.curi.dto.ProductDTO;

public class CategoryAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String keyword = request.getParameter("keyword");
		
		System.out.println(keyword);
		
		
		String url = "category/"+keyword+"_tem.jsp";
		
		ProductDAO pDao = ProductDAO.getInstance();
		List<ProductDTO> BestList = pDao.BestView(keyword);
		List<ProductDTO> List1 = pDao.ListView1(keyword);
		List<ProductDTO> List2 = pDao.ListView2(keyword);
		List<ProductDTO> List3 = pDao.ListView3(keyword);
		
		request.setAttribute("BestList", BestList);
		request.setAttribute("List1", List1);
		request.setAttribute("List2", List2);
		request.setAttribute("List3", List3);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		return forward;
		
	}
}
