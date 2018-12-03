<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ include file="../include/sidenav_menu.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

body{
	background-color: #F8FAFF
}


#best_set_table{
 	margin:0;
	padding:0;
	margin: 0 auto;
	margin-top: 100px; 
	text-align: center;
}

#top3{
	width: 200px;
	text-align: center;
	font-size: 40px;
	margin : 0 auto;
	margin-top: 70px;
	border-bottom: 4px double #E2E3E4;
	padding-bottom:10px; 
}
#set_item_body{
	padding-left: 180px;
}

#best_set_item_page_all{
	margin: 0 auto;
}

#title{
	width:600px;
	text-align: center;
	font-size: 60px;
	margin : 0 auto;
	margin-top: 70px;
	border-bottom: 4px solid #E2E3E4;
	padding-bottom: 10px;
}

#best_set_item_page{
	display : inline-block;
	width : 80%;
	border-bottom: 1px solid #ccc;
	height: 800px;
	margin: 0 auto;
	margin-left:10%
}
.setpage_img{
	width: 250px;
	height: 350px;
}

#img2{
	margin-left: 30px;
	margin-right: 30px;
}

#select_set_item{
	float : right;
	margin-top : 5px;
	margin-right : 10%;
	width: 100px;
	height: 30px;
}

#set_item_all{
	display: inline-block;
	margin: 0 17%;
}


.setpage1_img{
	width: 200px;
	height: 275px;
}

#set_item_table div{
	margin: 30px;
	text-align: center;
}

a{
	text-decoration: none;
	color : black;
}
</style>
<script type="text/javascript"></script>
</head>
<body id="set_item_body">
	<div id="best_set_item_page_all">
	<p id="title"> SET </p>
		<div id="best_set_item_page">
			<p id="top3">Top 3</p>
			<table id="best_set_table">
				<tbody>
					<tr>
						<c:forEach items="${BestList}" var="bestDto">
							<td>
								<a href="productViewcnt.bizpoll?p_code=${bestDto.p_code}">
									<div>
										<img alt="" src="img/${bestDto.p_img}" class="setpage_img">
										<h4>
											${bestDto.p_name}
										</h4>
										<h5><fmt:formatNumber value="${bestDto.p_price}"/>원</h5>
									</div>
								</a>
							</td>
						</c:forEach>
					</tr>
				</tbody>
			</table>

		</div>
		<select id="select_set_item">
			<option>정렬기준</option>
			<option>최신순</option>
			<option>인기순</option>
			<option>가격 낮은 순</option>
			<option>가격 높은 순</option>
		</select>
		<div id="set_item_all">
			<table id="set_item_table">
				<tbody>
					<tr>
						<c:forEach items="${List1}" var="bestDto">
							<td>
								<a href="productViewcnt.bizpoll?p_code=${bestDto.p_code}">
									<div>
										<img alt="" src="img/${bestDto.p_img}" class="setpage1_img">
										<h4>
											${bestDto.p_name}
										</h4>
										<h5><fmt:formatNumber value="${bestDto.p_price}"/>원</h5>
									</div>
								</a>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${List2}" var="bestDto">
							<td>
								<a href="productViewcnt.bizpoll?p_code=${bestDto.p_code}">
									<div>
										<img alt="" src="img/${bestDto.p_img}" class="setpage1_img">
										<h4>
											${bestDto.p_name}
										</h4>
										<h5><fmt:formatNumber value="${bestDto.p_price}"/>원</h5>
									</div>
								</a>
							</td>
						</c:forEach>
					</tr>
					<tr>
						<c:forEach items="${List3}" var="bestDto">
							<td>
								<a href="productViewcnt.bizpoll?p_code=${bestDto.p_code}">
									<div>
										<img alt="" src="img/${bestDto.p_img}" class="setpage1_img">
										<h4>
											${bestDto.p_name}
										</h4>
										<h5><fmt:formatNumber value="${bestDto.p_price}"/>원</h5>
									</div>
								</a>
							</td>
						</c:forEach>
					</tr>					
				</tbody>
			</table>
		</div>		
	</div>
</body>
</html>