<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/include.jsp"%>
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
			<div>등록된 댓글이 없습니다. 첫번째 댓글을 남겨주세요</div>
		</c:if>

		<c:choose>
			<c:when test="${empty sessionScope.loginUser}">

			</c:when>
			<c:otherwise>
				<form action="replyApply.bizpoll" method="post" name="frm_reply"
					id="frm_reply">
					<div id="login_o">
						<table>
							<tr>
								<td id="comm_input"><input id="up_rno" name="up_rno"
									type="hidden"> <input id="re_writer" name="re_writer"
									type="hidden" value="${sessionScope.loginUser.id}"> <input
									type="hidden" id="re_bno" name="re_bno"
									value="${boardview.bno}"> <input id="login_input"
									name="login_input" type="text" name="" size="40"
									placeholder="댓글을 입력해주세요"></td>
								<td>
									<div id="insert_btn">완료</div>
								</td>
							</tr>
						</table>
					</div>
				</form>
			</c:otherwise>
		</c:choose>




		<div id="reply_none">
			<div>
				<div id="comment_list" style="margin-top: 5%;">
					<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2" />
					<fmt:formatDate value="${bDto.regdate}" pattern="yyyy-MM-dd" var="regdate2" />
					<c:forEach items="${replyList}" var="replyview">
						<div id="comment_one">
							<div style="height: 170px; width: 275px;">
								<div
									style="font-size: 13px; float: right; padding-top: 5px; color: darkgray;">
									<c:choose>
										<c:when test="${today2 == regdate2}">
											<fmt:formatDate pattern="HH:mm:ss" value="${replyview.regdate}" />
										</c:when>
										<c:otherwise>
											<fmt:formatDate pattern="yyyy-MM-dd" value="${replyview.regdate}" />
										</c:otherwise>
									</c:choose>
								</div>
								<div style="padding-left: 2%; height: 170px; padding-top: 25px;">
									<div style="display: none; height:">
										<input id="content" name="content" readonly="readonly" value="${replyview.content}" style="background-color: transparent; display: none;">
									</div>
									<div style="height: 40%; width: 275px;"> ${replyview.content}</div>

									<div id="comment_user">
										${replyview.writer}
										<c:if test="${sessionScope.loginUser.id==replyview.writer}">
											<a href="#" class="reply_del" style="margin-left: 35%;" data_num="${replyview.rno}">삭제</a>
											<a href="#" class="reply_up" style="margin-left: 3%;" data_num="${replyview.rno}" data_val="${replyview.content}">수정</a>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>


	</div>

</body>
</html>