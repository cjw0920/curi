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


#best_sale_table{
 	margin:0;
	padding:0;
	margin: 0 auto;
	margin-top: 100px; 
	text-align: center;
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

#top3{
	width: 200px;
	text-align: center;
	font-size: 40px;
	margin : 0 auto;
	margin-top: 70px;
	border-bottom: 4px double #E2E3E4;
	padding-bottom:10px; 
}
#sale_item_body{
	padding-left: 180px;
}

#best_sale_item_page_all{
	margin: 0 auto;
}

#best_sale_item_page{
	display : inline-block;
	width : 80%;
	border-bottom: 1px solid #ccc;
	height: 800px;
	margin: 0 auto;
	margin-left:10%
}
.salepage_img{
	width: 250px;
	height: 350px;
}

#img2{
	margin-left: 30px;
	margin-right: 30px;
}

#select_sale_item{
	float : right;
	margin-top : 5px;
	margin-right : 10%;
	width: 100px;
	height: 30px;
}

#sale_item_all{
	display: inline-block;
	margin: 0 17%;
}


.salepage1_img{
	width: 200px;
	height: 275px;
}

#sale_item_table div{
	margin: 30px;
	text-align: center;
}


</style>
<script type="text/javascript"></script>
</head>
<body id="sale_item_body">
	
	<div id="best_sale_item_page_all">
		<p id="title"> SALE </p>
		<div id="best_sale_item_page">
			<p id="top3">Top 3</p>
			<table id="best_sale_table">
				<tbody>
					<tr>
						<td>
							<div>
								<img alt="" src="img/sale_item/1.jpg" class="salepage_img">
								<h4>
									민들레씨의 소원 ring
								</h4>
								<h5>5,000원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/sale_item/2.jpg" class="salepage_img" id="img2">
								<h4>
									아이리나 ring
								</h4>
								<h5>7,500원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/sale_item/3.jpg" class="salepage_img">
								<h4>
									플로라 ring
								</h4>
								<h5>6,000원</h5>
							</div>
						</td>
					</tr>
					
				</tbody>

			</table>

		</div>
		<select id="select_sale_item">
			<option>정렬기준</option>
			<option>최신순</option>
			<option>인기순</option>
			<option>가격 낮은 순</option>
			<option>가격 높은 순</option>
		</select>
		<div id="sale_item_all">
			<table id="sale_item_table">
				<tbody>
					<tr>
						<td>
							<div>
								<img alt="" src="img/sale_item/1.jpg" class="salepage1_img">
								<h4>
									민들레씨의 소원 ring
								</h4>
								<h5>5,000원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/sale_item/2.jpg" class="salepage1_img">
								<h4>
									아이리나 ring
								</h4>
								<h5>7,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/sale_item/3.jpg" class="salepage1_img">
								<h4>
									플로라 ring
								</h4>
								<h5>6,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/sale_item/4.jpg" class=" salepage1_img">
								<h4>
									에스더 오로라 ring
								</h4>
								<h5>6,000원</h5>
							</div>
						</td>
					</tr>
					
					<tr>
						<td>
							<div>
								<img alt="" src="img/sale_item/5.gif" class="salepage1_img">
								<h4>
									너밖에안보여 귀걸이/귀찌
								</h4>
								<h5>16,200원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/sale_item/6.jpg" class="salepage1_img">
								<h4>
									허니비러브 귀걸이/귀찌
								</h4>
								<h5>12,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/sale_item/7.jpg" class="salepage1_img">
								<h4>
									홀리데이 러브 반지
								</h4>
								<h5>12,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/sale_item/8.gif" class="salepage1_img">
								<h4>
									빛의기억 귀걸이/귀찌
								</h4>
								<h5>16,500원</h5>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<img alt="" src="img/sale_item/9.gif" class="salepage1_img">
								<h4>
									셀레나 목걸이 세트
								</h4>
								<h5>15,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/sale_item/10.jpg" class="salepage1_img">
								<h4>
									그레이스 12별자리 necklace
								</h4>
								<h5>7,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/sale_item/11.gif" class="salepage1_img">
								<h4>
									페어리드롭 귀걸이/귀찌
								</h4>
								<h5>15,800원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/sale_item/12.gif" class="salepage1_img">
								<h4>
									꿈의조각 귀걸이&목걸이 세트
								</h4>
								<h5>18,500원</h5>
							</div>
						</td>
					</tr>					
				</tbody>

			</table>
		</div>		
	</div>
</body>
</html>