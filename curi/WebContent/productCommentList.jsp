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
<div id="comment">상품평 <span id="total_comment" style="color: darkgray;float: right;margin-right: 1%;padding-top: 1%;" >total : ${list_size}</span></div>
	<c:choose>
			<c:when test="${empty sessionScope.loginUser}">
			</c:when>
			<c:otherwise>
				<div  id="comment_insert">
					<form action="ProductCommentInsertPlay.bizpoll" id="frm_bin" name="frm_bin" method="post">
						<div id="user_comment">	
							<input id="rno" name="rno" style="display: none;">
							<div style="height: 10px"><input id="p_code" name="p_code"></div>
							<div class="user">작성자 :  <input readonly="readonly" id="writer" name="writer" value="${sessionScope.loginUser.id}"></div>
							<div>
								<textarea id="content" name="content"></textarea>
								
								<div id="inser_btn">
								<a>
									등록
								</a>
								</div>
							</div>
						</div>
					</form>
				</div>
			</c:otherwise>
		</c:choose>

				
		<div id="commentListAll">
		
			<div id="comment_list">
				 <c:forEach items="${commentList}" var="commentList">
				 	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
				 	<fmt:formatDate value="${bDto.regdate}" pattern="yyyy-MM-dd" var="regdate2"/>
			 	
				 	
						<div id="comment_one">
							<div style="height: 170px; width: 275px;">
								<div  style="font-size: 13px;float: right;padding-top: 5px;color: darkgray;">									
									<c:choose>
							 			<c:when test="${today2 == regdate2}">
							 				<fmt:formatDate pattern="HH:mm:ss" value="${commentList.regdate}"/>
							 			</c:when>
							 			<c:otherwise>
							 				<fmt:formatDate pattern="yyyy-MM-dd" value="${commentList.regdate}"/>
							 			</c:otherwise>
			 						</c:choose>
								</div>
								<div style="padding-left: 2%;height: 170px;padding-top: 25px;">
									<div style="display: none; height: " >
										<input id="comment_content" readonly="readonly" value="${commentList.content}" style="background-color:transparent; display: none;">
									</div>	
									<div style="height: 40%; width: 275px;">						
										${commentList.content}
									</div>	
									
									<div id="comment_user">
										${commentList.writer}
										<c:if test="${sessionScope.loginUser.id==commentList.writer}">
											<a href="#" class="reply_del" style="margin-left: 35%;"  data_num="${commentList.rno}">삭제</a>
											<a href="#" class="reply_up"  style="margin-left: 3%;"  data_num="${commentList.rno}" data_val="${commentList.content}">수정</a>
										</c:if>				
									</div>
								</div>
							</div>
						</div>
				</c:forEach>
			</div>	
		</div>
<script type="text/javascript" src="<%=path%>/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>		
		<script type="text/javascript">
						var oEditors=[];
						nhn.husky.EZCreator.createInIFrame({
							oAppRef: oEditors,
							elPlaceHolder:"content",
							sSkinURI:"<%=path%>/smarteditor/SmartEditor2Skin.html",
							fCreator:"createSEditor2"
						});
</script>	
</body>
</html>