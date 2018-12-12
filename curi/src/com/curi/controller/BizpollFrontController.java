package com.curi.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.curi.action.Action;
import com.curi.action.ActionForward;
import com.curi.action.BoardDeleteAction;
import com.curi.action.BoardDetailAction;
import com.curi.action.BoardInsertAction;
import com.curi.action.BoardInsertPlayAction;
import com.curi.action.BoardListAction;
import com.curi.action.BoardSearchAction;
import com.curi.action.BoardUpdateAction;
import com.curi.action.BoardUpdatePlayAction;
import com.curi.action.BoardViewcntAction;
import com.curi.action.CategoryAction;
import com.curi.action.CommemtDeleteAction;
import com.curi.action.CommemtListAction;
import com.curi.action.CommemtInsertAction;
import com.curi.action.ConstractAction;
import com.curi.action.DownloadAction;
import com.curi.action.IdCheckAction;
import com.curi.action.IndexAction;
import com.curi.action.LoginAction;
import com.curi.action.LoginOutPlayAction;
import com.curi.action.LoginPlayAction;
import com.curi.action.MemberAction;
import com.curi.action.MemberDeletePlayAction;
import com.curi.action.MemberExitAction;
import com.curi.action.MemberPlayAction;
import com.curi.action.MemberPwUpdateAction;
import com.curi.action.MemberUpdateAction;
import com.curi.action.MemberUpdatePlayAction;
import com.curi.action.New_ItemAction;
import com.curi.action.ProductCommentDeletePlayAction;
import com.curi.action.ProductCommentApplyPlayAction;
import com.curi.action.ProductCommentListPlayAction;
import com.curi.action.PwCheckActoin;
import com.curi.action.PwUpdatePlayAction;
import com.curi.action.ReplyDeleteAction;
import com.curi.action.WishInsertPlayAction;
import com.curi.action.WishListAction;
import com.curi.action.ReplyApplyAction;
import com.curi.action.productDetailAction;

/**
 * Servlet implementation class BizpollFrontController
 */
@WebServlet("/BizpollFrontController")
public class BizpollFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BizpollFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//GET, POST둘다 받음
		
		//한글깨짐 방지(post방식): 가장 위에 적기
		
		request.setCharacterEncoding("UTF-8");
		
		Action action = null;  //실제 동작 부분
		ActionForward forward = null;  //forward, sendRedirect 설정

		//uri= /curi/index.bizpoll
		//ctx= /curi
		//command= /index.bizpoll
		//uri - ctx = 내가 원하는 Action경로
		String uri = request.getRequestURI();
		String ctx = request.getContextPath();
		String command = uri.substring(ctx.length());
		
		System.out.println("uri : "+uri);
		System.out.println("ctx : "+ctx);
		System.out.println("페이지 이동    "+command);
		
		//Action 단 이동
		if(command.equals("/index.bizpoll")) {
			action = new IndexAction();	//객체생성
			forward = action.excute(request, response);	//객체사용
			//web에서는 무조건 request, response를 매개변수로 받아야함
		}else if(command.equals("/constract.bizpoll")) {
			action = new ConstractAction();
			forward = action.excute(request, response);
		}else if(command.equals("/member.bizpoll")) {
			action = new MemberAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberplay.bizpoll")) {
			action = new MemberPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/login_main.bizpoll")) {
			action = new LoginAction();
			forward = action.excute(request, response);
		}else if(command.equals("/loginPlay.bizpoll")) {
			action = new LoginPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/loginOut.bizpoll")) {
			action = new LoginOutPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberUpdate.bizpoll")) {
			action = new MemberUpdateAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberUpdatePlay.bizpoll")) {
			action = new MemberUpdatePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/idcheck.bizpoll")) {
			action = new IdCheckAction();
			forward = action.excute(request, response);
		}else if(command.equals("/pwCheck.bizpoll")) {
			action = new PwCheckActoin();
			forward = action.excute(request, response);
		}else if(command.equals("/memberPwUpdate.bizpoll")) {
			action = new MemberPwUpdateAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberpwplay.bizpoll")) {
			action = new PwUpdatePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberExit.bizpoll")) {
			action = new MemberExitAction();
			forward = action.excute(request, response);
		}else if(command.equals("/memberdeleteplay.bizpoll")) {
			action = new MemberDeletePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardList.bizpoll")) {
			action = new BoardListAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardList.bizpoll")) {
			action = new BoardListAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardSearch.bizpoll")) {
			action = new BoardSearchAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardDetail.bizpoll")) {
			action = new BoardDetailAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardViewcnt.bizpoll")) {
			action = new BoardViewcntAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardInsert.bizpoll")) {
			action = new BoardInsertAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardInsertPlay.bizpoll")) {
			action =new BoardInsertPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/download.bizpoll")) {
			action =new DownloadAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardUpdate.bizpoll")) {
			action =new BoardUpdateAction();
			forward = action.excute(request, response);
		}else if(command.equals("/boardUpdatePlay.bizpoll")) {
			action =new BoardUpdatePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/BoardDelete.bizpoll")) {
			action =new BoardDeleteAction();
			forward = action.excute(request, response);
		}else if(command.equals("/commemtlist.bizpoll")) {
			action =new CommemtListAction();
			forward = action.excute(request, response);
		}else if(command.equals("/CommemtInsert.bizpoll")) {
			action =new CommemtInsertAction();
			forward = action.excute(request, response);
		}else if(command.equals("/commemtDelete.bizpoll")) {
			action =new CommemtDeleteAction();
			forward = action.excute(request, response);
		}else if(command.equals("/replyApply.bizpoll")) {
			action =new ReplyApplyAction();
			forward = action.excute(request, response);
		}else if(command.equals("/replydelete.bizpoll")) {
			action =new ReplyDeleteAction();
			forward = action.excute(request, response);
		}else if(command.equals("/productViewcnt.bizpoll")) {
			action =new productDetailAction();
			forward = action.excute(request, response);
		}else if(command.equals("/new_tem.bizpoll")) {
			action =new New_ItemAction();
			forward = action.excute(request, response);
		}else if(command.equals("/category.bizpoll")) {
			action =new CategoryAction();
			forward = action.excute(request, response);
		}else if(command.equals("/ProductCommentApplyPlay.bizpoll")) {
			action =new ProductCommentApplyPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/productcommemtlist.bizpoll")) {
			action =new ProductCommentListPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/ProductCommentDeletePlay.bizpoll")) {
			action =new ProductCommentDeletePlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/wishList.bizpoll")) {
			action =new WishInsertPlayAction();
			forward = action.excute(request, response);
		}else if(command.equals("/WishListAction.bizpoll")) {
			action =new WishListAction();
			forward = action.excute(request, response);
		}
		
		
		
		
		//공통분기작업(페이지이동)
		if(forward !=null) {
			if(forward.isRedirect()) { //true: sendRedirect 방식
				response.sendRedirect(forward.getPath());
			}else {		//false : forward 방식
				//목적지 : index.jsp
				//짐 : bestlist
				//이동수단 : forward
				RequestDispatcher rd = request.getRequestDispatcher(forward.getPath());
				rd.forward(request, response);
			}
			
			
		}
		
		
	}

}
