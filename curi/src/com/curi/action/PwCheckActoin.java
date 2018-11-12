package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.curi.dao.MemberDAO;

public class PwCheckActoin implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("id :"+id);
		System.out.println("pw :"+pw);
		
		
		MemberDAO mDao =  MemberDAO.getInstance();
		String message = mDao.confirmPw(id, pw);
		
		System.out.println("msg : "+message);
		
		JSONObject jObj = new JSONObject();
		jObj.put("message", message);
		
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(jObj);
		
		
		//id값 구하는 방법 2가지
		//1.Controller단에서 Session객체 호출해서 ID값 빼오는 방법
		//2.View단에서 Session에 담겨있는 id값을 pw값과 함께 보내는 방법
		
		
		
		return null;//페이지 이동 안해서 null
	}

}
