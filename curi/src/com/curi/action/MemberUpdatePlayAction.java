package com.curi.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.dao.MemberDAO;
import com.curi.dto.MemberDTO;

public class MemberUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url="index.bizpoll";
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("여기");
		String name = request.getParameter("input_name");
		String id = request.getParameter("input_id");
		String pw = request.getParameter("input_pw");
		String phone = request.getParameter("input_phone");
		String emailid = request.getParameter("email_id");
		String emailurl = request.getParameter("email_url");
		String zipcode = request.getParameter("adr1val");
		String addr1 = request.getParameter("adr2val");
		String addr2 = request.getParameter("adr3val");
		String email = emailid+"@"+emailurl;
		
		System.out.println(id+pw+name+phone+zipcode+addr1+addr2+email);
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(true);
		
		MemberDTO mDto = new MemberDTO(id, pw, name, phone, zipcode, addr1, addr2, email);
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.updateMember(mDto);
		
		
		if(result>0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
		return forward;
		
		
	}
}


