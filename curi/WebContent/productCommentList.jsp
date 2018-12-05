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

	
		
		 <c:forEach items="${commentList}" var="commentList">
			<div id="comment_list">
				<div id="comment_one">
					<div style="padding-left: 2%;height: 170px;padding-top: 5%;">
						<div style="display: none;">
							<input id="comment_content" readonly="readonly" value="${commentList.content}" style="background-color:transparent; display: none;">
						</div>	
							${commentList.content}
						
						<div id="comment_user" style="margin-top: 20%;">
							${commentList.writer}
							<a href="#" class="reply_del" style="margin-left: 35%;">삭제</a>
							<a href="#" class="reply_up"  style="margin-left: 3%;">수정</a>			
						</div>
					</div>
					<div id="commentList">
						
					</div>
				</div>
			</div>	
		</c:forEach>
		
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