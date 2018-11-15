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
		<c:forEach items="${replyList}" var="replyview">
			<div>
				<table>
					<tr>
					
						<td colspan="2">${replyview.writer} <a href="#" class="reply_del" data_num="${replyview.rno}">삭제</a></td>
						
						<c:if test="${sessionScope.loginUser.id==replyview.writer}">
							
						</c:if>
						
					</tr>
					
					<tr>
						<td id="review_content">${replyview.content}</td>
						<td id="icon" rowspan="2">
							<i class="far fa-thumbs-up" id="good_icon"></i>
							<span> 좋아요</span>
							<div></div>
							<i class="far fa-thumbs-down" id="bad_icon"></i>
							<span> 싫어요</span>
						</td>
					</tr>
					
					<tr><td id="review_date"><fmt:formatDate pattern="yyyy-MM-dd" value="${replyview.regdate}"/></td></tr>				
				</table>
			</div>
		</c:forEach>
		
		
		
	</div>
	
</body>
</html>