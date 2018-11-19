<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<style type="text/css">
	#indexbody{
		padding-top: 200px;
		background-color: #FCFCFC;
		margin: 100px 27%;
	}
	
	#board, #review{
		width : 1000px;
	}
	
	#review{
		margin-top: 50px;
	}
	
	table{
		width : 100%;
		margin-top : 10px;
		border-collapse: collapse;
		border : 1px solid black; 
		text-align: left;
		background-color: white;
	}
	
	td,th,tr{
		border : 1px solid #dadada;
		padding: 0.5%;
	}
	
	th{
		width:  200px;
	}
	
	a{
		color: black;
	}
	

	
	
	#board_content{
		padding: 2%; 
	}
	
	#update_or_delete_listback{
		text-align: center;
		display: inline-block;
		float: right;
		
	}
	
	#update_or_delete_listback div{
		display: inline-block;
	}
	
	#update,#delete,#list_back{
		margin: 5px;
		border-radius: 10%;
		width: 50px;
		text-align: center;
		height: 25px;
	}
	#update{
		background-color: #ffffe0;
		border : 0.5px solid #ffffe0;
	}
	#delete{
		background-color: #ffdddd;
		border : 0.5px solid #ffdddd;
	}
	
	#list_back{
		background-color: #ddffdd;
		width: 70px;
	}
	
	#update:hover{
		background-color: #eeeecc;
	}
	
	#delete:hover{
		background-color: #eecccc;
	}
	
	#list_back:hover{
		background-color: #ddffdd;
	}
	#good_content{
		background-color: #dadada;
  		padding: 0 55%;
  		padding-top : 30px; 
  		padding-bottom : 50px;
		border-radius:10px;
		margin-top: 66px;
		margin-bottom: 30px;
		display : inline-block;
		height: 10px;
		color: red;
	}
	
	#good_content>i{
		font-size: 40px;
	}
	#login_x{
		background-color: #dadada;
		text-align: center;
		height: 56px;
  		padding-top: 24px;
		border-radius:10px;
		margin-top: 5px;
	}
	
	#login_o tr{
		height: 80px;
		
	}
	
	#login_o td{
		padding: 0;
	}
	
	#login_input,#content_input{
		width : 905px;
		height: 80px;
		border: 0px;
		outline: none;
		padding: 0;
	}
	
	#login_input{
		padding: 2%; 
	}
	
	
	#insert_btn{
		width: 85px;
		height : 91px;
		background-color: #dadada;
		margin: 0;
		padding: 62% 0% 70% 47%;
		box-sizing: border-box;
	}
	
	#icon{
		width: 100px;
	}
	
	#good_icon{
		color : red;
	}
	
	#icon>div{
		height: 10px;
	}
	
	#bad_icon{
		color : blue;
	}
	
	#review_date{
		text-align: right;
	}
	
	#add_file{
		float: right;
	}
	#board_content i{
		color: #ff922b;
	}
	
	
	
	/* 모달 관련 부분 */
	
	 a#login_pop{
	    border: 2px solid #aaa;
	    color: #fff;
	    display: block;
	    float: left;
	    margin-left: 10px;
	    padding: 5px 10px;
	    text-decoration: none;
	    text-shadow: 1px 1px #000;
	    border-radius: 10px;
	}
	
	a#login_pop:hover{
	    border-color: #eee;
	}
	
	.overlay {
	    background-color: rgba(0, 0, 0, 0.6);
	    bottom: 0;
	    cursor: default;
	    left: 0;
	    opacity: 0;
	    position: fixed;
	    right: 0;
	    top: 0;
	    visibility: hidden;
	    z-index: 1;
	}
	
	.overlay:target {
	    visibility: visible;
	    opacity: 1;
	}
	
	.popup {
	    background-color: #fff;
	    border: 3px solid #fff;
	    display: inline-block;
	    left: 50%;
	    opacity: 0;
	    padding: 15px;
	    position: fixed;
	    text-align: justify;
	    top: 40%;
	    visibility: hidden;
	    z-index: 10;
	
		/* 위치 */
	    transform: translate(-50%, -50%);
	
		/* 모양 둥글둥글 */
	    border-radius: 10px;
	
		/* 줄? */
	    box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset; 
	
		/* 애니매이션 효과 */
	    transition: opacity .5s, top .5s;  
	}
	
	 .overlay:target+.popup {
	    top: 50%;
	    opacity: 1;
	    visibility: visible;
	} 
	
	
	
	.close {
	    background-color: rgba(0, 0, 0, 0.8);
	    height: 30px;
	    line-height: 30px;
	    position: absolute;
	    right: 0;
	    text-align: center;
	    text-decoration: none;
	    top: -15px;
	    width: 30px;
		
		/* x버튼 둥글둥글 모양 지정 */
	    border-radius: 15px;
	}
	
	.close:before {
	    color: rgba(255, 255, 255, 0.9);
	    content: "X";
	    font-size: 24px;
	    text-shadow: 0 -1px rgba(0, 0, 0, 0.9);
	}
	
	.close:hover {
	    background-color: rgba(64, 128, 128, 0.8);
	}
	.popup p, .popup div {
	    margin-bottom: 10px;
	}
	.popup label {
	    display: inline-block;
	    text-align: left;
	    width: 120px;
	}
	
	.popup>div	{
		display: inline-block;
	}
	
	.delete_btn{
		text-align: center;
	}
	
	.delete_btn>input{
		width: 60px;
	}
	
	#delete_yes{
		margin-left: 25%;
	}
	
	.reply_del{
		color : red;
	}
	
	.reply_up{
		color : blue;
	}
	
	#review_content{
		outline: none;
		border: 0;
	}
	
</style>

<script type="text/javascript">
$(document).ready(function(){
	
	//준비되면 댓글목록을 조회하는 ajax실행
	comment_list();
	
	
});

function comment_list(){
	$.ajax({
		type:"post",
		url:"commemtlist.bizpoll",
		data:"bno=${boardview.bno}",
		success:function(result){
			$("#commentList").html(result);			
		}
	});
}

$(document).on("click",".reply_del",function() {
	var rno = $(this).attr("data_num");
	$.ajax({
		type:"post",
		url:"commemtDelete.bizpoll",
		data:"rno="+rno,
		success:function(result){
			comment_list();	
		}
	});
});



$(document).on("click","#insert_btn",function() {
	var content = $("#login_input").val();
	alert(content);
	if(content==""){
		$("#login_input").focus();
		$("#login_o td").css("border","1px solid red");
		return false;
	}else{
		var bno = ${boardview.bno};
		$("#re_bno").val(bno);
	}
	$.ajax({
		url : "replyInsert.bizpoll",
		data:$("#frm_reply").serialize(),
		contentType:'application/x-www-form-urlencoded; charset=UTF-8',
		success:function(){
			comment_list();
			$("#login_input").val("");
		},
		error:function(){
			alert("system error!");
		}
	});
	

});


</script>



</head>
<body id="indexbody">
	<div id="board">
	
		<span>게시판</span>
		
		<table>
			<tr>
				<th colspan="1">게시판 번호</th>
				<td id="content_num" colspan="3">
					<span id="content_num">${boardview.bno}번째 글</span>
				</td>
			</tr>
			
			<tr>
				<th>제목</th>
				<td colspan="3">${boardview.title}</td>
			</tr>
			
			<tr>
				<th>작성자</th>
				<td colspan="3">${boardview.writer}</td>
			</tr>
			
			<tr>
				<th>작성일</th>
				<td><fmt:formatDate pattern="yyyy-MM-dd" value="${boardview.regdate}"/></td>
				
				<th>조회수</th>
				<td><span>${boardview.viewcnt}</span></td>
			</tr>
			
			<tr>
				<td id="board_content" colspan="4">
					<c:if test="${boardview.filesize>0}">
					
						<a  href="download.bizpoll?file=${boardview.filename}" id="file"><div id="add_file">${boardview.filename} 
						<fmt:formatNumber pattern="0.0" value="${(boardview.filesize/1024)}"/>KB
						<i class="fas fa-angle-down"></i></div></a>					
					</c:if>
					<span id="content_input">${boardview.content}</span>
				</td>
			</tr>
		</table>
		<div id="update_or_delete_listback">
		
			<c:if test="${sessionScope.loginUser.id == boardview.writer}">
				<a href="boardUpdate.bizpoll?bno=${boardview.bno}"><div id="update" class="btn">수정</div></a>
				<a href="#login_form"><div id="delete"  class="btn">삭제</div></a>
			</c:if>
			
			<a><div id="list_back"  class="btn">목록보기</div></a>
		</div>
	</div>
	
	<div>
			<div id="good_content">
				<i class="fas fa-heart"></i>
			</div>
	</div>
	
	<div id="review">
		
		<c:choose>
			<c:when test="${empty sessionScope.loginUser}">
				<div id="login_x">
					<span>로그인 후 댓글을 달수 있습니다.</span>
				</div>
			</c:when>
		</c:choose>
		
		<c:if test="${replyList.size()==0}">
		<div>
			등록된 댓글이 없습니다. 첫번째 댓글을 남겨주세요
		</div>
		</c:if>
		<c:forEach items="${replyList}" var="replyview">
			<div>
				<table>
					<tr>
					
						<td colspan="2">${replyview.writer}</td>
						
						<c:if test="${sessionScope.loginUser.id==replyview.writer}">
							<a href="#" class="reply_del" data_num="${replyview.rno}">삭제</a>
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
		
	<div id="reply_wrap">
	
			
	
		<div id="commentList">
		
		</div>
	</div>	
		
	</div>
	
	<a class="overlay" id="login_form"></a>
        <div class="popup">
            <h2>정말 삭제하시겠습니까?</h2>
            <a href="BoardDelete.bizpoll?bno=${boardview.bno}" class="delete_btn" id="delete_yes">
	            <input type="button" value="네">
            </a>
            <a href="#" class="delete_btn">
           		 <input type="button" value="아니요" />
			</a>
            <a class="close" href="#close"></a>
        </div>
	
	
	
</body>
</html>