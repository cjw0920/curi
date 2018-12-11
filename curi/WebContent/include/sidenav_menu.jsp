<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	body{
		margin: 0;
		padding: 0;
	}
	
	#side_all{
		box-sizing: border-box;
		position: fixed;
		top : 0px;
		left : 0px;
		width: 100%;
		background-color: white;
	}
	
	/* 햄버거버튼 */
	#btn_ham{
		position: relative;
	}

	#opennav{
		background-color: transparent!important;
		position: absolute;
		top: 0;
		left:0;
		font-size: 50px;
		padding : 8px 16px;
		display: inline-block;
	}
	
	/* 사이드 네비게이션 */
	#sidebar_wrap{
		width: 180px;
		color:#000!important;
		background-color: #f1f1f1!important;
		font-size: 15px;
		overflow: auto;
		height: 100%;
		position: fixed;
		z-index: 1;
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),
					0 4px 20px 0 rgba(0,0,0,0.19);
		transition:0.4s;
		/* left: -180px; */
	}
	
	#sidebar_title{
		background-color: #87d0ff;
		font-size : 18px;
		color: black;
		overflow: hidden;
		font-weight: bold;
	}
	
	#sidebar_title>span{
		padding: 16px;
		border: none;
		display: block;
		float: left;
	}
	
	#sidebar_title>button{
		padding: 16px;
		padding-top : 20px;
		border: none;
		display: block;
		overflow: hidden;
		background-color: #87d0ff;
		color: black;
		font-size: 18px;
		font-weight: bold;
		height: 52px;
		float: right;
	}
	
	#sidebar_title>button:hover {
		background-color: #46b8ff!important;
		color: white;
	}
	
	#sidebar_content a{
		display: block;
		padding: 8px 16px;
		text-align: left;
		border: none;
		overflow: hidden;
		text-decoration: none;
	}
	
	#home{
		background: linear-gradient(to bottom, #87d0ff, #c8c8ff 70%);
		color: black!important;
	}
	
	#sidebar_content a:not(#home){/* a중에 home을 제외하고 변경 */
		color: black;
	}
	
	#sidebar_content a:hover{
		background-color: #c8c8ff!important;
		color: black!important;
		font-weight :bold;
		
	}
	
	
	#dropdown_wrap{
		background-color: white;
		color: black;
		display: inline-block;
		position: relative;
		width: 100%;
	}
	
	#mypage_dropdown{
		background-color: white;
		color: black;
		display: inline-block;
		position: relative;
		width: 100%;
	}
	
	#mypage{
		display : none;
		min-width : 100%;
		position: absolute;
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),
					0 4px 20px 0 rgba(0,0,0,0.19);
		margin: 0;
		padding: 0;
		z-index: 1;
	}
	
	
	
	#mypage_dropdown>a{
		background-color: #f1f1f1!important;
	}
	
	#mypage_dropdown:hover #side_mypade{
		color: black!important;
		background-color: #c8c8ff!important;
	}
	
	#mypage_dropdown:hover #mypage{
		display: block!important;
		font-weight: normal;
	}
	
	#mypage>a{
		width: 100%;
		text-align: left;
		padding: 8px 16px;
		background-color: white;
	}
	
	
	#dropdown_wrap>a{
		background-color: #f1f1f1!important;
	}
	
	#dropdown_wrap:hover #dropdown{
		color: black!important;
		background-color: #c8c8ff!important;
	}
	
	#list{
		display : none;
		min-width : 100%;
		position: absolute;
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),
					0 4px 20px 0 rgba(0,0,0,0.19);
		margin: 0;
		padding: 0;
		z-index: 1;
	}
	
	#dropdown_wrap:hover #list{
		display: block!important;
		font-weight: normal;
	}
	
	#list>a{
		width: 100%;
		text-align: left;
		padding: 8px 16px;
		background-color: white;
	}
	
	
	#money_dropdown_wrap>a{
		background-color: #f1f1f1!important;
	}
	
	#money_dropdown_wrap:hover #money_dropdown{
		color: black!important;
		background-color: #c8c8ff!important;
	}
	
	#money_list{
		display : none;
		min-width : 100%;
		position: absolute;
		box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2),
					0 4px 20px 0 rgba(0,0,0,0.19);
		margin: 0;
		padding: 0;
		z-index: 1;
	}
	
	#money_dropdown_wrap:hover #money_list{
		display: block!important;
		font-weight: normal;
	}
	
	#money_list>a{
		width: 100%;
		text-align: left;
		padding: 8px 16px;
		background-color: white;
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
     
     
     
    #NH_bank:hover #NH_bank_list{
		display: block;
		z-index: 4;
	}
	
	#NH_bank_list{
	position: absolute;
	left: 87px;
	top:0px;
	display: none;
	}
	
	#NH_bank_list>a{
		background-color: black;
		display: block;
		color: white;
		width: 97px;
		text-align: center;
		padding: 5px 0px;
	}

	#NH_bank_list>a:hover{
	background-color: gray;
	}
     
     
	
	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	/* 사이드 메뉴 열기 */
	$(document).on("click","#opennav",function(){
		$("#sidebar_wrap").css("left","0px");
	});
	/* 사이드 메뉴 닫기 */
	$(document).on("click","#close_btn",function(){
		$("#sidebar_wrap").css("left","-180px");
	});
	
	$(document).ready(function(){
	    $("#myBtn").css("display","none");
	    
	    $("NH_bank").click(function(){
	    	$("NH_bank_list").css("display","block");
	    	$("NH_bank_list").css("z-index","99");
	    });
	})
	
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
<!-- 사이드 네이게이션 메뉴 -->
<div id="side_all">
	<div id="sidebar_wrap">
		<div id="sidebar_title">
			<span>Content</span>
			<button id="close_btn">X</button>
		</div>
		<div id="sidebar_content">
			<a href="index.bizpoll" id="home">Home</a>
			
			<div id="mypage_dropdown">
				<a href="#" id=side_mypade>MY PAGE</a>
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">
						<div id="mypage">
							<a href="login_main.bizpoll">Login</a>
							<a href="constract.bizpoll">Join</a>
						</div>
					</c:when>
					<c:otherwise>
						<div id="mypage">
							<a href="loginOut.bizpoll">LogOut</a>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
			
			<div id="dropdown_wrap">
				<a href="#" id="dropdown">상품 ▼</a>
				<div id="list">
					<a href="new_tem.bizpoll">NEW</a>
					<a href="category.bizpoll?keyword=earring">EARRING</a>
					<a href="category.bizpoll?keyword=necklace">NECKLACE</a>
					<a href="category.bizpoll?keyword=ring">RING</a>
					<a href="category.bizpoll?keyword=bracelet">BRACELET</a>
					<a href="category.bizpoll?keyword=set">SET</a>
				</div>
			</div>
			<a href="boardList.bizpoll">게시판</a>

		</div>
	</div>
	
<!-- ≡ 햄버거 버튼-->
	<div id="btn_ham">
		<span id="opennav">≡</span>
	</div>
	
	<div id="myBtn">
		<span>TOP</span>
	</div>
</div>	
</body>
</html>