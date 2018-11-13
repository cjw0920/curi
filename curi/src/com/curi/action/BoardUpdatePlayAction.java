package com.curi.action;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.common.Constants;
import com.curi.dao.BoardDAO;
import com.curi.dto.BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardUpdatePlayAction implements Action{

	@Override
	public ActionForward excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String url="boardList.bizpoll";
		
		//파일 업로드 처리
		File uploadDir = new File(Constants.UPLOAD_PATH);
		if(!uploadDir.exists()) {//저장할 경로 없으면
			uploadDir.mkdir();	 //생성하세요
		}
		
		//request를 확장시킨 MultipartRequest 생성
		//request는 전부 String 타입
		//파일 <- request로는 전송불가
		//파일<- request 를 향상시킨 MultipartRequest를 사용
		MultipartRequest multi = new MultipartRequest(request,	//request
														Constants.UPLOAD_PATH,	//파일업로드 디렉토리
														Constants.MAX_UPLOAD,	//업로드 최대 용량
														"UTF-8",				//인코딩
														new DefaultFileRenamePolicy());	//파일이름중복정책
		
		String bno = multi.getParameter("bno");
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
		String writer = multi.getParameter("writer");
		String filename = " ";	//공백
		int filesize = 0;
		String postfile = multi.getParameter("post-file-name");
	
		
		//파일 내용 지우는 것
		File file = new File(Constants.UPLOAD_PATH+postfile);
		file.delete();
		
		try {
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String file1 =(String)files.nextElement();	
				filename = multi.getFilesystemName(file1);	//첨부파일의 파일이름
				File f1 = multi.getFile(file1);				//첨부파일의 파일
				
				if(f1 != null) {
					filesize = (int)f1.length();	//파일 사이즈 저장
				}
			
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(filename == null || filename.trim().equals("")) {
			filename = "-";
		}
		
		BoardDAO bDao = BoardDAO.getInstance();
		System.out.println(bno+","+title+", "+ content+", "+writer+","+filename+","+postfile);
		
		int bno1 = Integer.parseInt(bno);
		
		BoardDTO bDto = new BoardDTO(bno1,title, content, writer, filename, filesize);
		
		int result = bDao.boardUpdate(bDto);
		
		if(result>0) {
			System.out.println("등록성공");
		}else{
			System.out.println("실패");
		}
		
		
		
		
		
		ActionForward forward = new ActionForward();
		forward.setPath(url);
		forward.setRedirect(false);
		
		return forward;
	}

}
