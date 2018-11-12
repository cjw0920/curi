package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.curi.dao.MemberDAO;

public class MemberDeletePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userid = request.getParameter("id");
		String userpw = request.getParameter("pw");
		System.out.println(userid);
		System.out.println(userpw);
		
		MemberDAO mDao = MemberDAO.getInstance();
		String message =mDao.confirmPw(userid, userpw);
		
		if(message.equals("-1")) {
			System.out.println("회원삭제");
			int flag = mDao.deleteMember(userid);
			
			if(flag>0) {
				System.out.println("삭제 성공");
				if(session !=null) {
					//session 초기화 = 로그인 정보 삭제
					session.invalidate();
				}
			}else {
				System.out.println("삭제 실패");
			}
			JSONObject jObj = new JSONObject();
			jObj.put("message", message);
			response.setContentType("application/x-json; charset=UTF=8");
			response.getWriter().print(jObj);
			
		}
		
		
				return null;
	}

}
