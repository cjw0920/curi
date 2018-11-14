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
		String nowFileName = multi.getParameter("now-file-name");
		String nFileSize = multi.getParameter("now-file-size");

		int nowFileSize =0;
		if(!nFileSize.equals("")) {
			nowFileSize = Integer.parseInt(nFileSize);
		}

		BoardDAO bDao = BoardDAO.getInstance();
		BoardDTO bDto = bDao.boardDetailView(bno);
		String pfilename = bDto.getFilename();
		String pfilesize = String.valueOf(bDto.getFilesize());
		System.out.println("과거 : "+pfilename+","+pfilesize);
		System.out.println("현재 : "+nowFileName+","+nowFileSize);
		
		int flag = 0;
		if(nowFileName.equals(pfilename)&&nowFileSize==0) {
			//파일이름이 같으면서 사이즈가 같거나 또는 사이즈가 0이면 파일 지우지 않음, filename과 filesize도 수정하면 안됨
			flag=1;
		}else {
			//파일 내용 지우는 것
			File file = new File(Constants.UPLOAD_PATH+pfilename);
			file.delete();
		}
		
		
		try {
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String file1 =(String)files.nextElement();	
				//multi.getOriginalFileName(filename);// 오리지널 파일네임
				filename = multi.getFilesystemName(file1);	//파일네임 가지고 오나 중복이면 중복정책
				System.out.println("저장된 첨부파일 : "+filename); 
				
				if(nowFileSize!=0) {
					String result  = filename.substring(nowFileName.length());
					System.out.println("TEST : "+nowFileName+","+filename+","+result);
					
					//파일명을 현재 파일명으로 수정!
					if(result.length()>0) {
						File file=new File(Constants.UPLOAD_PATH+filename);
						File fileNew = new File(Constants.UPLOAD_PATH+nowFileName);
						file.renameTo(fileNew);//aaa1->aaa
						
						//DB에 넣을 정보
						filename = nowFileName;
						filesize = nowFileSize;
					}
				}
				
				
				File f1 = multi.getFile(file1);				//첨부파일의 파일
				
				if(f1 != null) {
					filesize = (int)f1.length();	//파일 사이즈 저장
				}
			
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(filename == null || filename.trim().equals("")) {
			filename = "no";
		}
		
		
		int bno1 = Integer.parseInt(bno);
		
		bDto = new BoardDTO(bno1,title, content, writer, filename, filesize);
		
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
