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

</style>
</head>
<body id="indexbody">




<div>

<div>

</div>
<c:forEach items="${wishList}" var="wishList">
 <div>${wishList.selec}</div>
 <div>${wishList.p_code}</div>
</c:forEach>
</div>






</body>
</html>