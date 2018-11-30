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


#best_earring_table{
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
#earring_item_body{
	padding-left: 180px;
}

#best_earring_item_page_all{
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

#best_earring_item_page{
	display : inline-block;
	width : 80%;
	border-bottom: 1px solid #ccc;
	height: 800px;
	margin: 0 auto;
	margin-left:10%
}
.earringpage_best_img{
	width: 250px;
	height: 350px;
}

#img2{
	margin-left: 30px;
	margin-right: 30px;
}

#select_earring_item{
	float : right;
	margin-top : 5px;
	margin-right : 10%;
	width: 100px;
	height: 30px;
}

#earring_item_all{
	display: inline-block;
	margin: 0 17%;
}


.earringpage_img{
	width: 200px;
	height: 275px;
}

#earring_item_table div{
	margin: 30px;
	text-align: center;
}


</style>
<script type="text/javascript"></script>
</head>
<body id="earring_item_body">

	<div id="best_earring_item_page_all">
		<p id="title"> earring </p>
		<div id="best_earring_item_page">
			<p id="top3">Top 3</p>
			<table id="best_earring_table">
				<tbody>
					<tr>
						<td>
							<div>
								<img alt="" src="img/earring_item/1.jpg" class="earringpage_best_img">
								<h4>
									홀리데이 드림 귀걸이/귀찌
								</h4>
								<h5>12,500원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/earring_item/2.gif" class="earringpage_best_img" id="img2">
								<h4>
									사랑의요정,엘 귀걸이/귀찌
								</h4>
								<h5>18,500원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/earring_item/3.gif" class="earringpage_best_img">
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
		<select id="select_earring_item">
			<option>정렬기준</option>
			<option>최신순</option>
			<option>인기순</option>
			<option>가격 낮은 순</option>
			<option>가격 높은 순</option>
		</select>
		<div id="earring_item_all">
			<table id="earring_item_table">
				<tbody>
					<tr>
						<td>
							<div>
								<img alt="" src="img/earring_item/1.jpg" class="earringpage_img">
								<h4>
									허니비러브 귀걸이/귀찌
								</h4>
								<h5>12,000원</h5>
							</div>
						</td>
						
						<td>
							<div>
								<img alt="" src="img/earring_item/2.gif" class="earringpage_img">
								<h4>
									빛의기억 귀걸이/귀찌
								</h4>
								<h5>15,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/earring_item/3.gif" class="earringpage_img">
								<h4>
									달의여신루나 귀걸이/ 귀찌
								</h4>
								<h5>14,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/earring_item/4.gif" class="earringpage_img">
								<h4>
									앨리 탄생화 귀걸이/귀찌
								</h4>
								<h5>13,500원</h5>
							</div>
						</td>
					</tr>
					
					<tr>
						<td>
							<div>
								<img alt="" src="img/earring_item/5.gif" class="earringpage_img">
								<h4>
									홀리데이블룸 귀걸이/귀찌
								</h4>
								<h5>15,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/earring_item/6.gif" class="earringpage_img">
								<h4>
									클래식드레스 귀걸이/귀찌
								</h4>
								<h5>14,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/earring_item/7.gif" class="earringpage_img">
								<h4>
									떨리는마음 귀걸이/귀찌
								</h4>
								<h5>20,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/earring_item/8.gif" class="earringpage_img">
								<h4>
									러브판타지 귀걸이/귀찌
								</h4>
								<h5>19,500원</h5>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<img alt="" src="img/earring_item/9.gif" class="earringpage_img">
								<h4>
									빛나게해줘 귀걸이/ 귀찌
								</h4>
								<h5>15,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/earring_item/10.jpg" class="earringpage_img">
								<h4>
									별빛랩소디 귀걸이/귀찌
								</h4>
								<h5>13,500원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/earring_item/11.jpg" class="earringpage_img">
								<h4>
									주인공처럼 귀걸이/귀찌
								</h4>
								<h5>14,000원</h5>
							</div>
						</td>
						<td>
							<div>
								<img alt="" src="img/earring_item/12.gif" class="earringpage_img">
								<h4>
									넌나의선물 2 귀걸이/ 귀찌
								</h4>
								<h5>14,500원</h5>
							</div>
						</td>
					</tr>					
				</tbody>

			</table>
		</div>		
	</div>
</body>
</html>