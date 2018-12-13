<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

#indexbody {
	padding-top: 200px;
}


#CartList_All{
    padding-top: 6%;
	width: 807px;
    margin: 0 auto;
}

#total{
	text-align: right;
	color : lightgray;
}

#cart_table{
	border : 1px solid lightgray;
	margin-top : 10px;
	border-collapse: collapse;	
}
	
td,tr{
	text-align: center;
}

tr:nth-child(odd){
	background-color: #d6ecfa;
}
#table_title{
	border-bottom-style: double;
}


.one_cart{
    height: 40px;
}

#img{
	width: 250px;
}

#name{
	width: 450px;
}

#time{
	width:130px;
}

img{
	width : 250px;
	height:300px;
}

a{
	color: black;
}

#icon{
    float: right;
    padding-right: 5px;
}
</style>

<script type="text/javascript">

$(document).on("click","#icon",function(){
	var cno = $(this).attr("data_cno");
	var user = $(this).attr("data_user");
	
	
	$.ajax({
		type:"post",
		url:"CartDelete.bizpoll",
		data:"user="+user+"&cno="+cno,
		success:function(){
			location.reload();
		}
	});
	
});

</script>
</head>
<body id="indexbody">

<div id="CartList_All">
	<div id="total"> total : ${list_size}</div>
	<table id="cart_table">
		<tr class="one_cart" id="table_title">
			<td id="img">제품사진</td>
			<td id="name">제품명</td>
			<td id="time">등록 날짜</td>
		</tr>
		
		<tr class="one_cart" id="blank">
		
		</tr>
		
		<c:forEach items="${cartList}" var="cartList">
		 
			<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
			<fmt:formatDate value="${cartList.regdate}" pattern="yyyy-MM-dd" var="regdate2"/>
		
			<tr class="one_cart">
				<td id="real_img">
					<a href="productViewcnt.bizpoll?p_code=${cartList.p_code}">
						<img alt="" src="img/${cartList.p_img}">
					</a>
				</td>
				
				
				<td >
					<a href="productViewcnt.bizpoll?p_code=${cartList.p_code}">
						${cartList.selec}
					</a>
				</td>
				
				
				<td>
				<span><fmt:formatNumber value="${cartList.p_price}" />원</span>
				<i class="fas fa-times" id="icon" data_cno="${cartList.cno}" data_user="${sessionScope.loginUser.id}"></i>
			 	</td>
			</tr>
			
		</c:forEach>
	</table>
</div>



</body>
</html>