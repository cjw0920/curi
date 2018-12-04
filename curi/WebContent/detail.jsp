<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	margin-top: 10%;
	margin-left: 24%;
}

input{
	outline: none;
	border: 0px;
}

#indexbody {
	padding-top: 100px;
}


.all {
	border: 1px solid #dadada;
	width: 70%;
}

#img_tle {
	width: 49%;
	float: left;
}

#img_con {
	width: 80%;
	height: 90%;
	margin-top: 5%;
	margin-left: 10%;
}

#item {
	width: 100%;
	height: 100%
}

#detail {
	margin-left: 50%;
	width: 50%;
}

/* table, th, td {
		border: 1px solid #bcbcbc;
	} */
table {
	font-size: 13px;
	width: 400px;
	height: 125px;
	margin-left: 5%;
	margin-right: auto;
}

#table1 {
	margin-top: 8%;
}

#table2 {
	margin-top: 8%;
	margin-bottom: 5%;
}

th {
	width: 100px;
}

hr {
	margin-top: 10px;
	margin-bottom: 10px;
	width: 80%;
}

select {
	width: 192px;
	height: 30px;
}

#price_all {
	margin-top: 10px;
	margin-left: 70%;
}


#finish_btn{
	margin: 9% 0;
	margin-left: 10%;
}

#finish_btn>a{
	text-align: center;
	color: black;
	display : inline-block;
	font-size : 15px;
	line-height: 80px;
	height: 85px;
	border-radius: 100%;
}


#finish_btn span{
	text-align: center;
	top : 5px;
}

#good{
	width: 20%;
	background-color:#FFD8D8;
	margin-top: 2px;
}
#good:hover{
	background-color:#FFB9B9;
}

#soso{
	margin-top: 2px;
	background-color:#EAEAEA;
	width: 20%;
}

#soso:hover{
	background-color:#D8D8D8;
}


#cart {
	margin-top: 2px;
	width: 20%;
	background-color: #FFe6e6;
    
}
#cart:hover {
	background-color: #FFD8D8;
}


#sell {
	margin-top: 2px;
	width: 20%;
	background-color: #D4F4FA;
    
}

#sell:hover{
	background-color: #B2EBF4;
}

#comment_list{
	margin-top: 5%;
	text-align: center;
	margin-bottom: 10%;
}

#comment{
	background-color: #d6ecfa;
	padding: 20px 0;
}

#user_comment{
	text-align: left;
}

#content{
	width: 100%;
}

#user{
	margin: 15px 0;
    margin-left: 10px;
    margin-top: 4px;
}

#user>input{
    margin-left: 10px;
}


#inser_btn{
    margin: 10px 0;
    height: 40px;
    line-height: 35px;
	background-color: #D4F4FA;
	width: 100px;
	text-align: center;
	float: right;
	cursor: pointer;
}
#inser_btn:hover{
	background-color: #B2EBF4;
}

</style>
<script type="text/javascript" src="<%=path%>/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">

$(document).ready(function(){
	$("#cart").click(function(){
		alert("장바구니에 담겼습니다.")
	});
	
});


$(document).on("click","#inser_btn",function(elClickedObj){
	
	
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD",[]);
	
	$("#frm_bin").submit();
});
</script>
</head>
<body id="indexbody">
	<div id="front">
		<div class="all">
	
			<div id="img_tle">
	
				<div id="img_con">
					<img src="img/${productview.p_img}" id="item">
				</div>
	
			</div>
	
			<div id="detail">
	
				<table id="table1">
					<tbody>
						<tr>
							<th>상품명</th>
							<td>${productview.p_name}</td>
						</tr>
	
						<tr class="both"></tr>
	
						<tr>
							<th>가격</th>
							<td><fmt:formatNumber value="${productview.p_price}"/>원</td>
	
						</tr>
						<tr class="both"></tr>
					</tbody>
				</table>
				<hr>
	
	
				<table id="table2">
					<tbody>
						<tr>
							<th>색상</th>
							<td><select>
									<option value="" selected="selected" id="sele1">색상선택</option>
									<option value="gold">골드</option>
									<option value="silver">실버</option>
									<option value="pink">로즈골드</option>
							</select></td>
						</tr>
	
						<tr class="both"></tr>
	
						<tr>
							<th>옵션</th>
							<td><select>
									<option value="" selected="selected" id="sele2">옵션선택</option>
									<option value="short">귀찌</option>
									<option value="long">귀걸이</option>
							</select></td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div id="price_all">
					<div id="price_con">
						<span>total : <fmt:formatNumber value="${productview.p_price}"/></span><span>원</span>
					</div>
				</div>
				
				
				<div id="finish_btn">
					
					<a href="#" id="good"><div><span>찜하기</span></div></a>
					<a href="#" id="soso"><div><span>흠..</span></div></a>
					<a href="#" id="cart"><div><span>장바구니</span></div></a>
					<a href="#" id="sell"><div><span>결제</span></div></a>
				</div>
				
				
				
				
				
			</div>
			
			
		</div>
	</div>
	
	
	
	
	
	<div class="all" id="comment_list">
		<div id="comment">상품평</div>
		<form action="ProductCommentInsertPlay.bizpoll" id="frm_bin" method="post" enctype="multipart/form-data">
			<div id="user_comment">
				<div style="visibility: hidden;"><input id="p_code" name="p_code"  value="${productview.p_code}"></div>
				<div id="user">작성자 :  <input readonly="readonly" id="writer" name="writer" value="${sessionScope.loginUser.id}"></div>
				
				<div>
					<textarea id="content" name="content">${boardview.content}</textarea>
					
				</div>
				<a>
					<div id="inser_btn">
						등록
					</div>
				</a>
			</div>
		</form>
	</div>
	
	
		
		
	
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