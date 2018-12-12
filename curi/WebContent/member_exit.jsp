<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
 <%@ include file="include/header.jsp" %>
    
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
		margin-left: 180px;
		margin-top: 20px;
		margin-bottom: 50px;
	}
	
	
	#login_ip{
		width : 370px;
		margin-top : 15px;
		padding-bottom : 15px;
		border-bottom: 1px solid #dadada;
	}
	
	#pwlogin{
		margin-top: 50px;
	}
	
	#all_exit{
		position : fixed;
		margin-top: 20px;
	}
	
	#exit_false{
		width : 100px;
		display : block;
		padding : 15px;
		text-align: center;
		background-color: #d6ecfa;
		color: black;
		margin-top: 15px;
	}
	
	#exit_false:hover{
		background-color: #87d0ff;
	}

	#exit_ture{
		width : 100px;
		display : block;
		padding : 15px;
		text-align: center;
		background-color: #87d0ff;
		color: black;
		margin-top: 15px;
		font-weight: bold;
	}
	
	#exit_ture:hover{
		background-color: #87d0ff;
	}
	
	#all_exit>a{
		
		float: left;
		margin-right: 20px;
		margin-left: 20px;
	}
	#err{
		margin-left :90px;
		color: red;
		font-size: 13px;
		visibility: hidden;
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
	
	
	
</style>
<script type="text/javascript">

$(document).on("click","#exit_ture",function(){
 	var mpw = $("#pw_fini");

	
	var pw = $.trim(mpw.val());

	if(pw==""){
		mpw.focus();
		$("#err").css("visibility","visible");
		return false;
	}else{
		$("#err").css("visibility","hidden");
	}	
 	
}); 

$(document).on("click","#yes_btn",function(){
	
	var nowPw=$("#pw_fini").val();
	
	$.ajax({
		url:"memberdeleteplay.bizpoll",
		type : "POST",
		dataType:"json",
		data : "id=${sessionScope.loginUser.id}&pw="+nowPw,
		success:function(data){
			if(data.message=="-1"){
				location.href="index.bizpoll";
			}else{
				$("#popup").css("display","none");
				$("#pw_fini").select();
			}
		},
		error:function(){
			$("#err").text("정확한 비밀번호를 입력하세요").css("visibility","visible");
		}
	});
});


</script>
</head>
<body id="indexbody">

<div>
	<div id="login_main">
			
	<div id="login_img">
		<img alt="exit" src="img/exit.jpg" id="loi">
	</div>
		<div id="login_val">
		<div>
			<table>
			<tbody>
			
				<tr>
					<div id="exit">
						<span>
							<br>
							회원탈퇴를 해도 90일 동안 정보가 보관됩니다. 
							<br><br>
							작성된 게시물은 익명처리됩니다.
						</span>
					</div>
				</tr>
				
				<tr>
					<div id="pwlogin">
						<td><span>비밀번호</span></td>
						<td><label><input type="password" placeholder="비밀번호" id="pw_fini" name="pw_fini"></label></td>
					</div>
				</tr>
				
				</tbody>
			</table>
		</div>
		
			<span id="err">비밀번호를 입력하세요.</span>
			
			<div id="all_exit">
				<a>
					<div id="exit_false">
						취소
					</div>
				</a>
				
				<a href="#login_form" >
					<div id="exit_ture">
						확인
					</div>
				</a>
			</div>
			
	</div>
</div>


		<!-- 모달창 탈퇴 재확인 -->
        <a class="overlay" id="login_form"></a>
        <div class="popup">
            <h2>정말 탈퇴하시겠습니까?</h2>
            <a href="#close" id="yes_btn">
	            <input type="button" value="네">
            </a>
            <a href="index.bizpoll">
           		 <input type="button" value="아니요" />
			</a>
            <a class="close" href="#close"></a>
        </div>


</div>
</body>
</html>