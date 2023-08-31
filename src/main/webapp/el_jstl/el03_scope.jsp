<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	el03_scope.jsp<br>
	<%
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>
	
	name : ${ name }<br><%-- 현재 페이지에서 제일 범위가 가장 적은 값을 가져옴  --%>
	page : ${ pageScope.name }<br>
	<%= pageContext.getAttribute("name") %><hr>
	request : ${requestScope.name }<br>
	session : ${sessionScope.name }<br>
	application : ${ applicationScope.name }<br>
	<a href="el03_result.jsp">result이동</a>
</body>
</html>