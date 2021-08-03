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
		/* kawil이라는 속성명을 가진 기억창고에 kwail 배열을 넣어라.
		name은 따옴표 사용, value는 기억창고이면 따옴표 없이, 문자열이면 따옴표 사용*/
				
	%>
	<a href="foreach.jsp">
	가자 일단 foreach 개념인 for(:)을 사용</a>

</body>
</html>