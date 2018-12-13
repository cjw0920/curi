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


#WishList_All{
    padding-top: 6%;
	width: 807px;
    margin: 0 auto;
}

#total{
	text-align: right;
	color : lightgray;
}

#wish_table{
	border : 1px solid lightgray;
	margin-top : 10px;
	border-collapse: collapse;	
}
	
td,th,tr{
	text-align: center;
}

tr:nth-child(odd){
	background-color: #d6ecfa;
}
#table_title{
	border-bottom-style: double;
}


.one_wish{
    height: 40px;
    back
}

#name{
	width: 600px;
}

#time{
	width:200px;
}

a{
	color: black;
}

#white{
	background-color: lightgray;
}

#icon{
	float: right;
	padding-right: 10%;
	cursor: pointer;
}

</style>

<script type="text/javascript">

$(document).on("click","#icon",function(){
	var wno = $(this).attr("data_wno");
	var p_code = $(this).attr("data_p_code");
	var user = $(this).attr("data_user");
	
	
	alert(wno +" "+p_code+" "+user);
	
	$.ajax({
		type:"post",
		url:"WishDeletePlay.bizpoll",
		data:"user="+user+"&wno="+wno+"&p_code="+p_code,
		success:function(){
			location.reload();
		}
	});
	
});

</script>
</head>
<body id="indexbody">

<div id="WishList_All">
	<div id="total"> total : ${list_size}</div>
	<table id="wish_table">
		<tr class="one_wish" id="table_title">
			<td id="name">제품명</td>
			<td id="time">등록 날짜</td>
		</tr>
		<tr class="one_wish" >
			<td class=" white"></td>
			<td class="white"></td>
		</tr>
		<c:forEach items="${wishList}" var="wishList">
		 
			<fmt:formatDate value="${today}" pattern="yyyy-MM-dd" var="today2"/>
			<fmt:formatDate value="${bDto.regdate}" pattern="yyyy-MM-dd" var="regdate2"/>
			<tr class="one_wish">
				<td>
					<a href="productViewcnt.bizpoll?p_code=${wishList.p_code}">
						${wishList.selec}
					</a>
				</td>
				<td>
					<c:choose>
						<c:when test="${today2 == regdate2}">
							<fmt:formatDate pattern="HH:mm:ss" value="${wishList.regdate}"/>
						</c:when>
						<c:otherwise>
							<fmt:formatDate pattern="yyyy-MM-dd" value="${wishList.regdate}"/>
						</c:otherwise>
				 	</c:choose>
				 	<i class="fas fa-times" id="icon" data_wno="${wishList.wno}" data_p_code="${wishList.p_code}" data_user="${sessionScope.loginUser.id}"></i>
			 	</td>
			</tr>
		</c:forEach>	
	</table>
</div>




</body>
</html>