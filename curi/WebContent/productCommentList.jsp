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
	<c:choose>
			<c:when test="${empty sessionScope.loginUser}">
			</c:when>
			<c:otherwise>
				<div  id="comment_insert">
					<form action="ProductCommentInsertPlay.bizpoll" id="frm_bin" name="frm_bin" method="post">
						<div id="user_comment">
							<div style="visibility: hidden;"><input id="p_code" name="p_code"></div>
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
						<div id="comment_one">
							<div>
								<div style="padding-left: 2%;height: 170px;padding-top: 5%;">
									<div style="display: none; height: " >
										<input id="comment_content" readonly="readonly" value="${commentList.content}" style="background-color:transparent; display: none;">
									</div>	
									
									<div style="height: 50%;">						
										${commentList.content}
									</div>	
									
									<div id="comment_user">
										${commentList.writer}
										<a href="#" class="reply_del" style="margin-left: 35%;"  data_num="${commentList.rno}">삭제</a>
										<a href="#" class="reply_up"  style="margin-left: 3%;"  data_num="${commentList.rno}">수정</a>			
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