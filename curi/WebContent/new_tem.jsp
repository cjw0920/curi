<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ include file="include/sidenav_menu.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

body{
	background-color: #F8FAFF
}


#best_new_table{
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
#new_item_body{
	padding-left: 180px;
}

#best_new_item_page_all{
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

#best_new_item_page{
	display : inline-block;
	width : 80%;
	border-bottom: 1px solid #ccc;
	height: 800px;
	margin: 0 auto;
	margin-left:10%
}
.newpage_img{
	width: 250px;
	height: 350px;
}

#img2{
	margin-left: 30px;
	margin-right: 30px;
}

#select_new_item{
	float : right;
	margin-top : 5px;
	margin-right : 10%;
	width: 100px;
	height: 30px;
}

#new_item_all{
	display: inline-block;
	margin: 0 17%;
}


.newpage1_img{
	width: 200px;
	height: 275px;
}

#new_item_table div{
	margin: 30px;
	text-align: center;
}


</style>
<script type="text/javascript"></script>
</head>
<body id="new_item_body">

	<div id="best_new_item_page_all">
		<p id="title"> NEW </p>
		<div id="best_new_item_page">
			<p id="top3">Top 3</p>
			<table id="best_new_table">
				<tbody>
					<tr>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item1.jpg" class="newpage_img">
								<h4>
									홀리데이 드림 귀걸이/귀찌
								</h4>
								<h5>12,500원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/new_item/new_item2.jpg" class="newpage_img" id="img2">
								<h4>
									사랑의요정,엘 귀걸이/귀찌
								</h4>
								<h5>18,500원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/new_item/new_item3.jpg" class="newpage_img">
								<h4>
									떨리는마음 귀걸이/귀찌
								</h4>
								<h5>20,500원</h5>
							</div>
						</td>
					</tr>
					
				</tbody>

			</table>

		</div>
		<select id="select_new_item">
			<option>정렬기준</option>
			<option>최신순</option>
			<option>인기순</option>
			<option>가격 낮은 순</option>
			<option>가격 높은 순</option>
		</select>
		<div id="new_item_all">
			<table id="new_item_table">
				<tbody>
					<tr>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item1.jpg" class="newpage1_img">
								<h4>
									홀리데이 드림 귀걸이/귀찌
								</h4>
								<h5>12,500원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/new_item/new_item2.jpg" class="newpage1_img">
								<h4>
									사랑의요정,엘 귀걸이/귀찌
								</h4>
								<h5>18,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item3.jpg" class="newpage1_img">
								<h4>
									떨리는마음 귀걸이/귀찌
								</h4>
								<h5>20,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item4.gif" class="newpage1_img">
								<h4>
									비밀의정원 귀걸이/ 귀찌
								</h4>
								<h5>15,000원</h5>
							</div>
						</td>
					</tr>
					
					<tr>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item5.gif" class="newpage1_img">
								<h4>
									페어리드롭 귀걸이/귀찌
								</h4>
								<h5>15,800원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item6.jpg" class="newpage1_img">
								<h4>
									별빛랩소디 귀걸이/귀찌
								</h4>
								<h5>13,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item7.gif" class="newpage1_img">
								<h4>
									러브판타지 귀걸이/귀찌
								</h4>
								<h5>19,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item8.gif" class="newpage1_img">
								<h4>
									러브엔젤라 귀걸이/귀찌
								</h4>
								<h5>15,500원</h5>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item9.gif" class="newpage1_img">
								<h4>
									너는꽃 귀걸이/귀찌
								</h4>
								<h5>15,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item10.gif" class="newpage1_img">
								<h4>
									봄을그리다 귀걸이/ 귀찌
								</h4>
								<h5>10,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item11.gif" class="newpage1_img">
								<h4>
									럽미텔미 귀걸이/ 귀찌
								</h4>
								<h5>12,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/new_item/new_item12.jpg" class="newpage1_img">
								<h4>
									메이릴리 ring
								</h4>
								<h5>8,500원</h5>
							</div>
						</td>
					</tr>					
				</tbody>

			</table>
		</div>		
	</div>
</body>
</html>