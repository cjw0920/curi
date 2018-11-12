<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
 <%@ include file="include/header.jsp" %>
 
 
<% String referer = request.getHeader("referer"); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
@import url('https://fonts.googleapis.com/css?family=Gamja+Flower');
@import url('https://fonts.googleapis.com/css?family=Sunflower:300');
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding');
	
	#indexbody{
		padding-top: 200px;
	}	
	
	body{
		background-color: #f5f6f7;
	}

	a{
		text-decoration: none;
		color:	#777777;
		
	}
	
	table{
		display: block;
	}
	
	td {
		width: 150px;
		height: 35px;
	}
	
	input{
		outline: none;
		border: none;
		width: 200px;
		height: 30px;
		border-bottom: 0.1px solid #ddd;
	}

	
	#login_main{
		border-radius: 10px;
		background-color: white;
		width : 600px;
		height: 400px;
		margin: 0 auto;
		margin-top : 150px;
		margin-bottom : 80px;
		border : 1px solid #dadada;
		position: relative;
	}
	

	
	#login_val{
		width: 350px;
		height: 80px;
		margin-top : 80px;
		margin-left: 130px;
		position: relative;
	}


	#loi{
		display : inline-block;
		position: absolute;
		margin-left: 180px
	}
	
	
	#login_ip{
		width : 370px;
		margin-top : 15px;
		padding-bottom : 15px;
		border-bottom: 1px solid #dadada;
	}
	
	#state{
		font-size: 13px;
		font-family: 'Nanum Gothic Coding', monospace;
	}
	
	#state>input{
		 visibility: hidden; 
		 position: absolute; 
		 right: 1px;
		 width: 15px;
		 height: 15px;
		 margin-top: -11px;
	}
	
	#state > label{
		background: url('img/off.gif') no-repeat;
		padding-left: 30px;
		display: block;
		height : 26px;
		line-height: 26px;
	}
	
	#state >input:checked +label{
		background-image: url('img/on1.png');

	}
	
	#secure{
		text-align: right;
		font-size : 14px;
	}	
	
	#Secret{
		color : #747474;
	}	
	
	#Secret >a{
		color: inherit;	/* 부모의 글자색을 그대로 물려받아 사용 */
	}	
	
	#on_off{
		font-weight: bold;
		width: 22px;
		text-align: left;
		display: inline-block;
	}	
	
	#login_fini{
		display : block;
		padding : 15px;
		text-align: center;
		background-color: #d6ecfa;
		color: black;
		margin-top: 15px;
	}
	
	#login_fini:hover {
		background-color: #87d0ff;
	}
	
	#err_check_msg{
		display: inline-block;
		width: 428px;
		height:24px;
		font-size: 12px;
		font-weight: 700;
		line-height: 24px;
		color: #f46665;
		padding :0 15px;
		text-align: center;
	}
	
	#err{
		margin-left: -50px;
		display: none;
	}
	
	
	#member_search{
		font-size: 13px;
		float: right;
		margin-top: 170px;
		margin-right: 120px;
	}

	#member_search>div{
		float: left;
		margin: 5px;
		padding: 5px;
		border : 1px solid #dadada;
		background-color: white;
	}
	
	#search_id:hover {
		background-color: #e3dede;
	}
	
	#search_pw:hover{
		background-color: #e3dede;
	}
	
	#join:hover{
		background-color: #e3dede;
	}

</style>
<script type="text/javascript">
$(document).ready(function(){
	$("#on_off").click(function(){
		var val = $("#on_off").text();
		
		if(val =="OFF"){
			$("#on_off").text("ON").css("color","#46beff");
		}else{
			$("#on_off").text("OFF").css("color","black");
		}
	});
	
 	/* 로그인버튼을 클릭했을때 유효성 체크 */
 	$("#login_fini").click(function(){
		//input의 id와 pw값을 입력
 		var id = $("#id_fini").val();
		var pw = $("#pw_fini").val();
		
		//유효성체크
		//id와 pw가 하나라도 값이 없으면 경고문 출력
		if(id!=""&pw!=""){
			/* $("#frm_login").submit(); */
			
			
			$.ajax({
				url:"loginPlay.bizpoll",
				type : "POST",
				dataType:"json",
				data : "id="+id+"&pw="+pw,
				success:function(data){
					if(data.message=="1"){
						alert("성공");
						location.href="<%=referer%>";
					}else{
						alert("실패");
						$("#err_check_msg").text("아이디 또는 패스워드가 일치하지않습니다.");
						$("#err").css("display","block")
					}
				},
				error:function(){
					alert("System Error!");
				}
			});
			
			
		}else if(id==""&pw!=""){
			$("#err_check_msg").text("아이디를 입력하세요");
			$("#err").css("display","block")
		}else if(pw==""&id!=""){
			$("#err_check_msg").text("패스워드를 입력하세요");
			$("#err").css("display","block")
		}else{	/* 둘다 값 x 또는 둘 중에 하나라도 값이 x*/
			$("#err_check_msg").text("아이디와 패스워드를 입력하세요");
			$("#err").css("display","block")
			return; /* JAVA로 이동하지 않고 화면단으로 다시 돌아감 */
		}
		
		
		
	}); 

});

</script>
</head>
<body id="indexbody">

<div>
	<div id="login_main">
			
	<div id="login_img">
		<img alt="login" src="img/login.png" id="loi">
	</div>
		<div id="login_val">
		<div>
			<table>
			<tbody>
				<tr>
					<div id="idlogin">
						<td><span>ID</span></td>
						<td><label><input type="text" placeholder="아이디" id="id_fini" name="id_fini"></label></td>
					</div>
				</tr>
				
				<tr>
					<div id="pwlogin">
						<td><span>password</span></td>
						<td><label><input type="password" placeholder="비밀번호" id="pw_fini" name="pw_fini"></label></td>
					</div>
					
				</tr>
				</tbody>
			</table>
		</div>
		
		<div id="login_ip">
		
			<table>
				<tbody>
					<tr>
						<td id="state">
							<input type="checkbox" id="loginck">
							<label for="loginck" class="lable1">
								로그인 상태 유지
							</label>
						</td>
						<td id="secure">
							<span id="Secret">IP보안</span>
							<span id="on_off">OFF</span>
						</td>
					</tr>
				</tbody>
			</table>
			
			<div id=err>
				<div id="err_check">
					<span id="err_check_msg">ID와 PW를 모두 입력해주세요.</span>
				</div>
			</div>
			
			<a href="#" ><div id="login_fini">
				LOGIN
			</div></a>
		</div>
		</div>
		
		<div id="member_search">
			<div id=search_id>
				<a href="#">아이디 찾기</a>
			</div>
			
			<div id=search_pw>
				<a href="#">비밀번호 찾기</a>
<!--  &nbsp; -->		
			</div>
 			
 			<div id=join>
				<a href="constract.jsp">회원가입</a>
			</div>
 
		</div>
	</div>







</div>
</body>
</html>