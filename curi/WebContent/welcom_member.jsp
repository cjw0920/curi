<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <meta http-equiv="refresh" content="3; url=index.bizpoll"> -->
<title>Insert title here</title>

<style type="text/css">

#all {
	border: 1px solid #dadada;
	width: 30%;
	height: 400px;
	margin: auto;
	text-align: center;
}


</style>

<!-- <script type="text/javascript">
	var cnt=3;
	function countdown(){
		if(cnt==0){
			clearInterval(s);
			location.href="index.bizpoll"
		}
		document.getElementById("rCnt").innerHTML=cnt;
		cnt--;
	}
		s=setInterval(countdown,1000);//start 1초 단위로 countdown()실행
</script>
 -->
</head>
<body>
	<div id="all">

		<div class="welcome_text text1"><span>환영**</span></div>
		<div class="welcome_text text2"><span id="rCnt">3</span>초후 이동</div>

	</div>
<!-- 카운트다운 방법 -->
<!-- 1.meta 태그 -->
<!-- 2.JavaScript의 countdown()활용 -->
</body>
</html>