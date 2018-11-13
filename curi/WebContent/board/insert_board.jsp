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
		padding-top: 170px;
		background-color: #FCFCFC;
		margin: 50px 27%;
	}
	
	#board{
		width : 1000px;
	}
	
	#board>div{
		margin-bottom: 25px;
	}
	
	#board span{
		    font-size: 17px;
	}
	
	table{
		width : 90%;
		margin-top : 10px;
		border-collapse: collapse;
		border : 1px solid black; 
		text-align: left;
		z-index: 0;
	}
	
	td,th,tr{
		border : 1px solid #dadada;
		padding: 0.5%;
	}
	
	th{
		width: 150px;
   		height: 40px;
	}
	
	input{
		border: 0px;
		outline: none;
		height : 38px;
		font-size: 20px;
		background: none;
	}
	
	a{
		color : black;
	}
	
	#board_content{
		margin : 0;
		padding :0;
	}
	
	#board_cod
	#content_input{
		border: 0px;
		outline: none;
		padding: 0;
	}
	
	
	#add_file{
		float: right;
		margin: 10px 12px;
	}
	
	#board_content i{
		color: #ff922b;
	}
	
	#btn{
		margin-top: 27px;
	    float: right;
	    margin-right: 9.5%;
	}
	
	#exit,#insert{
		border : 0.5px solid #dadada;
		margin: 5px;
		border-radius: 10%;
		width: 50px;
		text-align: center;
		height: 25px;
	}
	
	#exit,#insert,#btn{display: inline-block;}

	#exit:hover{
		background-color: #ffffe0;
	}
	
	#insert:hover{
		background-color: #ffdddd;
	}
	
	textarea {
		width: 900px;
   		height: 470px;
		border: 0px;
		outline: none;		
	}

	.err{
		display: none;
		color: red;
	}
	
	#uploadfile{
		 width: 225px;
   		 font-size: 17px;
	}
	
	.btn-file{
		background-color: #d6ecfa;
		border-radius: 10%;
		font-weight: bold;
	}
	
</style>

<script type="text/javascript" src="<%=path%>/smarteditor/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">

$(document).on("click","#file",function() {
	
	
});

$(document).on("click","#insert",function(elClickedObj){
	
	var title = $("#title").val();
	
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD",[]);
	
	if(title==""){
		$("#title").focus();
		$("#title_err").css("display","inline-block");
		return false;
	}
	$("#frm_bin").submit();
});






//file버튼 눌렀을때 파일 선택창 뜨게 만들기
$(document).on("click",".btn-file",function(){
	$("#uploadfile").click();
});

//만약 값이 바뀌면 새로만든 파일 알려주는 곳을 실질 입력되는 값과 동일시 하게 만드는곳?
$(document).on("change","#uploadfile",function(){
	
	var filesize = this.files[0].name;
	
	if(filesize.length<1){
		$("#file-name").text("선택된 파일 없음");
		$("#close_btn").css("display","none");
	}else{
		$("#file-name").text(filename);
		$("#close_btn").css("display","inline");
	}
	
});

//close버튼 누르면 파일 선택 취소 겸 fafa icon none시키기
$(document).on("click","#close_btn",function(){
	$("#uploadfile").replaceWith($("#uploadfile").clone(true));
	$("#uploadfile").val("");
	$("#file-name").text("선택된 파일 없음");
	$("#close_btn").css("display","none");

});

















</script>

</head>
<body id="indexbody">
	<div id="board">
	
	
		<div>
			<span>게시판</span>
		</div>
		
		<form action="boardInsertPlay.bizpoll" id="frm_bin" method="post" enctype="multipart/form-data">
			<table>
					<tr>
						<th>제목 <span class="err" id="title_err">*</span></th>
						<td colspan="3"><input id="title" name="title" value="${boardview.title}"></td>
					</tr>
					
					<tr>
						<th>작성자</th>
						<td colspan="3"><input readonly="readonly" id="writer" name="writer" value="${sessionScope.loginUser.id}"></td>
					</tr>
					
					<tr>
						<td id="board_content" colspan="4">
								<a id="add_file">
								<input type="file" name="uploadfile" id="uploadfile" style="display : none;">
								<input type="button" class="btn btn-file" value="파일선택">
								<span class="files" id="file-name" style="height:29px;border:none;">선택된 파일 없음</span>
								<i class="fa fa-close" id="close_btn" style="display:none"></i>
								</a>
								<textarea id="content" name="content">${boardview.content}</textarea>
						</td>
					</tr>
			</table>
		</form>
		<div id="btn">
			<a><div id="exit">취소</div></a>
			<a href="#"><div id="insert">확인</div></a>
		</div>
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