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
	out.println((String)pageContext.getAttribute("page1")); //타입이 object -> 문자열로 형변환
	out.println((String)request.getAttribute("req1"));
	out.println((String)session.getAttribute("ses1"));
	out.println((String)application.getAttribute("app1"));

%>
<a href="./scope3.jsp">scope3.jsp 가자</a>
</body>
</html>