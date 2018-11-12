package com.curi.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.curi.dao.MemberDAO;
import com.curi.dto.MemberDTO;

public class LoginPlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		
		
		String id= request.getParameter("id");
		String pw= request.getParameter("pw");
		System.out.println(id+","+pw);
		
		//dao 클래스에 logincheck()메서드를 활용해 id와 pw값으로 select절에 where 조건검색으로 검색후 결과값(ArrayList)을 가지고 현재 지금 action단으로 돌아오는 코드 작성
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberDTO mDto = mDao.loginCheck(id,pw);
		
		String message = null;
		
		if(mDto != null) {//로그인성공
			//session값에 login된 회원정보 담기
			session.removeAttribute("id");//혹시 모를 기존에 남아있는 값 제거
			//session은 list로 받을수 없음
			session.setAttribute("loginUser", mDto);
			message ="1";
		}else {//로그인 실패
			message ="-1";
		}
		
		JSONObject jObj = new JSONObject();
		jObj.put("message", message);
		response.setContentType("application/x-json; charset=UTF=8");
		response.getWriter().print(jObj);
		
		return null;
		
	}

}
