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
		margin-right: 20%;
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
		width: 95%;
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
	
	#comment_all{
		margin-top: 5%;
		text-align: center;
		margin-bottom: 4%;
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
	
	.user{
		margin: 15px 0;
	    margin-left: 10px;
	    margin-top: 4px;
	}
	
	.user>input{
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
		margin-bottom: 5%;
	}
	#inser_btn:hover{
		background-color: #B2EBF4;
	}
	
	
	#comment_list>div:nth-child(odd) {
	  	text-align: left;
		height: 170px;
		background-repeat : no-repeat;
		margin: 0 5%;
		width: 300px;
		background-image: url("img/talk/talk1.png");
	}
	
	#comment_list>div:nth-child(even) {
	  	text-align: left;
		height: 170px;
		background-repeat : no-repeat;
		/* //margin: 0 5%; */
		width: 300px;
		background-image: url("img/talk/talk2.png");
		margin-left: 65%;
	}
	
	
	#comment_user{
	    margin-top: 2%;
	}
	
	#comment_content{
	    width: 99%;
	    margin-left: 1%;
	    margin-bottom: 1%;
	    font-size: 15px;
	}

	.reply_del{
		color : #f08282;
		font-weight: bold;
	}
	
	.reply_del:hover{
		color : #ff3232;
	}
	
	.reply_up{
		color : #289aff;
		font-weight: bold;
	}
	
	.reply_up:hover{
		color : #0078ff;
	}
	
	p{
		margin: 0;
	}
	
	#commentListAll{
	    padding-top: 5%;
	}


</style>
<script type="text/javascript" src="<%=path%>/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">

$(document).ready(function(){
	$("#cart").click(function(){
		alert("장바구니에 담겼습니다.")
	});

    
	comment_all();
	
});


function comment_all(){
	$.ajax({
		type:"post",
		url:"productcommemtlist.bizpoll",
		data:"p_code=${productview.p_code}",
		success:function(result){
			 $("#comment_list_all").html(result);	
		}
	});
}


$(document).on("click","#inser_btn",function(elClickedObj) {
	
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD",[]);
	var content = $("#content").val();
	if(content=="<p><br></p>"){
		alert("내용을 입력해주세요");
		oEditors.getById["content"].exec("FOCUS"); //포커싱
		return false;
	}
	var p_code = ${productview.p_code};
	$("#p_code").val(p_code);
	
	$.ajax({
		url : "ProductCommentApplyPlay.bizpoll",
		data:$("#frm_bin").serialize(),
		contentType:'application/x-www-form-urlencoded; charset=UTF-8',
		success:function(){
			comment_all();
			$("content").val("");
		}
	});
});


$(document).on("click",".reply_up",function() {
	var rno = $(this).attr("data_num");
	var content = $(this).attr("data_val");
	$("#commentListAll").css("display","none");
	
	var rno1 = $("#rno").val(rno);
	
	oEditors.getById["content"].exec("PASTE_HTML", [content]);
	oEditors.getById["content"].exec("FOCUS"); //포커싱
	return false;
});


$(document).on("click",".reply_del",function() {
	var rno = $(this).attr("data_num");
	alert(rno);
	var p_code = ${productview.p_code};
	
	$.ajax({
		type:"post",
		url:"ProductCommentDeletePlay.bizpoll",
		data:"rno="+rno+"&p_code="+p_code,
		success:function(result){
			comment_all();	
		}
	});
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
	
	
	
	
	
	<div class="all" id="comment_all">
		
	
	
		
		<div id="comment_list_all"></div>
	</div>
	
					
						
</body>
</html>