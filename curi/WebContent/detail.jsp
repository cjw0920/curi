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

#indexbody {
	padding-top: 100px;
}

#all {
	border: 1px solid #dadada;
	width: 70%;
	height: 600px;
}

#img_tle {
	width: 49%;
	border: 0.5px solid #dadada;
	float: left;
	height: 600px;
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
	height: 430px;
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


#finish_btn>a{
	text-align: center;
	color: black;
	display : inline-block;
	font-size : 20px;
	line-height: 49px;
	
	height: 60px;
}

.choice{
	margin-top: 10px;
}

#good{
	display: inline;
	width: 45%;
	padding-right: 20px;
	background-color:#FFD8D8;
}
#good:hover{
	background-color:#FFB9B9;
}

#soso{
	background-color:#EAEAEA;
	display: inline;
	width: 45%;
	padding-right: 20px;
}
#soso{
	background-color:#EAEAEA;
	display: inline;
	width: 45%;
	padding-right: 20px;
}

#soso:hover{
	background-color:#D8D8D8;
}


#cart {
	margin-top: 1px;
	width: 99%;
	background-color: #FFe6e6;
    
}
#cart:hover {
	background-color: #FFe6e6;
}


#sell {
	margin-top: 2px;
	width: 99%;
	background-color: #D4F4FA;
    
}

#sell:hover{
	background-color: #B2EBF4;
}

</style>

</head>
<body id="indexbody">
	<div id="all">

		<div id="img_tle">

			<div id="img_con">
				<img alt="" src="img/earring_item/1.jpg" id="item">
			</div>

		</div>

		<div id="detail">

			<table id="table1">
				<tbody>
					<tr>
						<th>상품명</th>
						<td>1</td>
					</tr>

					<tr class="both"></tr>

					<tr>
						<th>가격</th>
						<td>14000원</td>

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
					<span>total : 14000</span><span>원</span>
				</div>
			</div>
			<div id="finish_btn">
				<a href="#" id="good" class="choice">찜하기 </a>
				<a href="#" id="soso" class="choice">그저그래요 </a>
				<a href="#" id="cart">장바구니 </a>
				<a href="#" id="sell">결제 </a>
			</div>
		</div>

	</div>
</body>
</html>