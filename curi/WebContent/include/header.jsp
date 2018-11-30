<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="include.jsp" %>
<% String path = request.getContextPath(); //컨텍스트 경로%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Curi</title>
<style type="text/css">


@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
@import url(http://fonts.googleapis.com/earlyaccess/hanna.css);

	#header_wrab{
		box-sizing: border-box;
		position: fixed;
		top : 0px;
		left : 0px;
		width: 100%;
		background-color: white;
	}

	#header_line1, #header_line3_ul>li>a{
		font-family: 'Jeju Gothic', serif;
	}

	#header_line3{
		font-family: 'hanna', serif;
	}

  	#header_line3_ul>li>a{
		font-family: 'Jeju Gothic', serif;
	}  
	
	body,ul{
		margin:0px;
		padding:0px;
	}
	
	ul{
		list-style-type:none;		
	}
	
	a{
		text-decoration:none;
	}
	
	#header_wrap{
		box-sizing:border-box;
	}
	
	/* header(로그인, 마이페이지 등등) */
	#header_line1{
		height:30px;
		width:100%;
		background-color : #87d0ff;
		box-sizing:border-box;
		box-shadow:0 4px 8px 0 rgba(0,0,0,0.2),
				   0 6px 20px 0 rgba(0,0,0,0.19);
		
	}
	
	#header_line1_in{
		width:80%;
		margin:0 auto;
	}
	
	#header_line1_ul{
		float:right;
	}
	
	#header_line1_ul>li>a{
		color:black;
		font-size:12px;
		height:30px;
		padding:0 10px;		
		display:inline-block;
		line-height:30px;
	}
	
	#header_line1_ul>li{
		float:left;
		height:30px;
		position: relative;
	}
	
	#header_line1_ul>li:hover{/* li태그에 마우스를 올렸을때 동작 */
		background-color:#3cc2ff;
	}
	
	#header_line1_ul>li:hover #header_line1_dropdown{
		/* header_line1_ul>li:hover 했을 때
		#header_line1_dropdown을 어떻게 변경할 지 적용 */
		display:block;
	}
	
	#header_line1_dropdown{
		box-shadow:0 4px 10px 0 rgba(0,0,0,0.2),
				   0 4px 20px 0 rgba(0,0,0,0.19);
				   
		display:none;	/* 아예 존재 자체가 없는것 */
		position:absolute;
		z-index: 1;
	
	}	
	
	#header_line1_dropdown > a{
		display:block;
		font-size:12px;
		background-color: #87d0ff;
		color:white;
		padding : 5px 10px;
		border-bottom:1px solid white;
		width:82px;
	}
	
	#header_line1_dropdown > a:hover{
		background-color:#3cc2ff;
		text-decoration: underline;
	}
	
	#header_line1_mypage{
		width:82px;
		text-align:center;
	}
	
	/* 이미지 , 검색창 */
	#header_line2{
		width:70%;
		height:80px;
		margin:15px auto;
		padding:0;
		box-sizing:border-box;
		margin-bottom: 20px;
		
	}
	
	/* 로고 이미지 */
	#header_line2 img{
	
		width:170px;
		height:90px;
		display:inline-block;
		margin-top:0px;
	}
	
	/* line2 검색창 */
	#header_line2_wrap_search{
		height:34px;
		display: inline-block;
		float: right;
		padding-top: 22px;
	}
	
	#header_line2_search{
		position:relative;
		border:2px solid #87d0ff;
		height: 34px;
		box-sizing: border-box;
	}
	
	input#search_keyword{
		width: 353px;
		height: 30px;
		font-size: 13px;
		box-sizing: border-box;
		border: 0px;
		padding-left: 10px;
	}
	
	input#search_btn{
		position :absolute;
		width: 55px;
		height: 30px;
		background: #87d0ff;
		color:white;
		font-size: 13px;
		border: 0px;
		right: 0px;
		top: 0px
	}

	/* 네비게이션 메뉴바 */
	#header_line3{
		width:100%;
		height:49px;
		background-color:#d6ecfa;
		box-shadow:0 4px 10px 0 rgba(0,0,0,0.2),
				   0 4px 20px 0 rgba(0,0,0,0.19);
		box-sizing: border-box;	/* 크기고정 */
		
	}
	
	#header_line3_ul{
		margin-left: 15%;
	}
	
	#header_line3_ul>li{
	position : relative;
	float:left;
	box-sizing: border-box;
	height:49px;
	
	}
	
 	#header_line3_ul>li:hover{
		background-color : white;
		border-top:5px solid #87d0ff;

	} 
	
	#header_line3_ul>li>a{
		width:107px;
		color:black;
		line-height:49px;
		font-size:15px;
		padding:0px 13px;
		display:inline-block;
		text-align:center;
	}
	
	#header_line3_in{
		width:70%;
		margin:0 auto;
	}
	
	#sale_val{
		position: absolute;
		background-color: #d6ecfa;
		display: none;
	}
	
	#sale_val>ul>li>a{
		color: black;
		width:133px;
		display: inline-block;
		text-align: center;
		padding: 5px 0px;
	}
	
	#sale_val>ul>li>a:hover{
		background: #87d0ff;
		
	}
	
	#header_line3_ul>li:hover #sale_val{
		display: block;
		top:44px;
	}
	
	#earring{
		position: absolute;
		display: none;
		
	}
	
	#earring>a{
		background-color: #d6ecfa;
		display:block;
		color:black;
		width: 133px;
		text-align: center;
		padding: 5px 0px;
	}

	#earring>a:hover{
		background-color: #87d0ff;
	}

	#header_line3_ul>li:hover #earring{
		display: block;
		top:44px;
	}
	
	#neck{
		position: absolute;
		display: none;
		
	}
	
	#neck>a{
		background-color: #d6ecfa;
		display:block;
		color:black;
		width: 133px;
		text-align: center;
		padding: 5px 0px;
	}

	#neck>a:hover{
		background-color: #87d0ff;
	}

	#header_line3_ul>li:hover #neck{
		display: block;
		top:44px;
	}
	
	#ring{
		position: absolute;
		display: none;
	}

	#ring>a{
		background-color: #d6ecfa;
		display: block;
		color: black;
		width: 133px;
		text-align: center;
		padding: 5px 0px;
	}

	#ring>a:hover{
		background-color: #87d0ff;
	}
	
	#header_line3_ul>li:hover #ring{
		display: block;
		top:44px;
	}

	#bracelet{
		position: absolute;
		display: none;
	}

	#bracelet>a{
		background-color: #d6ecfa;
		display: block;
		color: black;
		width: 133px;
		text-align: center;
		padding: 5px 0px;
	}

	#bracelet>a:hover{
		background-color: #87d0ff;
	}
	
	#header_line3_ul>li:hover #bracelet{
		display: block;
		top:44px;
	}
	
	#set{
		position: absolute;
		display: none;
	}

	#set>a{
		background-color: #d6ecfa;
		display: block;
		color: black;
		width: 133px;
		text-align: center;
		padding: 5px 0px;
	}

	#set>a:hover{
		background-color: #87d0ff;
	}
	
	#header_line3_ul>li:hover #set{
		display: block;
		top:44px;
	}
	
	 #myBtn{
          width: 100px;
          height: 100px;
          background-color: black;
          color: white;
          transform : rotate(315deg);
          position: fixed;
          right: -50px;
          bottom: -50px;
          text-align: center;
          font-size: 12px;
     }
     #myBtn:hover {
          background-color: #8C8C8C;
          border-top: 1px dashed black;
     }
     
     #user{
     	margin-top: 5px;
     	font-size: 15px;
     }

</style>

<script type="text/javascript">
$(document).ready(function(){
    $("#myBtn").css("display","none");
});
$(window).scroll(function(){
    if($(document).scrollTop() > 20) {
         $("#myBtn").css("display","block");
    }else{
         $("#myBtn").css("display","none");
    }
});
$(document).on("click","#myBtn", function(){
    /* $(document).scrollTop(0); */
    $("html, body").animate({scrollTop: 0}, 1000);
});
 	</script>
 	
</head>
<body>
	<header>
		<div id="header_wrab">
			<div id="header_line1">
				<div id="header_line1_in">
					<ul id="header_line1_ul">
						<c:choose>
							<c:when test="${empty sessionScope.loginUser}">
								<li id="gin"><a href="login_main.bizpoll" >로그인</a></li>
								<li><a href="constract.bizpoll">회원가입</a></li>
							</c:when>
							<c:otherwise>
								<li id="user">
									${sessionScope.loginUser.name}
									(${sessionScope.loginUser.id})님
								</li>
								<li><a href="loginOut.bizpoll">로그아웃</a></li>
							</c:otherwise>
						</c:choose>
						<li>
							<a id ="header_line1_mypage" href="#">마이페이지▼</a>
							<div id="header_line1_dropdown">
										<a href="#">주문/배송조회</a>
										<a href="#">장바구니</a>
										<a href="#">위시리스트</a>
								<c:choose>
									<c:when test="${empty sessionScope.loginUser}"></c:when>
									<c:otherwise>
										<a href="<%=path%>/memberUpdate.bizpoll">회원정보</a>
										<a href="<%=path%>/memberPwUpdate.bizpoll">비밀번호 변경</a>
										<a href="<%=path%>/memberExit.bizpoll">회원탈퇴</a>
									</c:otherwise>
								</c:choose>
							</div>
						</li>
						<li><a href="<%=path%>/boardList.bizpoll">고객센터</a></li>
					</ul>
				</div>
			</div>
			
			<div id="header_line2">
				<a href="<%=path%>/index.bizpoll">
					<img id="header_logo" alt="로고" src="<%=path%>/img/real_logo.png">
				</a>
				
				<div id= "header_line2_wrap_search">
					<div id="header_line2_search">
						<input id="search_keyword" type="text" placeholder="검색어를 입력하세요">
						<input id="search_btn" type="submit"value="검색">
					</div>
				</div>
				
			</div>
			<div id="header_line3">
				<div id="header_line3_in">
					<ul id="header_line3_ul">
						<li><a href="<%=path%>/new_tem.bizpoll">New</a>
						
						<li><a href="<%=path%>/sale_tem.bizpoll">SALE</a>
						
						<li><a href="<%=path%>/earring_tem.bizpoll">EARRING</a>
						
							<div id="earring">
								<a href="">링 귀걸이</a>
								<a href="">롱 귀걸이</a>
								<a href="">이어커프</a>
							</div>
							
						</li>			
						<li><a href="<%=path%>/necklace_tem.bizpoll">NECKLACE</a></li>
						
						<li><a href="<%=path%>/ring_tem.bizpoll">RING</a></li>
						
						<li><a href="<%=path%>/bracelet_tem.bizpoll">BRACELET</a></li>

						<li><a href="<%=path%>/set_tem.bizpoll">SET</a></li>
						
						<li><a href="<%=path%>/boardList.bizpoll">게시판</a></li>
						
					</ul>
				</div>
			</div>
			<div id="myBtn">
		         <span>TOP</span>
		    </div>
		</div>
	</header>
</body>
</html>