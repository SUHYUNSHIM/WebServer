<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>자바스타일!</h2>
<%
									//세션의 속성명 "kwail". string 배열로 형변환 해줘야 한다. 객체로 받음.
	String[] kwail = (String [])session.getAttribute("kwail");
	for(String imsi:kwail){ //자바에서 하나씩 꺼내서 출력. 
		out.println(imsi+"<br>"); //자바는 for(...:..) 클론. //자바스크립트에서는 for in//
	}
	
%>

<h2>jstl+ EL 스타일</h2>
	<c:forEach var="imsi" items="${sessionScope.kwail}"> <!-- session.getAttribute  사과, 배,감-->
		${imsi }<br>
	</c:forEach>
</body>
</html>