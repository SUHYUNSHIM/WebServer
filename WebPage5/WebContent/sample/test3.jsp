<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] kwail ={"사과","배","감"};
		session.setAttribute("kwail",kwail);
				
	%>
	<a href="foreach.jsp">
	가자 일단 foreach 개념인 for(:)을 사용</a>

</body>
</html>