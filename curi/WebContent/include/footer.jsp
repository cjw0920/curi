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
cursor: default;
}

p {
	width: 200px;
	font-size: 40px;
	text-align: center;
	border-bottom: 3px double #E2E3E4;
	margin: 0 auto;
}

#web_footer{
	width : 100%;
	height:100px;
	background-color: #5D5D5D;
	text-align: center;
	color : white;
}
#footer_p{
	border-bottom: none;
	font-size: 40px;
	color: white;
}

#week{
	color: #B2CCFF;
}

#holiday{
	color: #FF9595;
}

</style>

</head>
<body>
	<footer>
		<div id="web_footer">
			<p id="footer_p">curi.com</p>
			<div>
				<span>고객센터 : 010-8546-8358</span>
				<span> (평일 09:00~19:00 <span id="week">운영</span>, 공휴일 <span id="holiday">휴무</span>)</span>
			</div>
			<div>
				<span>계좌 번호 : (농협)352-1330-7771-33 (카카오)3333-04-6838138</span>
			</div>
		</div>
	</footer>
</body>
</html>