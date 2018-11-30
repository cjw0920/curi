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
						<td>
							<div>
								<img alt="" src="img/set_item/1.gif" class="setpage_img">
								<h4>
									셀레나 목걸이 세트
								</h4>
								<h5>15,800원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/set_item/2.gif" class="setpage_img" id="img2">
								<h4>
									꿈의조각 귀걸이&목걸이 세트
								</h4>
								<h5>18,500원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/set_item/3.gif" class="setpage_img">
								<h4>
									빛을담아 반지 8개1세트
								</h4>
								<h5>10,500원</h5>
							</div>
						</td>
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
						<td>
							<div>
								<img alt="" src="img/set_item/1.gif" class="setpage1_img">
								<h4>
									셀레나 목걸이 세트
								</h4>
								<h5>15,800원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/set_item/2.gif" class="setpage1_img">
								<h4>
									꿈의조각 귀걸이&목걸이 세트
								</h4>
								<h5>18,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/set_item/3.gif" class="setpage1_img">
								<h4>
									빛을담아 반지 8개1세트
								</h4>
								<h5>10,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/set_item/4.gif" class="setpage1_img">
								<h4>
									샤인올데이 earring/ring
								</h4>
								<h5>11,500원</h5>
							</div>
						</td>
					</tr>
					
					<tr>
						<td>
							<div>
								<img alt="" src="img/set_item/5.gif" class="setpage1_img">
								<h4>
									팔레트choker
								</h4>
								<h5>9,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/set_item/6.gif" class="setpage1_img">
								<h4>
									별을담다 earring
								</h4>
								<h5>9,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/set_item/7.jpg" class="setpage1_img">
								<h4>
									에이미 ring 
								</h4>
								<h5>9,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/set_item/8.jpg" class="setpage1_img">
								<h4>
									나타샤 earring SET
								</h4>
								<h5>9,000원</h5>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<img alt="" src="img/set_item/9.jpg" class="setpage1_img">
								<h4>
									파리에서 earring SET
								</h4>
								<h5>9,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/set_item/10.jpg" class="setpage1_img">
								<h4>
									달의 왈츠 earring
								</h4>
								<h5>8,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/set_item/11.jpg" class="setpage1_img">
								<h4>
									모네르 귀걸이,이어커프 SET
								</h4>
								<h5>9,800원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/set_item/12.jpg" class="setpage1_img">
								<h4>
									아미띠에 너클링 Set
								</h4>
								<h5>15,000원</h5>
							</div>
						</td>
					</tr>					
				</tbody>

			</table>
		</div>		
	</div>
</body>
</html>