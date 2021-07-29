<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>자바스타일!</h2>
<%
	String[] kwail = (String [])session.getAttribute("kwail");
	for(String imsi:kwail){
		out.println(imsi+"<br>");
	}
	
%>

<h2>jstl+ EL 스타일</h2>
	<c:ForEach var="imsi" items="${sessionScope.kwail}">
		${imsi }<br>
	</c:ForEach>
</body>
</html>