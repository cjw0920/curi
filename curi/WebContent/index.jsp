<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--   <%@ %>  가 scriptrit 라 해서 화면단위에서 자바사용가능하게하는것  --%>

<!-- index.jsp 페이지에 header.jsp 페이지 추가 -->
<%@ include file="include/header.jsp"%>
<!-- 적기 -->
<!DOCTYPE html>
<!-- html 뒤로는 삭제 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 자바를 쓰겟다는 의미 -->

<title>curi</title>

<style type="text/css">
body {
	background-color: #F8FAFF
}

#indexbody {
	padding-top: 200px;
}

#all{
	width: 1200px;
	margin: 0 auto;
	border-left: 1px solid #E2E3E4;
	border-right: 1px solid #E2E3E4;
}

#sliimg {
	background-color: white;
}

.simg {
	width: 800px;
	height: 450px;
	margin : 0 auto;
	margin-top: 10px;
	
}

.simg {
	display: none;
}

p {
	width: 200px;
	font-size: 40px;
	text-align: center;
	border-bottom: 3px double #E2E3E4;
	margin: 0 auto;
}

#best_items {
	margin-top: 40px;
	margin-left: 75px;
	margin-right: 75px;
}

#best_news {
	margin-top: 100px;
	margin-left: 75px;
	margin-right: 75px;	
	margin-bottom: 60px;
}

.best_item {
	margin-top: 40px;
	width: 250px;
	height: 350px;
	margin-right: 15px;
}


</style>

<script type="text/javascript">
	$(document).ready(function() {

		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("simg");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 2000); // Change image every 2 seconds
		}
		;
	});
</script>

</head>
<body id="indexbody">
	<div id="all">


		<div>
			<img alt="" src="img/slide1.jpg" class="simg"> 
			<img alt="" src="img/slide2.jpg" class="simg"> 
			<img alt="" src="img/slide3.jpg" class="simg"> 
			<img alt="" src="img/slide4.jpg" class="simg">
		</div>

		<div id="best_items">
			<p>best</p>
			<table>
				<tbody>
					<tr>
						<!-- c:forEach : JSTL 태그 -->
						<!-- ${bestlist} : EL 태그 -->
						<c:forEach items="${bestlist}" var="bestDto">
							<td><img src="img/${bestDto.p_img}" class="best_item"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${bestlist}" var="bestDto">
							<td><span>${bestDto.p_name}</span></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${bestlist}" var="bestDto">
							<%-- <td><span>${bestDto.p_price}</span></td> --%>
							<%-- <fmt:setLocale value="ja_jp"/>--일본
							<fmt:setLocale value="ko_kr"/>--한국 --%>
							<td><span><fmt:formatNumber value="${bestDto.p_price}"/></span></td>
						</c:forEach>
					</tr>
				</tbody>

			</table>
		</div>

		<div id="best_news">
			<p>new</p>
			<table>
				<tbody>
					<tr>
						<!-- c:forEach : JSTL 태그 -->
						<!-- ${bestlist} : EL 태그 -->
						<c:forEach items="${newlist}" var="newDto">
							<td><img src="img/${newDto.p_img}" class="best_item"></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${newlist}" var="newDto">
							<td><span>${newDto.p_name}</span></td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${newlist}" var="newDto">
							<td><span><fmt:formatNumber value="${newDto.p_price}"/></span></td>
						</c:forEach>
					</tr>
				</tbody>

			</table>

		</div>
	</div>
</body>
</html>
<%@ include file="include/footer.jsp"%>