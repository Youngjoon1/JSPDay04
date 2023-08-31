<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%-- 코어기능을 c라는 변수이름으로 쓰겠다 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	jstl01.jsp<br>
	<c:set var="num" value="값 지정" /><%-- c:set 변수 생성, 설정 --%>
	값 : ${ num }
	<hr>
	<c:set var="id" value="abc" />
	<c:if test="${ id == 'abc' }" > <%-- if문 test="${조건식}" --%>
		두 값은 같다 : ${ id }<br>
	
	</c:if>
	<hr>
	
	<%
		String[] arr = {"111","222","333"};
	%>
	<c:set var="values" value="<%=arr %>"></c:set>
	<c:forEach var="i" begin="10" end="20" step="2"><%-- 변수지정 begin="시작값" end="끝값" step="증가값"--%>
		${i },
	</c:forEach>
	<hr>
	<c:forEach var="item" items="${ values }">
		${ item } ,
	</c:forEach>
	
	<hr>
	<%-- 
	<c:import url="el01,jsp" />
	<c:redirect url="el02_login.jsp" />
	--%>
	
	<c:set var="s_name" value="세션설정" scope="session" /><%--세션 생성 --%>
	<c:remove var="s_name" scope="session"/><%-- 세선 만료 --%>
	<a href="jstl02.jsp">jstl02 이동</a>
	<hr>
	<c:set var="nick">
		홍길동
	</c:set>
	
	<c:choose><%-- if_else문 --%>
		<c:when test="${nick == '홍길동' }">
			이름 : ${ nick }
		</c:when>
		<c:when test="${ nick ne '홍길동' }">
			이름 : ${ nick }
		</c:when>
		<c:otherwise><%-- else --%>
			else 구분
		</c:otherwise>
	</c:choose>
	<hr>
	<c:set var = "n" value="100" />
	<c:choose>
		<c:when test="${ n > 100 }">
			100보다 크다
		</c:when>
		<c:otherwise>
			else 구문
		</c:otherwise>
	</c:choose>
	
	
</body>
</html>