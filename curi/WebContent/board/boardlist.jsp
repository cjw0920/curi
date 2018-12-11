<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
	
	
	#indexbody{
		padding-top: 200px;
		background-color: #FCFCFC;
	}
	a{
		text-decoration: none;
		color: black;
	}
	
	table{
		
		margin-top : 10px;
		border-collapse: collapse;
		border : 1px solid black; 
	}
	
	td,th,tr{
		border : 1px solid #dadada;
		/* padding : 0 40px; */
		text-align: center;
	}
	
	th{
		background-color: #87d0ff;
		color : black;
	}
	
	td{
		padding: 13px 0;
	}
	
	#board_name{
		font-size: 20px;
		font-weight: bold;
		padding-top: 50px;
		padding-bottom: 30px;
	}
	
	#all>div{
		margin : 0 30%;
	}
	
	#number{
		width : 70px;
	}
	
	#title{
		width : 300px;
	}
	
	#writer{
		width : 120px;
	}
	
	#wdate{
		width : 100px;
	}
	
	#title_con{
		text-align: left;
	}
	
	#insert_board{
		color : black;
		width :80px;
		height : 25px;
		text-align : center;
		float : right;
		background-color: white;
		border : 1px solid black;
	}
	
	#insert_board:hover {
		border : #87d0ff;
		background-color: #87d0ff;
		font-weight: bold;
	}
	
	#today_time{
		background-color : yellow;
		border-radius: 10px;
		font-size: 13px;
		color : red;
	}
	
	
	
	#search{
		width : 500px;
		text-align: center;
		vertical-align: top;
		margin: 20px auto;
    	margin-left: 30%;
	}
	
	#search>div{
		display : inline-block;
		float: left;
	}
	
	#search>div>input{
		margin: 0px;
	}
	
	#search_select,#search_input,#search_btn{
		
		display: inline-block;
	}
	
	#search_select{
		float: left;
		height: 28px;
	}
	
 	#page_num{
 		margin : 0 auto;
		text-align: center;
		box-sizing: inherit;
	}
	
	#page_num>a{
		margin : 0 10px;
		padding: 0 10px;
		background-color:white;
		border: 1px solid #dadada;
	}
	
	#page_num>a:hover{
		background-color: #dadada;
		border: 1px solid #dadada;
	}
	
	
	#page_num>ul {  
	    float:right;  
	    display:inline;  
		margin-right: 30%;   		
	}  
	#page_num>ul li {  
	    float:left;  
	}  
	#page_num>ul li a {  
	    float:left;  
	    padding:4px;  
	    margin-right:3px;  
	    width:20px;  
	    color:#000;  
	    font:bold 12px tahoma;  
	    border:1px solid #eee;  
	    text-align:center;  
	    text-decoration:none;  
	}  
	#page_num>ul li a:hover, #page_num>ul li a:focus {  
	    color:#fff;  
	    border:1px solid #f40;  
	    background-color:#f40;  
	}
	
	#search_input{
		height: 22px;
	}
	
	#search_btn{
		height: 28px;
	}
	
	#total_cnt{
		text-align: right;
		color: #c0c0c0;
	}
	
	#replycnt{
		color: orange;
	}
	
</style>

<script type="text/javascript">

$(document).on("click","#search_btn",function() {
	
		var flag = $("#search_select").val();
		var keyword = $("#search_input").val();
		
		alert(keyword);
		
		location.href="boardList.bizpoll?flag="+flag+"&keyword="+keyword;
		
	});
	


</script>

</head>
<body id="indexbody">

	<div id="all">
	
		 <div id="board_name">
			 <span>게시판</span>
		 </div>
		 
		 <div>
		 	<a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=new" id="orderNew">최신순</a>
		 	<a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=good" id="orderGood">추천순</a>
		 	<a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=cnt" id="ordercnt">조회순</a>
		 	<a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=reply" id="orderReply">댓글순</a>
		 	<a href="boardInsert.bizpoll"><div id="insert_board">글쓰기</div></a>
		 </div>
		
		 <div>
			 <table>
			 	<tr>
			 		<th id="number">No.</th>
			 		<th id="title">제목</th>
			 		<th id="writer">작성자</th>
			 		<th id="wdate">작성일</th>
			 		<th id="wdate">좋아요수</th>
			 		<th id="wdate">조회수</th>
			 		<th id="wdate">첨부파일</th>
			 		
			 	</tr>
			 <c:forEach items="${boardlist}" var="bDto">
			 	
			 	<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
			 	<fmt:formatDate value="${bDto.regdate}" pattern="yyyy-MM-dd" var="regdate2"/>
			 	
			 	<tr>
			 		<td>${bDto.bno}</td>
			 		<td id="title_con">			 		
			 			<a href="boardViewcnt.bizpoll?bno=${bDto.bno}">${bDto.title}</a><span id="replycnt">[${bDto.replycnt}]</span>
			 			<c:if test="${today2==regdate2}"><span id="today_time">New</span></c:if>
			 		</td>
			 		<td>${bDto.writer}</td>
			 		<td>
			 		
			 		
			 		<c:choose>
			 			<c:when test="${today2 == regdate2}">
			 				<fmt:formatDate pattern="HH:mm:ss" value="${bDto.regdate}"/>
			 			</c:when>
			 			<c:otherwise>
			 				<fmt:formatDate pattern="yyyy-MM-dd" value="${bDto.regdate}"/>
			 			</c:otherwise>
			 			
			 		</c:choose>
			 		
			 		
			 		</td>
			 		
			 		<td>${bDto.goodcnt}</td>
			 		
			 		<td>${bDto.viewcnt}</td>
			 		<td>
			 		
			 		<c:if test="${bDto.filesize>0}">
			 		<a  href="download.bizpoll?file=${bDto.filename}"><i class="fas fa-paperclip" id="fafa"></i></a></c:if></td>
			 	</tr>
			 </c:forEach>
			 	
			 </table>
			 
			 <div id = "total_cnt">
			 	total : ${pageMaker.totalCount}
			 	
			 	
			 </div>
			 
		 </div>
		 
		
		 
		 
		 
	</div>
	
	
	 <div id="search">
			 <div id="search_select_box">
			 	<select id="search_select">
			 		<option selected="selected">----</option>
			 		<option value="1">제목</option>
			 		<option value="2">작성자</option>
			 		<option value="3">내용</option>
			 		<option value="4">제목 & 내용</option>
			 	</select>
			 </div>
			 <div>
			 	<input placeholder="검색할 값을 입력하세요" id="search_input">
			 </div>
			 <div>
			 	<button id="search_btn">검색</button>
			 </div>
		 </div>
	
	
	
	
		<div id="page_num">
		 
		 	<ul>
		 		<c:if test="${pageMaker.prev}">
		 			<li class="page-item">
		 				<a class="this" href="boardList.bizpoll?page=${pageMaker.startPage-1}">&laquo;</a>
		 			</li>
		 		</c:if>
		 		
		 		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
		 			<li
		 				<c:out value="${pageMaker.criDto.page==idx ? 'class==pagecolor':''}"/>>
		 				<a class="this" href="boardList.bizpoll?page=${idx}&flag=${flag}&keyword=${keyword}">${idx}</a>
		 			</li>
		 		</c:forEach>
		 		
		 		<c:if test="${pageMaker.next}">
		 			<li class="page-item">
		 				<a class="this" href="boardList.bizpoll?page=${pageMaker.endPage+1}">&raquo;</a>
		 			</li>
		 		</c:if>
		 		
		 		
		 	</ul>
		 
		 </div>
</body>
</html>