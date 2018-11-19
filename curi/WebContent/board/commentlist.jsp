<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
	
	<div id="review">
		
		<span>댓글 수 : ${replyList.size()}</span>
		
		<c:if test="${replyList.size()==0}">
		<div>
			등록된 댓글이 없습니다. 첫번째 댓글을 남겨주세요
		</div>
		</c:if>
		
		<c:choose>
			<c:when test="${empty sessionScope.loginUser}">
				
			</c:when>
			<c:otherwise>
				<form action="replyInsert.bizpoll" method="post" name="frm_reply" id="frm_reply">
					<div id="login_o">
						<table>
							<tr>
								<input id="re_writer" name="re_writer" type="hidden"value="${sessionScope.loginUser.id}">
								<input type="hidden" id="re_bno" name="re_bno" value="${boardview.bno}">
								<td id="comm_input">
									<input id="login_input" name="login_input" type="text" name="" size="40" placeholder="댓글을 입력해주세요">
								</td>
								<td>
									<div id="insert_btn">완료</div>
								</td>
							</tr>
						</table>
					</div>		
				</form>
			</c:otherwise>
		</c:choose>
				
		<c:forEach items="${replyList}" var="replyview">
			<div>
				<table>
					<tr>
						
						<td colspan="2">${replyview.writer} 
							<c:if test="${sessionScope.loginUser.id==replyview.writer}">
								<a href="#" class="reply_del" data_num="${replyview.rno}">삭제</a>
								<a href="#" class="reply_up" data_num="${replyview.rno}">수정</a>
							</c:if>
						</td>
					</tr>
					
					<tr>
						<td id="review_content">
							<input value="${replyview.content}" id="content" name="content" readonly="readonly">
						</td>
						<td id="icon" rowspan="2">
							<div id="ctn">
								<i class="far fa-thumbs-up" id="good_icon"></i>
								<span> 좋아요</span>
								<div id="space"></div>
								<i class="far fa-thumbs-down" id="bad_icon"></i>
								<span> 싫어요</span>
							</div>
								<a><span id="update_btn" class="reply_ok" data_num="${replyview.rno}">확인</span></a>
						</td>
					</tr>
					
					<tr><td id="review_date"><fmt:formatDate pattern="yyyy-MM-dd" value="${replyview.regdate}"/></td></tr>				
				</table>
			</div>
			<input type="hidden" id="rno" name="rno" value="${replyview.rno}">
		</c:forEach>
		
		
		
	</div>
	
</body>
</html>