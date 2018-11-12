package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.MemberDAO;

public class PwUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String url = "";
		
		//현재비번, 새 비번, 새 비번확인
		String pw =request.getParameter("input_pw");
		String id =request.getParameter("idval");
		System.out.println("변경할 id : "+id);
		System.out.println("변경할 pw : "+pw);
		
		
		
		//값을 못받아올시
		//1.getParameter()매개변수가 name값인지 확인
		//2.현재 Action단으로 이동하는지 확인
		//  -console창에 *.bizpoll출력되는지 확인
		//가)안탐 ->화면단가서 form태그에 action속성값, submit등을 확인
		//나)간다 -> 
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result =mDao.updatePw(id,pw);
		
		if(result>0) {
			System.out.println("성공");
			url = "index.bizpoll";
		}else {
			System.out.println("실패");
			url = "memberPw.bizpoll";
		}
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
