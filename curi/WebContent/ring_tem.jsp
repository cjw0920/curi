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


#best_ring_table{
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
#ring_item_body{
	padding-left: 180px;
}

#best_ring_item_page_all{
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

#best_ring_item_page{
	display : inline-block;
	width : 80%;
	border-bottom: 1px solid #ccc;
	height: 800px;
	margin: 0 auto;
	margin-left:10%
}
.ringpage_img{
	width: 250px;
	height: 350px;
}

#img2{
	margin-left: 30px;
	margin-right: 30px;
}

#select_ring_item{
	float : right;
	margin-top : 5px;
	margin-right : 10%;
	width: 100px;
	height: 30px;
}

#ring_item_all{
	display: inline-block;
	margin: 0 17%;
}


.ringpage1_img{
	width: 200px;
	height: 275px;
}

#ring_item_table div{
	margin: 30px;
	text-align: center;
}


</style>
<script type="text/javascript"></script>
</head>
<body id="ring_item_body">

	<div id="best_ring_item_page_all">
		<p id="title"> ring </p>
		<div id="best_ring_item_page">
			<p id="top3">Top 3</p>
			<table id="best_ring_table">
				<tbody>
					<tr>
						<td>
							<div>
								<img alt="" src="img/ring_item/1.jpg" class="ringpage_img">
								<h4>
									홀리데이 러브 반지
								</h4>
								<h5>12,000원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/ring_item/2.jpg" class="ringpage_img" id="img2">
								<h4>
									사랑의속삭임 : 뮤즈 반지
								</h4>
								<h5>18,500원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/ring_item/3.gif" class="ringpage_img">
								<h4>
									앨리탄생화2 반지
								</h4>
								<h5>11,000원</h5>
							</div>
						</td>
					</tr>
					
				</tbody>

			</table>

		</div>
		<select id="select_ring_item">
			<option>정렬기준</option>
			<option>최신순</option>
			<option>인기순</option>
			<option>가격 낮은 순</option>
			<option>가격 높은 순</option>
		</select>
		<div id="ring_item_all">
			<table id="ring_item_table">
				<tbody>
					<tr>
						<td>
							<div>
								<img alt="" src="img/ring_item/1.jpg" class="ringpage1_img">
								<h4>
									홀리데이 러브 반지
								</h4>
								<h5>12,000원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/ring_item/2.jpg" class="ringpage1_img">
								<h4>
									사랑의속삭임 : 뮤즈 반지
								</h4>
								<h5>18,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/ring_item/3.gif" class="ringpage1_img">
								<h4>
									앨리탄생화2 반지
								</h4>
								<h5>11,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/ring_item/4.gif" class="ringpage1_img">
								<h4>
									릴리블라썸 반지
								</h4>
								<h5>11,500원</h5>
							</div>
						</td>
					</tr>
					
					<tr>
						<td>
							<div>
								<img alt="" src="img/ring_item/5.jpg" class="ringpage1_img">
								<h4>
									엘라 레이어드ring
								</h4>
								<h5>3,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/ring_item/6.gif" class="ringpage1_img">
								<h4>
									빛을담아 반지 8개1세트
								</h4>
								<h5>10,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/ring_item/7.jpg" class="ringpage1_img">
								<h4>
									달의여신, 루나 반지
								</h4>
								<h5>12,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/ring_item/8.gif" class="ringpage1_img">
								<h4>
									샤이닝 하트 ring
								</h4>
								<h5>11,500원</h5>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<img alt="" src="img/ring_item/9.jpg" class="ringpage1_img">
								<h4>
									이오 ring
								</h4>
								<h5>5,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/ring_item/10.jpg" class="ringpage1_img">
								<h4>
									은하수:밀키웨이Ⅱ ring
								</h4>
								<h5>8,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/ring_item/11.jpg" class="ringpage1_img">
								<h4>
									안느 knuckle ring
								</h4>
								<h5>6,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/ring_item/12.jpg" class="ringpage1_img">
								<h4>
									사랑의 속삭임 ring
								</h4>
								<h5>10,000원</h5>
							</div>
						</td>
					</tr>					
				</tbody>

			</table>
		</div>		
	</div>
</body>
</html>