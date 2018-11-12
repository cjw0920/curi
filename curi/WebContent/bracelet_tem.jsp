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


#best_bracelet_table{
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
#bracelet_item_body{
	padding-left: 180px;
}

#best_bracelet_item_page_all{
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

#best_bracelet_item_page{
	display : inline-block;
	width : 80%;
	border-bottom: 1px solid #ccc;
	height: 800px;
	margin: 0 auto;
	margin-left:10%
}
.braceletpage_img{
	width: 250px;
	height: 350px;
}

#img2{
	margin-left: 30px;
	margin-right: 30px;
}

#select_bracelet_item{
	float : right;
	margin-top : 5px;
	margin-right : 10%;
	width: 100px;
	height: 30px;
}

#bracelet_item_all{
	display: inline-block;
	margin: 0 17%;
}


.braceletpage1_img{
	width: 200px;
	height: 275px;
}

#bracelet_item_table div{
	margin: 30px;
	text-align: center;
}


</style>
<script type="text/javascript"></script>
</head>
<body id="bracelet_item_body">

	<div id="best_bracelet_item_page_all">
		<p id="title"> bracelet </p>
		<div id="best_bracelet_item_page">
			<p id="top3">Top 3</p>
			<table id="best_bracelet_table">
				<tbody>
					<tr>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/1.jpg" class="braceletpage_img">
								<h4>
									앨리 12탄생화 팔찌
								</h4>
								<h5>13,000원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/bracelet_item/2.jpg" class="braceletpage_img" id="img2">
								<h4>
									화이트문 팔찌
								</h4>
								<h5>23,500원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/bracelet_item/3.jpg" class="braceletpage_img">
								<h4>
									사랑의 속삭임:뮤즈 팔찌
								</h4>
								<h5>12,000원</h5>
							</div>
						</td>
					</tr>
					
				</tbody>

			</table>

		</div>
		<select id="select_bracelet_item">
			<option>정렬기준</option>
			<option>최신순</option>
			<option>인기순</option>
			<option>가격 낮은 순</option>
			<option>가격 높은 순</option>
		</select>
		<div id="bracelet_item_all">
			<table id="bracelet_item_table">
				<tbody>
					<tr>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/1.jpg" class="braceletpage1_img">
								<h4>
									앨리 12탄생화 팔찌
								</h4>
								<h5>13,000원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/bracelet_item/2.jpg" class="braceletpage1_img">
								<h4>
									화이트문 팔찌
								</h4>
								<h5>23,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/3.jpg" class="braceletpage1_img">
								<h4>
									사랑의 속삭임:뮤즈 팔찌
								</h4>
								<h5>12,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/4.gif" class="braceletpage1_img">
								<h4>
									뷰티풀러브 루비 초커&팔찌 SET
								</h4>
								<h5>20,500원</h5>
							</div>
						</td>
					</tr>
					
					<tr>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/5.jpg" class="braceletpage1_img">
								<h4>
									사랑의속삭임:뮤즈 bangle
								</h4>
								<h5>14,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/6.jpg" class="braceletpage1_img">
								<h4>
									[무궁화] 일편단심1 팔찌
								</h4>
								<h5>13,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/7.jpg" class="braceletpage1_img">
								<h4>
									딜루아 12탄생석 bracelet
								</h4>
								<h5>5,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/8.jpg" class="braceletpage1_img">
								<h4>
									달콤한 여행 bracelet
								</h4>
								<h5>12,500원</h5>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/9.jpg" class="braceletpage1_img">
								<h4>
									벨라 투 하트 bracelet
								</h4>
								<h5>9,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/10.gif" class="braceletpage1_img">
								<h4>
									세라 12탄생석 팔찌
								</h4>
								<h5>12,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/11.gif" class="braceletpage1_img">
								<h4>
									베티 탄생석 bracelet
								</h4>
								<h5>4,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/bracelet_item/12.jpg" class="braceletpage1_img">
								<h4>
									달의여신 루나 팔찌
								</h4>
								<h5>12,000원</h5>
							</div>
						</td>
					</tr>					
				</tbody>

			</table>
		</div>		
	</div>
</body>
</html>