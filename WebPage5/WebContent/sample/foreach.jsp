<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h2>�ڹٽ�Ÿ��!</h2>
<%
	String[] kwail = (String [])session.getAttribute("kwail");
	for(String imsi:kwail){
		out.println(imsi+"<br>");
	}
	
%>

<h2>jstl+ EL ��Ÿ��</h2>
	<c:ForEach var="imsi" items="${sessionScope.kwail}">
		${imsi }<br>
	</c:ForEach>
</body>
</html>