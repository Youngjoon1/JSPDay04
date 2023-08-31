<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=session.getAttribute("name") %><br>
	name : ${ name }<br><%-- 현재 페이지에서 제일 범위가 가장 적은 값을 가져옴  --%>
	page : ${ pageScope.name }<br>
	request : ${requestScope.name }<br>
	session : ${sessionScope.name }<br>
	application : ${ applicationScope.name }<br>
</body>
</html>